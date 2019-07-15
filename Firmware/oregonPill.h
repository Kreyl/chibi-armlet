/*****************************************************************************
* Model: oregonPill.qm
* File:  ./oregonPill.h
*
* This code has been generated by QM tool (see state-machine.com/qm).
* DO NOT EDIT THIS FILE MANUALLY. All your changes will be lost.
*
* This program is open source software: you can redistribute it and/or
* modify it under the terms of the GNU General Public License as published
* by the Free Software Foundation.
*
* This program is distributed in the hope that it will be useful, but
* WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
* or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
* for more details.
*****************************************************************************/
/*${.::oregonPill.h} .......................................................*/
#ifndef oregonPill_h
#define oregonPill_h
#ifdef __cplusplus
extern "C" {
#endif
#include "qhsm.h"    /* include own framework tagunil version */

#define TIMEOUT_RADX_S 600
#define TIMEOUT_HEAL_S 300
#define TIMEOUT_ATOM_S 60

typedef struct oregonPillQEvt {
    QEvt super;
    unsigned int Value;
} oregonPillQEvt;


/*${SMs::OregonPill} .......................................................*/
typedef struct {
/* protected: */
    QHsm super;

/* public: */
    unsigned int Timer;
    unsigned int Value;
    QHsm* Player;
    oregonPillQEvt* e;

} OregonPill;


extern QHsm * const the_oregonPill; /* opaque pointer to the oregonPill HSM */

/*${SMs::OregonPill_ctor} ..................................................*/
void OregonPill_ctor();

#ifdef __cplusplus
}
#endif
#endif /* oregonPill_h */
