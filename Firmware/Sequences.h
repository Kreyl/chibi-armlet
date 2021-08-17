/*
 * Sequences.h
 *
 *  Created on: 09 ���. 2015 �.
 *      Author: Kreyl
 */

#ifndef SEQUENCES_H_
#define SEQUENCES_H_

#include "ChunkTypes.h"

#if 0 // ============================ LED blink ================================
const LedChunk_t lsqIdle[] = {
        {csSetup, 0, clBlack},
        {csEnd}
};

const LedChunk_t lsqError[] = {
        {csSetup, 0, clRed},
        {csWait, 4005},
        {csSetup, 0, clBlack},
        {csEnd}
};

// ======= Adding / removing IDs ========
// ==== Access ====
#define LSQ_ACCESS_ADD_CLR      clGreen
#define LSQ_ACCESS_REMOVE_CLR   clRed
const LedChunk_t lsqAddingAccessWaiting[] = {
        {csSetup, 0, LSQ_ACCESS_ADD_CLR},
        {csEnd}
};
const LedChunk_t lsqAddingAccessNew[] = {
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, LSQ_ACCESS_ADD_CLR},
        {csEnd}
};
const LedChunk_t lsqAddingAccessError[] = {
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, LSQ_ACCESS_ADD_CLR},
        {csEnd}
};

const LedChunk_t lsqRemovingAccessWaiting[] = {
        {csSetup, 0, LSQ_ACCESS_REMOVE_CLR},
        {csEnd}
};
const LedChunk_t lsqRemovingAccessNew[] = {
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, LSQ_ACCESS_REMOVE_CLR},
        {csEnd}
};

// ==== Adder ====
#define LSQ_ADDER_ADD_CLR       clBlue
#define LSQ_ADDER_REMOVE_CLR    clMagenta
const LedChunk_t lsqAddingAdderWaiting[] = {
        {csSetup, 0, LSQ_ADDER_ADD_CLR},
        {csEnd}
};
const LedChunk_t lsqAddingAdderNew[] = {
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, LSQ_ADDER_ADD_CLR},
        {csEnd}
};
const LedChunk_t lsqAddingAdderError[] = {
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, LSQ_ADDER_ADD_CLR},
        {csEnd}
};

const LedChunk_t lsqRemovingAdderWaiting[] = {
        {csSetup, 0, LSQ_ADDER_REMOVE_CLR},
        {csEnd}
};
const LedChunk_t lsqRemovingAdderNew[] = {
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, LSQ_ADDER_REMOVE_CLR},
        {csEnd}
};

// ==== Remover ====
#define LSQ_REMOVER_ADD_CLR     clCyan
#define LSQ_REMOVER_REMOVE_CLR  clYellow
const LedChunk_t lsqAddingRemoverWaiting[] = {
        {csSetup, 0, LSQ_REMOVER_ADD_CLR},
        {csEnd}
};
const LedChunk_t lsqAddingRemoverNew[] = {
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, LSQ_REMOVER_ADD_CLR},
        {csEnd}
};
const LedChunk_t lsqAddingRemoverError[] = {
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, LSQ_REMOVER_ADD_CLR},
        {csEnd}
};

const LedChunk_t lsqRemovingRemoverWaiting[] = {
        {csSetup, 0, LSQ_REMOVER_REMOVE_CLR},
        {csEnd}
};
const LedChunk_t lsqRemovingRemoverNew[] = {
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, LSQ_REMOVER_REMOVE_CLR},
        {csEnd}
};

// ==== Erase all ====
const LedChunk_t lsqEraseAll[] = {
        {csSetup, 0, clRed},
        {csWait, 180},
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, clRed},
        {csWait, 180},
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, clRed},
        {csWait, 180},
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, clRed},
        {csWait, 180},
        {csSetup, 0, clBlack},
        {csEnd}
};

// General
const LedChunk_t lsqBlinkGreen[] = {
        {csSetup, 0, clGreen},
        {csWait, 180},
        {csSetup, 0, clBlack},
        {csEnd}
};

const LedChunk_t lsqBlinkGreenX2[] = {
        {csSetup, 0, clGreen},
        {csWait, 180},
        {csSetup, 0, clBlack},
        {csWait, 180},
        {csSetup, 0, clGreen},
        {csWait, 180},
        {csSetup, 0, clBlack},
//        {csWait, 999},
//        {csGoto, 0}
        {csEnd}
};
#endif

#if 1 // ============================ LED RGB ==================================
// ==== Door ====
#define clOne           clBlue
#define clMany          clCyan
#define SWITCH_TIME     720


const LedRGBChunk_t lsqFailure[] = {
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csWait, 99},
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csEnd},
};

const LedRGBChunk_t lsqSearch[] = {
        {csSetup, 0, clRed},
        {csWait, 99},
        {csSetup, 0, clBlack},
        {csEnd},
};

const LedRGBChunk_t lsqOnPillConnect[] = {
        {csSetup, 0, clGreen},
        {csWait, 450},
        {csSetup, 0, clBlack},
        {csEnd},
};

#endif

#if 0 // ============================ LED HSV ==================================
const LedHSVChunk_t lsqHsvStart[] = {
        {csSetup, 99, hsvRed},
        {csSetup, 99, hsvGreen},
        {csSetup, 99, hsvBlue},
        {csSetup, 99, hsvBlack},
        {csEnd}
};

const LedHSVChunk_t lsqHsvFailure[] = {
        {csSetup, 0, hsvRed},
        {csWait, 99},
        {csSetup, 0, hsvBlack},
        {csWait, 99},
        {csSetup, 0, hsvRed},
        {csWait, 99},
        {csSetup, 0, hsvBlack},
        {csWait, 99},
        {csSetup, 0, hsvRed},
        {csWait, 99},
        {csSetup, 0, hsvBlack},
        {csEnd},
};
#endif

#if 0 // =========================== LED Smooth ================================
#define LED_TOP_BRIGHTNESS  255

const LedSmoothChunk_t lsqFadeIn[] = {
        {csSetup, 630, LED_TOP_BRIGHTNESS},
        {csEnd}
};
const LedSmoothChunk_t lsqFadeOut[] = {
        {csSetup, 630, 0},
        {csEnd}
};
const LedSmoothChunk_t lsqEnterActive[] = {
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csEnd}
};
const LedSmoothChunk_t lsqEnterIdle[] = {
        {csSetup, 360, 0},
        {csEnd}
};

#endif

#if 1 // ============================= Beeper ==================================
#define BEEP_VOLUME     9
// Type, duration_ms, freq, volume
const BeepChunk_t bsqBeepBeep[] = {
        {csSetup, BEEP_VOLUME, 1975},
        {csWait, 54},
        {csSetup, 0},
        {csWait, 54},
        {csSetup, BEEP_VOLUME, 1975},
        {csWait, 54},
        {csSetup, 0},
        {csEnd}
};

const BeepChunk_t bsqSearch[] = {
        {csSetup, BEEP_VOLUME, 1975},
        {csWait, 99},
        {csSetup, 0},
        {csEnd}
};
#endif

#if 0 // ============================== Vibro ==================================
#define VIBRO_VOLUME    22  // 1 to 22

#define VIBRO_SHORT_MS  270
const BaseChunk_t vsqBrr[] = {
        {csSetup, VIBRO_VOLUME},
        {csWait, 2700},
        {csSetup, 0},
        {csEnd}
};
const BaseChunk_t vsqBrrBrr[] = {
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csWait, 99},
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csEnd}
};

const BaseChunk_t vsqError[] = {
        {csSetup, VIBRO_VOLUME},
        {csWait, 999},
        {csSetup, 0},
        {csEnd}
};


const BaseChunk_t vsqSingle[] = {
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csEnd}
};
const BaseChunk_t vsqPair[] = {
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csWait, 99},
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csEnd}
};
const BaseChunk_t vsqMany[] = {
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csWait, 99},
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csWait, 99},
        {csSetup, VIBRO_VOLUME},
        {csWait, VIBRO_SHORT_MS},
        {csSetup, 0},
        {csEnd}
};
#endif

#endif /* SEQUENCES_H_ */
