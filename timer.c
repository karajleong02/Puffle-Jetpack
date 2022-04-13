#include "timer.h"
#include "myLib.h"
#include "game.h"


// Time variables
int time_m;
int time_s;
int time_cs;


inline void haltUntilInterrupt(){
  __asm__("swi 0x04 << 15");
}




void interruptHandler(void) {
  
  REG_IME = 0;
  
  if ( REG_IF & INT_TM0 ) {
    time_cs++;
    if (time_cs > 99) time_cs = 0;
  }
  
  if ( REG_IF & INT_TM1 ) {
    time_s++;
    gasLevel--;
    if (time_s > 99) {
      time_s = time_s - 100;
    }
  }
  
  if ( REG_IF & INT_TM2 ) {
    time_m++;
  }
  
 
  
  //Resets Timer
  if ((REG_IF & INT_BUTTON) && (~BUTTONS & BUTTON_START)) {
    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;
    REG_TM2CNT = TIMER_OFF;
    time_cs = 0;
    time_s = 0;
    time_m = 0;
    REG_TM0CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
    REG_TM1CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
    REG_TM2CNT = TM_CASCADE | TIMER_ON | TM_IRQ;
  }

  // Stops Timer
  if ((REG_IF & INT_BUTTON) && (~BUTTONS & BUTTON_SELECT)) {
    REG_TM0CNT = TIMER_OFF;
    REG_TM1CNT = TIMER_OFF;
    REG_TM2CNT = TIMER_OFF;
  }
  
  REG_IF = REG_IF;
  REG_IME = 1;
}


void enableTimerInterrupts(void) {

  REG_IE = INT_TM0 | INT_TM1 | INT_TM2;


  REG_TM0CNT = 0;
  REG_TM0D = 65536 - 164;
  REG_TM0CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
  
  REG_TM1CNT = 1;
  REG_TM1D = 65536 - 16384;
  REG_TM1CNT = TM_FREQ_1024 | TIMER_ON | TM_IRQ;
  
  REG_TM2CNT = 0;
  REG_TM2D = 65536 - 60;
  REG_TM2CNT = TM_CASCADE | TIMER_ON | TM_IRQ;
}

void setupInterrupts(void) {

  REG_IME = 0;

  REG_INTERRUPT = interruptHandler;
  enableTimerInterrupts();


  REG_IE |= INT_VBLANK;
  REG_DISPSTAT |= INT_VBLANK_ENABLE;

  REG_IE |= INT_BUTTON;
  REG_KEYCNT |= BUTTON_A | BUTTON_SELECT | BUTTON_START | KEYCNT_INT_ENABLE;
 
  REG_IME = 1;
}


