#include "kl_lib.h"
#include "ch.h"
#include "hal.h"
#include "uart.h"
#include "radio_lvl1.h"
#include "beeper.h"
#include "led.h"
#include "Sequences.h"

#if 1 // ======================== Variables and defines ========================
// Forever
EvtMsgQ_t<EvtMsg_t, MAIN_EVT_Q_LEN> EvtQMain;
static const UartParams_t CmdUartParams(115200, CMD_UART_PARAMS);
CmdUart_t Uart{&CmdUartParams};
void OnCmd(Cmd_t *PCmd);

//#define EE_ADDR_COLOR    0
//#define EE_ADDR_PERIOD   4
//#define EE_ADDR_DURATION 8

cc1101_t CC(CC_Setup0);
int8_t Rssi;
//void ReadEE();

#define THE_COLOR   (Color_t){255, 0, 255}

LedRGBChunk_t lsqOn[] =  { {csSetup, 450, THE_COLOR},  {csEnd} };
LedRGBChunk_t lsqOff[] = { {csSetup, 450, clBlack},  {csEnd} };
LedRGBChunk_t lsqStart[] = {
        {csSetup, 180, THE_COLOR},
        {csWait, 180},
        {csSetup, 180, clBlack},
        {csEnd}
};

rPkt_t PktRx;
uint32_t RxPeriod = 999, RxDuration = 153;

LedRGB_t Led { LED_R_PIN, LED_G_PIN, LED_B_PIN };
Beeper_t Beeper {BEEPER_PIN};
#endif

int main(void) {
    // Init Vcore & clock system
    SetupVCore(vcore1V5);
    Clk.SetMSI4MHz();
    Clk.UpdateFreqValues();
    // Init OS
    halInit();
    chSysInit();

    // ==== Init Hard & Soft ====
    Uart.Init();
//    ReadEE();
    Led.Init();
    if(!Sleep::WasInStandby()) {
        Printf("\r%S %S\rClr=%02X%02X%02X; Period=%u; Duration=%u\r",
                APP_NAME, XSTRINGIFY(BUILD_TIME),
                lsqOn[0].Color.R, lsqOn[0].Color.G, lsqOn[0].Color.B,
                RxPeriod, RxDuration);
        Clk.PrintFreqs();
    }

    if(CC.Init() == retvOk) {
        if(!Sleep::WasInStandby()) { // Show CC is ok
            Led.StartOrRestart(lsqStart);
            // Try to receive Cmd by UART
            int i = 0;
            while(i++ < 27) {
                chThdSleepMilliseconds(99);
                uint8_t b;
                while(Uart.GetByte(&b) == retvOk) {
                    if(Uart.Cmd.PutChar(b) == pdrNewCmd) {
                        OnCmd(&Uart.Cmd);
                        i = 0;
                    }
                } // while get byte
            } // for
        } // if WasInStandby

        // CC params
        CC.SetPktSize(RPKT_LEN);
        CC.SetChannel(2);

        int32_t RxTryCnt = 0;
        while(true) {
            CC.Recalibrate();
            if(CC.Receive(RxDuration, &PktRx, RPKT_LEN, &Rssi) == retvOk) {
                Printf("Rx iD=%d; Rssi=%d\r", PktRx.ID, Rssi);
                if(PktRx.Salt == RPKT_SALT) {
                    RxTryCnt = 4;
                    Led.StartOrContinue(lsqOn);
                }
                else RxTryCnt--;
            }
            else RxTryCnt--;

            if(RxTryCnt < 0) {
                if(Led.IsOff()) break;
                else Led.StartOrContinue(lsqOff);
            }
            else chThdSleepMilliseconds(99); // Let CC sleep
        }
    }
    else { // CC failure
        Led.Init();
        Led.StartOrRestart(lsqFailure);
        chThdSleepMilliseconds(999);
    }

    // Enter sleep
    CC.EnterPwrDown();
    chSysLock();
    Iwdg::InitAndStart(RxPeriod);
    Sleep::EnterStandby();
    chSysUnlock();

    while(true); // Will never be here
}

//void ReadEE() {
//    Color_t Clr;
//    Clr.DWord32 = EE::Read32(EE_ADDR_COLOR);
//    lsqOn[0].Color = Clr;
//    lsqStart[0].Color = Clr;
//    RxPeriod = EE::Read32(EE_ADDR_PERIOD);
//    RxDuration = EE::Read32(EE_ADDR_DURATION);
//}

//uint8_t SaveDur() {
//    uint8_t rslt = EE::Write32(EE_ADDR_PERIOD, RxPeriod);
//    if(rslt == retvOk) {
//        rslt = EE::Write32(EE_ADDR_DURATION, RxDuration);
//        return retvOk;
//    }
//    else {
//        Printf("EE error: %u\r", rslt);
//        return retvFail;
//    }
//}

//uint8_t SaveColor(Color_t Clr) {
//    uint8_t rslt = EE::Write32(EE_ADDR_COLOR, Clr.DWord32);
//    if(rslt == retvOk) return retvOk;
//    else {
//        Printf("EE error: %u\r", rslt);
//        return retvFail;
//    }
//}

#if 1 // =========================== Cmd handling ==============================
void Ack(int32_t Result) { Printf("Ack %d\r\n", Result); }

void OnCmd(Cmd_t *PCmd) {
    if(PCmd->NameIs("Ping")) Ack(retvOk);
    else if(PCmd->NameIs("Version")) Printf("%S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));

//    else if(PCmd->NameIs("SetDur")) {
//        if(PCmd->GetNext<uint32_t>(&RxPeriod) != retvOk) { Ack(retvCmdError); return; }
//        if(PCmd->GetNext<uint32_t>(&RxDuration) != retvOk) { Ack(retvCmdError); return; }
//        Ack(SaveDur());
//    }
//
//    else if(PCmd->NameIs("SetClr")) {
//        Color_t Clr;
//        if(PCmd->GetParams<uint8_t>(3, &Clr.R, &Clr.G, &Clr.B) == retvOk) {
//            if(SaveColor(Clr) == retvOk) {
//                lsqOn[0].Color = Clr;
//                lsqStart[0].Color = Clr;
//                Led.StartOrRestart(lsqStart);
//                Ack(retvOk);
//            }
//            else Ack(retvFail);
//        }
//        else Ack(retvBadValue);
//    }

    else Ack(retvCmdUnknown);
}
#endif
