///////////////////////////////////////////////////////////////////////
// Ascension: SOLAR
///////////////////////////////////////////////////////////////////////
// (1) add a state trigger for peace-talking Balth
// (2) change the wording a bit
// (3) append states 68--70
///////////////////////////////////////////////////////////////////////

ADD_STATE_TRIGGER SOLAR 59 ~Global("BalthazarFights","GLOBAL",0)~

REPLACE_SAY SOLAR 60 @230 /* ~The one you know as Melissan was never a true member of the Five, godchild.  She is no child of Bhaal.~ [SOLAR66] #74248 */

REPLACE_SAY SOLAR 61 @231 /* ~The dead god, Bhaal, has not been resurrected and, indeed, may never be.  You must understand what awaits you now at the end of your journey, godchild... and for this, the one you know as Melissan will explain for herself.~ [SOLAR67] #74249 */


APPEND SOLAR

IF ~Global("TalkedToSolar","GLOBAL",5)
Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN a68 // from:
  SAY @239 /* ~You have parleyed with Balthazar, the greatest of the Bhaalspawn besides yourself, god-child.  You are to be commended.  Your journey is nearly at its end.~ #74250 */
  IF ~~ THEN REPLY @240 /* ~Wait...what is Balthazar's part in all this?  You knew I wouldn't fight him?~ #74251 */ DO ~SetGlobal("TalkedToSolar","GLOBAL",6)~ GOTO a69
END

IF ~~ THEN BEGIN a69 // from: 68.0
  SAY @241 /* ~You did not need to fight him.  The rest of the Five have been defeated.  With Balthazar and yourself both alive, not all of Bhaal's divine essence has returned to its source, and Melissan will seek to collect it.  This is the challenge that awaits you.~ #74252 */
  IF ~~ THEN REPLY @242 /* ~But...Melissan is part of the Five, isn't she?~ #74253 */ GOTO a70
  IF ~~ THEN REPLY @243 /* ~So Melissan has not collected enough of the essence, yet, to resurrect Bhaal, right?~ #74255 */ GOTO a70
  IF ~~ THEN REPLY @244 /* ~So, Melissan seeks to be the last of the Bhaalspawn.  Does she even plan on resurrecting Bhaal?~ #74258 */ GOTO a70
  IF ~~ THEN REPLY @245 /* ~Another challenge.  Alright, alright...let's just get this over with.~ #74257 */ GOTO a70
END

IF ~~ THEN BEGIN a70 // from: 69.3 69.2 69.1 69.0
  SAY @246 /* ~You do not yet understand.  But all shall become clear.~ #74254 */
  IF ~~ THEN GOTO 60
END

END /* end of: APPEND SOLAR */
