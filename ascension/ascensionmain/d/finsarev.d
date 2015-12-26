///////////////////////////////////////////////////////////////////////
// Ascension : FINSAREV 
///////////////////////////////////////////////////////////////////////
// (1) This file is created from scratch (not in the original game)
///////////////////////////////////////////////////////////////////////

BEGIN ~FINSAREV~

IF ~True()~ THEN BEGIN a0 // from:
  SAY @26 /* ~Who--?  Melissan.  And <CHARNAME>, no less.  And to think that I had resigned myself to not being a part of this little play.  Who brought me here?  And why am I in my old armor?~ #82804 */
  IF ~~ THEN DO ~SetGlobal("SarevokSummoned","AR6200",1)~ EXTERN ~FINMEL01~ a41
END

IF ~False()~ THEN BEGIN a1 // from: FINMEL01:41.0
  SAY @27 /* ~Fight <CHARNAME>?  Aye...I will do that.~ #80516 */
  IF ~~ THEN REPLY @28 /* ~So you die again, as well.  It's all good.~ #80517 */ GOTO a2
  IF ~~ THEN REPLY @29 /* ~You're a fool, Sarevok, if you think you'll make any difference.~ #80519 */ GOTO a2
  IF ~~ THEN REPLY @30 /* ~You're willing to become Melissan's servant, now?  I'm disappointed.~ #80520 */ GOTO a2
  IF ~~ THEN REPLY @31 /* ~Then you'll die.  I gave you life again, and I can take it away...for the third time.~ #80521 */ GOTO a2
END

IF ~~ THEN BEGIN a2 // from: 1.3 1.2 1.1 1.0
  SAY @32 /* ~It is true.  I may die again at your hand, <CHARNAME>.  But better that than sit in your shadow and taste the bile in my heart while you take what was once rightfully mine.  Better to fight for Melissan than suffer that.~ #80518 */
  IF ~~ THEN EXTERN ~FINMEL01~ a38
END
