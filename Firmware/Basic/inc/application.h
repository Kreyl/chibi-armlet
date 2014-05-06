/*
 * application.h
 *
 *  Created on: Nov 9, 2013
 *      Author: kreyl
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_

#include "kl_lib_L15x.h"
#include "sequences.h"
#include "Dose.h"
#include "RxTable.h"

# if 1 // Uart Command Codes. See https://docs.google.com/document/d/14pGuFv6KsG5tB4OmI0qc9f37cWdUVqZpTvvds2y46VY/edit
#define CMD_PING            0x01
#define CMD_SET_ID          0x10
#define CMD_GET_ID          0x11
#define CMD_SET_DOSETOP     0x20
#define CMD_GET_DOSETOP     0x21
#define CMD_PILL_STATE      0x30
#define CMD_PILL_WRITE      0x31
#define CMD_PILL_READ       0x32
#define CMD_PILL_WRITEALL   0x33
#define CMD_DOSE_GET        0x60
#define CMD_DOSE_SET        0x61

#define CMD_SET_TIME        0x71
#define CMD_GET_MESH_INFO   0x72

#define RPL_ACK             0x90    // Acknowledge
#define RPL_GET_ID          0xA1
#define RPL_GET_DOSETOP     0xB1
#define RPL_PILL_STATE      0xC0
#define RPL_PILL_WRITE      0xC1
#define RPL_PILL_READ       0xC2
#define RPL_DOSE_GET        0xE0

#define RPL_SET_TIME        0xD1
#define RPL_GET_MESH_INFO   0xD2

#define UART_RPL_BUF_SZ     36
#endif

#if 1 // ==== Timings ====
#define TM_DOSE_INCREASE_MS 999
#define TM_DOSE_SAVE_MS     2007
#define TM_PILL_CHECK_MS    504    // Check if pill connected every TM_PILL_CHECK
#define TM_MEASUREMENT_MS   5004
#endif

// ========= Device types =========
#define DEVTYPE_UMVOS
//#define DEVTYPE_LUSTRA
//#define DEVTYPE_DETECTOR
//#define DEVTYPE_PILLPROG
//#define DEVTYPE_TUNER

// Sensitivity Constants, percent [1...1000]. Feel if RxLevel > SnsConst.
#define RLVL_NEVER              10000
#define RLVL_2M                 800     // 0...4m
#define RLVL_4M                 700     // 1...20m
#define RLVL_10M                600
#define RLVL_50M                1

#define RLVL_DETECTOR_RX        RLVL_4M // LED on Field will lit if rlevel is higher

// ==== Indication constants ====
#define BATTERY_DISCHARGED_ADC  1485    // 1200 mV

#if 1 // ==== Eeprom ====
// Addresses
#define EE_DEVICE_ID_ADDR       0
#define EE_DOSETOP_ADDR         (sizeof(uint32_t))  // ID is uint32_t
#endif

#if 1 // ==== Pill ====
#define PILL_TYPEID_SET_ID      0x0001
#define PILL_TYPEID_CURE        0x0009
#define PILL_TYPEID_SET_DOSETOP 0x0011

struct Pill_t {
    uint16_t TypeID;
    union {
        uint16_t DeviceID;
        // Cure
        struct {
            uint16_t ChargeCnt;
            uint32_t Value;
        } __attribute__ ((__packed__));
        uint32_t DoseTop;
    };
} __attribute__ ((__packed__));
#define PILL_SZ     sizeof(Pill_t)
#endif // Pill

// ==== Application class ====
class App_t {
private:
    Pill_t Pill;
    uint8_t ISetID(uint32_t NewID);
    uint8_t UartRplBuf[UART_RPL_BUF_SZ];
    Eeprom_t EE;
#ifdef DEVTYPE_UMVOS
    Dose_t Dose;
    void SaveDoseTop() { EE.Write32(EE_DOSETOP_ADDR, Dose.Consts.Top); }
#endif
public:
    uint32_t ID;
    Thread *PThd;
#ifdef DEVTYPE_UMVOS
    RxTable_t RxTable;
#endif
    void Init();
    void DetectorFound(int32_t RssiPercent);
    // Events
    void OnPillConnect();
    void OnUartCmd(uint8_t CmdCode, uint8_t *PData, uint32_t Length);
#ifdef DEVTYPE_UMVOS
    void OnBatteryMeasured();
    void OnDoseIncTime();
    void OnRxTableReady();
#endif
};

extern App_t App;

#endif /* APPLICATION_H_ */
