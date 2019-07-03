/*
 * eventHandlers.cpp
 *
 *  Created on: 28 ���. 2019 �.
 *      Author: juice
 */
#include "eventHandlers.h"
#include <stdio.h>
#include "glue.h"

void UpdateHP(OregonPlayer* me, unsigned int NewHP) {
    if (NewHP <= DEFAULT_HP) {
        me->CharHP = NewHP;
    } else {
        me->CharHP = DEFAULT_HP;
    }
    SaveHP(me->CharHP);
	//printf("Update HP %u\n", NewHP);
}

void UpdateTimerAgony(OregonPlayer* me, unsigned int Timer) {
	//printf("Updated timer agony %u", Timer);
    me->TimerAgony = Timer;
    SaveTimerAgony(Timer);
}

void Reset(OregonPlayer* me) {
	//printf("Reseted\n");
	UpdateHP(me, DEFAULT_HP);
	me->TimerDeath = 0;
	UpdateTimerAgony(me, 0);
}

//only a stub
//void Flash(unsigned int R, unsigned int G, unsigned int B, unsigned int Timeout) {
//	printf("Flash %u, %u, %u color for %u ms\n", R, G, B, Timeout);
//}

//only a stub
//void BeepForPeriod(unsigned int Period) {
//	printf("Beep for %u ms\n", Period);
//}

//only a stub
//void SaveHP(unsigned int HP) {
//	printf("HP saved (%u)\n", HP);
//}

//only a stub
//void SaveTimerAgony(unsigned int Timer) {
//	printf("TimerAgony saved (%u)\n", Timer);
//}

void ShowCurrentHealth (OregonPlayer* me) {
     Flash(RED_MEDIUM - me->CharHP*RED_MEDIUM/DEFAULT_HP, me->CharHP*RED_MEDIUM/DEFAULT_HP, 0, FLASH_MS);
}

void ShowCurrentHealthGhoul (OregonPlayer* me) {
     Flash(RED_MEDIUM - me->CharHP*RED_MEDIUM/(GHOUL_HP), 0, me->CharHP*RED_MEDIUM/(GHOUL_HP), FLASH_MS);
}

//only a stub
//void SaveState(unsigned int State) {
//	printf("saved state %u\n", State);
//}

//void ClearPill(void) {
//	printf("Pill cleared\n");
//}

void PillIndicate(void) {
	Flash(RED_MEDIUM, GREEN_MEDIUM, BLUE_MEDIUM, FLASH_MS);
	BeepForPeriod(SHORT_BEEP_MS);
}
