/*
 * cc1101.h
 *
 *  Created on: Feb 12, 2013
 *      Author: g.kruglov
 */

#ifndef CC1101_H_
#define CC1101_H_

/*
 * Low-level operations are here.
 * Pkt level at top side, and SPI at bottom.
 */

#include <inttypes.h>
#include "kl_lib_L15x.h"
#include "cc1101defins.h"
#include "cc1101_rf_settings.h"
#include "radio_lvl1.h"

// Pins
#define CC_GPIO     GPIOA
#define CC_GDO2     2
#define CC_GDO0     3
#define CC_SCK      5
#define CC_MISO     6
#define CC_MOSI     7
#define CC_CS       4

#define GDO0_IRQ_MASK  ((uint32_t)(1<<CC_GDO0))

// SPI
#define CC_SPI      SPI1

enum CCState_t {ccIdle, ccSleeping, ccReceiving, ccTransmitting};

class cc1101_t {
private:
    uint8_t IState; // Inner CC state, returned as first byte
    // Pins
    void CsHi() { PinSet(CC_GPIO, CC_CS); }
    void CsLo() { PinClear(CC_GPIO, CC_CS); }
    bool GDO0IsHi() { return PinIsSet(CC_GPIO, CC_GDO0); }
    bool GDO2IsHi() { return PinIsSet(CC_GPIO, CC_GDO2); }
    void BusyWait() { while(PinIsSet(CC_GPIO, CC_MISO)); }
    // General
    uint8_t ReadWriteByte(uint8_t AByte);
    void RfConfig();
    int8_t RSSI_dBm(uint8_t ARawRSSI);
    // Registers and buffers
    void WriteRegister (const uint8_t Addr, const uint8_t AData);
    uint8_t ReadRegister (const uint8_t Addr);
    void WriteStrobe(uint8_t AStrobe);
    void WriteTX(uint8_t* Ptr, uint8_t Length);
    // Strobes
    void CReset()      { WriteStrobe(CC_SRES); }
    void EnterTX()     { WriteStrobe(CC_STX);  }
    void FlushTxFIFO() { WriteStrobe(CC_SFTX); }
    void GetState()    { WriteStrobe(CC_SNOP); }
    void EnterRX()     { WriteStrobe(CC_SRX);  }
    void FlushRxFIFO() { WriteStrobe(CC_SFRX); }
    void Recalibrate() {
        while(IState != CC_STB_IDLE) EnterIdle();
        WriteStrobe(CC_SCAL);
        BusyWait();
    }
public:
    CCState_t State;
    void Init();
    void SetChannel(uint8_t AChannel);
    void SetTxPower(uint8_t APwr) { WriteRegister(CC_PATABLE, APwr); }
    // State change
    void TransmitSync(rPkt_t *pPkt);
    uint8_t ReceiveSync(uint32_t Timeout_ms, rPkt_t *pPkt);
    void TransmitAsync(rPkt_t *pPkt);
    void ReceiveAsync();
    void EnterIdle()  { WriteStrobe(CC_SIDLE); State = ccIdle; }
    void Sleep() { WriteStrobe(CC_SPWD); State = ccSleeping; }
    uint8_t ReadFIFO(rPkt_t *pPkt);
    // Inner use
    void IHandleAsync();
    Thread *PWaitingThread;
};

extern cc1101_t CC;

#endif /* CC1101_H_ */