///////////////////////////////////////////////////////////////////////
// Ascension : BALTH2 
///////////////////////////////////////////////////////////////////////
// (1) Created from scratch (not in the original game). 
///////////////////////////////////////////////////////////////////////

BEGIN ~BALTH2~

IF ~False()~ THEN BEGIN a0 // from: FINMEL01:43.0 FINMEL01:2.1
  SAY @1002 /* ~<CHARNAME> does not stand alone, Melissan.  It is time that this is ended.~ #74272 */
  IF ~~ THEN EXTERN ~FINMEL01~ a25
END

IF ~False()~ THEN BEGIN a1 // from: FINMEL01:25.0 FINMEL01:15.0
  SAY @1003 /* ~I see well enough now, priestess.  Speak clever wit if you wish, you cannot hope to defeat us.~ #74273 */
  IF ~~ THEN EXTERN ~FINMEL01~ a26
END

IF ~False()~ THEN BEGIN a2 // from: FINMEL01:26.0
  SAY @1004 /* ~To return the essence to our father.  And great bloodshed in his name to call him forth.  And I never believed it.~ #74274 */
  IF ~~ THEN EXTERN ~FINMEL01~ a27
END

IF ~Global("FinalFight","AR6200",4)~ THEN BEGIN a3 // from:
  SAY @1005 /* ~We must be careful now, <CHARNAME>.  Within that stream of energy, Melissan is invulnerable to harm...and I doubt she will come out of it willingly to face us.~ #74323 */
  IF ~~ THEN GOTO a4
END

IF ~~ THEN BEGIN a4 // from: 3.0
  SAY @1006 /* ~I think the essence pools that adjoin the Throne might be divertable by someone with a connection to the essence.  A Bhaalspawn, one of us.  If all three were cut off from her stream, Melissan might be forced to deal with us rather than soak up even more power.~ #74324 */
  IF ~~ THEN GOTO a5
END

IF ~~ THEN BEGIN a5 // from: 4.0
  SAY @1007 /* ~She has, no doubt, guarded the pools in some fashion...but it is the only way to continue that I can think of.  Short of standing here and watching her become a goddess, that is.~ #74325 */
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",5)~ EXIT
END

IF ~False()~ THEN BEGIN a6 // from: FINMEL01:31.0 FINMEL01:29.0
  SAY @1008 /* ~You are a fool, Melissan.  You should have kept what divine energy you had for yourself and not spread it amongst such servants.  It will prove your doom.~ #74356 */
  IF ~~ THEN EXTERN ~FINMEL01~ a30
END

IF ~False()~ THEN BEGIN a7 // from: FINSOL01:35.0 FINSOL01:34.0
  SAY @1009 /* ~You...you are so beautiful.  I...had no idea...~ #80525 */
  IF ~~ THEN EXTERN ~FINSOL01~ a36
END

IF ~False()~ THEN BEGIN a8 // from: FINSOL01:36.0
  SAY @1010 /* ~Choose?  You mean...I may rid myself of the taint on my soul forever?~ #80527 */
  IF ~~ THEN EXTERN ~FINSOL01~ a37
END

IF ~False()~ THEN BEGIN a9 // from: FINSOL01:37.0
  SAY @1011 /* ~And there is nothing that I ever wanted more.  I choose to become a mortal gladly, and with all my heart.  To walk the earth without that dark burden twisting my soul...I...I cannot even imagine...~ #80529 */
  IF ~~ THEN EXTERN ~FINSOL01~ a38
END

IF ~False()~ THEN BEGIN a10 // from: FINSOL01:27.23
  SAY @1012 /* ~I cannot thank you enough, <CHARNAME>, for the gift you have given me.  I once thought I had done everything I could to fight for what was good...but it was you that showed me how wrong I was.  Without you, I would have died with that stain upon my soul and perhaps even been Melissan's puppet forever.~ #80532 */
  IF ~~ THEN GOTO a11
END

IF ~~ THEN BEGIN a11 // from: 10.0
  SAY @1013 /* ~I cannot pretend to know what you are thinking, now, of the decision you must make.  Nor do I pretend to certainty that the taint would bring such a <PRO_MANWOMAN> such as yourself towards evil.  Perhaps you would overcome that taint and be a good god, I cannot say.~ #80533 */
  IF ~~ THEN GOTO a12
END

IF ~~ THEN BEGIN a12 // from: 11.0
  SAY @1014 /* ~I just ask you to consider how Bhaal's taint has affected your life to this point.  Do you really wish to have all of it?  What type of person actually wishes to become a god?  Sarevok?  Irenicus?  Melissan?  Even if your intentions are good, what of an eternity being chained to such power?~ #80534 */
  IF ~~ THEN GOTO a13
END

IF ~~ THEN BEGIN a13 // from: 12.0
  SAY @1015 /* ~The choice is your own.  You know yourself better than I.  I simply ask that you consider the life you might have led, the mortal life, had the taint never visited itself upon you back at Candlekeep.  I look forward to my own.~ #80535 */
  COPY_TRANS FINSOL01 27
END

IF ~False()~ THEN BEGIN a14 // from: FINSOL01:32.9
  SAY @1016 /* ~And so it is done.  I believe you have made the right choice.  I look forward to meeting you again on Faerun, <CHARNAME>...as a mortal and a true <PRO_BROTHERSISTER>.~ #80544 */
  COPY_TRANS FINSOL01 32
END

IF ~False()~ THEN BEGIN a15 // from: FINSOL01:31.9 FINSOL01:30.9 FINSOL01:29.9
  SAY @1017 /* ~And so you take the road less traveled, <CHARNAME>.  I cannot say I envy you.  I hope the power brings you what you expect and desire, my friend.  When I look up at the heavens and see the brightest star in the sky, I shall think of you and offer a prayer.~ #80537 */
  COPY_TRANS FINSOL01 29
END

IF ~Global("MelStillImmortal","AR6200",3)~ THEN BEGIN a16 // from:
  SAY @1018 /* ~Melissan keeps restoring her immortal energies at the fount!  There must be a way to weaken her further, or we will never defeat her!~ #82771 */
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",4)~ EXIT
END
