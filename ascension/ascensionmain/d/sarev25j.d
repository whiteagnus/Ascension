///////////////////////////////////////////////////////////////////////
// Ascension: SAREV25J
///////////////////////////////////////////////////////////////////////
// (1) appends states 15--28
///////////////////////////////////////////////////////////////////////

APPEND ~SAREV25J~

IF ~False()~ THEN BEGIN a15 // from: FINMEL01:33.0
  SAY @262 /* ~What do you mean, wench?  We've no business, you and I.~ #80490 */
  IF ~~ THEN EXTERN ~FINMEL01~ a35
END

IF ~False()~ THEN BEGIN a16 // from: FINMEL01:35.0
  SAY @263 /* ~Even if cared to consider your offer, I cannot.  <CHARNAME> has bound me with a vow.~ #80496 */
  IF ~~ THEN EXTERN ~FINMEL01~ a36
END

IF ~False()~ THEN BEGIN a17 // from: FINMEL01:36.0 FINMEL01:35.1
  SAY @264 /* ~I see.  And you believe your offer interests me?  <CHARNAME> has done well enough against you so far.~ #80505 */
  IF ~~ THEN EXTERN ~FINMEL01~ a37
END

IF ~False()~ THEN BEGIN a18 // from: FINMEL01:37.3 FINMEL01:37.1
  SAY @265 /* ~Serve you?  You made me that offer once, as I recall.  I strung up your messenger atop the spires of my tower and allowed the crows to feed upon his innards.  I desired to rule, not to serve.  And I will not serve you, wench.  My answer is no.~ #80499 */
  IF ~~ THEN EXTERN ~FINMEL01~ a40
END

IF ~False()~ THEN BEGIN a19 // from: FINMEL01:37.2
  SAY @266 /* ~I tire of <CHARNAME> and <PRO_HISHER> foolish morals.  I tire of tagging along as a servant to the one who halted my own plans long before yours came to fruition, priestess.  Aye...I will be your general.~ #80506 */
  IF ~False()~ THEN EXIT
  IF ~~ THEN REPLY @267 /* ~No, Sarevok!  You traitorous bastard!~ #80507 */ GOTO a21
  IF ~~ THEN REPLY @268 /* ~That is a mistake, Sarevok.  You'll just die along with her this way.~ #80509 */ GOTO a22
  IF ~~ THEN REPLY @269 /* ~I expected as much.  So I get to kill you again, as well.  It's all good.~ #80511 */ GOTO a23
END

IF ~False()~ THEN BEGIN a20 // from: FINMEL01:37.0
  SAY @270 /* ~Become the demon I once was?  I am no longer that man, nor do I wish to be.  If <CHARNAME> has shown me anything, it is that I am better off untouched by the madness that once swallowed me whole.  Wallow in your delusion if you will, woman...I remember it well.  And I will not join you in it.~ #80501 */
  IF ~~ THEN EXTERN ~FINMEL01~ a40
END

IF ~~ THEN BEGIN a21 // from: 19.1
  SAY @271 /* ~My nature has not changed, <CHARNAME>.  Did you truly expect otherwise?  Better to fight for Melissan than sit in your shadow and watch you take what was once mine.~ #80508 */
  IF ~~ THEN EXTERN ~FINMEL01~ a38
END

IF ~~ THEN BEGIN a22 // from: 19.2
  SAY @272 /* ~Perhaps.  But I will not sit in your shadow and simply watch you take what was once mine.  You do not deserve power, <CHARNAME>.  Even if it means fighting for Melissan, I will do what I must.~ #80510 */
  IF ~~ THEN EXTERN ~FINMEL01~ a38
END

IF ~~ THEN BEGIN a23 // from: 19.3
  SAY @273 /* ~A typical boast.  And perhaps you will even win, but I will not sit idly by as you take what was once mine.  You don't deserve power, <CHARNAME>, and even if it means fighting for Melissan I will do what I must.~ #80512 */
  IF ~~ THEN EXTERN ~FINMEL01~ a38
END

IF ~Global("MelStillImmortal","AR6200",2)
!Global("SarevokHasSword","LOCALS",1)~ THEN BEGIN a24 // from:
  SAY @274 /* ~Blast!  The wench returns to Bhaal's essence like a coward, healing herself!  There must be a way to weaken her further, or we will never defeat her!~ #82772 */
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",3)~ EXIT
END

IF ~Global("SarevokHasSword","LOCALS",1)~ THEN BEGIN a25 // from:
  SAY @275 /* ~My blade, is it?  I had thought this lost forever.  It is good to have it back.  While I no longer have the essence to channel through it, it is still a Deathbringer's weapon and I can restore much of its power.  I would not suggest you attempt to use it yourself, now.~ #82791 */
  IF ~~ THEN DO ~SetGlobal("SarevokHasSword","LOCALS",2)~ GOTO a26
END

IF ~~ THEN BEGIN a26 // from: 25.0
  SAY @276 /* ~You wouldn't have my armor, too, hidden about somewhere within your packs?  Hmph.  I suppose some things are too much to hope for.~ #82792 */
  IF ~~ THEN DO ~DestroyItem("sw2h16")
GiveItemCreate("finsarev",Myself,0,0,0)
~ EXIT
END

IF ~False()~ THEN BEGIN a27 // from: IRENIC2:1.0
  SAY @277 /* ~This is the Irenicus I have been told of?  I was expecting more intensity and power from one who hounded <CHARNAME> so, and not simply...*another*...wizard.~ #82801 */
  IF ~~ THEN EXTERN ~IRENIC2~ a16
END

IF ~False()~ THEN BEGIN a28 // from: IRENIC2:16.0
  SAY @278 /* ~Yet I certainly would not have allowed <CHARNAME> to escape from me, had <PRO_HESHE> been within my power not once but twice, even.  But, then, I imagine you were too busy taking control of insane asylums and making thieves out of vampires for absolutely no reason.~ #82802 */
  IF ~~ THEN EXTERN ~IRENIC2~ a17
END

END
