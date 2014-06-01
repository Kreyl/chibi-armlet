/*
 * indication.cpp
 *
 *  Created on: 28 ��� 2014 �.
 *      Author: Kreyl
 */

#include "indication.h"
#include "application.h"

Indication_t Indication;

#if 1 // ==== Dose indication ====
int32_t Indication_t::ITaskUmvos() {
    // Check if status changed
    static HealthState_t OldState = hsDeath;
    if(App.Dose.State != OldState) {
        OldState = App.Dose.State;
        Beeper.Beep(BeepBeep);
    }
    // Demonstrate dose status
    const BlinkBeep_t *pbb = &BBHealth[App.Dose.State];
    Led.SetColor(pbb->Color1);
    if(pbb->PBeep != nullptr) Beeper.Beep(pbb->PBeep);
    chThdSleepMilliseconds(pbb->Time1_ms);
    // Autodoc
    if(ProlongedState == pstAutodoc) {
        Led.SetColor(BB_ADInProgress.Color2);
        chThdSleepMilliseconds(BB_ADInProgress.Time2_ms);
        Led.SetColor(BB_ADInProgress.Color1);
        chThdSleepMilliseconds(BB_ADInProgress.Time1_ms);
        Led.SetColor(BB_ADInProgress.Color2);
        chThdSleepMilliseconds(BB_ADInProgress.Time2_ms);
    }
    // Proceed with dose demonstration
    Led.SetColor(pbb->Color2);
    return pbb->Time2_ms;
}

int32_t Indication_t::ITaskDetectorMobile() {
    if(App.Damage > 0) {
        int32_t r = rand() % (DMG_SND_MAX - 1);
        int32_t DmgSnd = (((DMG_SND_MAX - DMG_SND_BCKGND) * (App.Damage - 1)) / (DMG_MAX - 1)) + DMG_SND_BCKGND;
//        Uart.Printf("%d; %d\r", Damage, DmgSnd);
        if(r < DmgSnd) Beeper.IPin.Enable();
    }
    return 18;
}
#endif

#if 1 // ===================== Thread & Task ===================================
static WORKING_AREA(waIndicationThread, 128);
static void IndicationThread(void *arg) {
    chRegSetThreadName("Indication");
    while(true) Indication.ITask();
}

void Indication_t::ITask() {
    // Indication depends on device type. Every function returns required sleep interval until next call.
    int32_t SleepInterval;
    switch(App.Type) {
        case dtUmvos:          SleepInterval = Indication.ITaskUmvos(); break;
        case dtDetectorMobile: SleepInterval = Indication.ITaskDetectorMobile(); break;
        default: SleepInterval = 999; break;
    } // switch

#if 1 // ==== Wait Event ====
    uint32_t EvtMsk = chEvtWaitAnyTimeout(ALL_EVENTS, SleepInterval);
    // ==== Type changed ====
    if(EvtMsk & EVTMSK_TYPE_CHANGED) {
        Led.SetColor(DeviceColor[App.Type]);   // Blink with correct color
        if(App.Type != dtDetectorMobile) Beeper.Beep(BeepBeep);
        chThdSleepMilliseconds(T_SETTYPE_BLINK_MS);
        Led.SetColor(clBlack);
        chThdSleepMilliseconds(T_SETTYPE_BLINK_MS);
    }

    // ==== Pill ====
    if((EvtMsk & EVTMSK_PILL_CHECK) and (PillState != piNone)) {
        DoBeepBlink(&BBPill[PillState]);
        PillState = piNone;
    } // pill

    // ==== Autodoc ====
    if(EvtMsk & EVTMSK_AUTODOC_COMPLETED) DoBeepBlink(&BB_ADCompleted);
    if(EvtMsk & EVTMSK_AUTODOC_EXHAUSTED) DoBeepBlink(&BB_ADExhausted);

    // ==== Pelengator ====
    if(EvtMsk & EVTMSK_PELENG_FOUND) {
        Led.SetColor(DeviceColor[App.Type]);
        chThdSleepMilliseconds(T_PELENG_BLINK_MS);
        Led.SetColor(clBlack);
    }
#endif // Event
}
    // ==== Battery ====

void Indication_t::DoBeepBlink(const BlinkBeep_t *Pbb) {
    Led.SetColor(Pbb->Color1);
    Beeper.Beep(Pbb->PBeep);
    chThdSleepMilliseconds(Pbb->Time1_ms);
    Led.SetColor(Pbb->Color2);
    chThdSleepMilliseconds(Pbb->Time2_ms);
}

void Indication_t::Init() {
    Led.Init();
    Beeper.Init();
    // Thread
    PThd = chThdCreateStatic(waIndicationThread, sizeof(waIndicationThread), LOWPRIO, (tfunc_t)IndicationThread, NULL);
}

void Indication_t::ProcessTypeChange() {
    // Setup beeper to beep or to click
    if(App.Type == dtDetectorMobile) {
        TIM2->CR1 = TIM_CR1_OPM;
        TIM2->ARR = 22;
        TIM2->CCMR1 = (0b111 << 12);
        TIM2->CCER = TIM_CCER_CC2E;
        uint32_t tmp = TIM2->ARR * 1000;
        tmp = Clk.APB1FreqHz / tmp;
        if(tmp != 0) tmp--;
        TIM2->PSC = (uint16_t)tmp;
        TIM2->CCR2 = 20;
    }
    else Beeper.Init();

    chEvtSignal(PThd, EVTMSK_TYPE_CHANGED);
}
#endif
