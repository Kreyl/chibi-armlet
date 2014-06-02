/*
 * indication.h
 *
 *  Created on: 28 ��� 2014 �.
 *      Author: Kreyl
 */

#ifndef INDICATION_H_
#define INDICATION_H_

#include "peripheral.h"
#include "evt_mask.h"
#include "colors_sounds.h"

#if 1 // ==== Timings ====
#define TM_CLICK_MS          18      // for Detector
#endif

enum PillState_t {piNone, piGood, piBad};
enum ProlongedState_t {pstNothing, pstAutodoc};
enum BatteryState_t {bsGood, bsBad};

class Indication_t {
private:
    LedRGB_t Led;
    PillState_t PillState;
    void DoBeepBlink(const BlinkBeep_t *Pbb);
    // Device-dependent tasks
    int32_t ITaskUmvos();
    int32_t ITaskDetectorMobile();
    int32_t ITaskDetectorFixed();
public:
    Thread *PThd;
    ProlongedState_t ProlongedState;
    BatteryState_t BatteryState;
    void Init();
    // Commands
    void PillGood() { PillState = piGood; chEvtSignal(PThd, EVTMSK_PILL_CHECK); }
    void PillBad()  { PillState = piBad;  chEvtSignal(PThd, EVTMSK_PILL_CHECK); }
    void PelengReceived() { chEvtSignal(PThd, EVTMSK_PELENG_FOUND); }
    void ProcessTypeChange();
    void AutodocCompleted() { chEvtSignal(PThd, EVTMSK_AUTODOC_COMPLETED); }
    void AutodocExhausted() { chEvtSignal(PThd, EVTMSK_AUTODOC_EXHAUSTED); }
    void LustraBadID() {}
    // Inner use
    void ITask();
};

extern Indication_t Indication;


#endif /* INDICATION_H_ */
