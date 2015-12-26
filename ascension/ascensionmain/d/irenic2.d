///////////////////////////////////////////////////////////////////////
// Ascension : IRENIC2
///////////////////////////////////////////////////////////////////////
// (1) created from scratch (not in the original game)
///////////////////////////////////////////////////////////////////////

BEGIN ~IRENIC2~

IF ~False()~ THEN BEGIN a0 // from: FINMEL01:17.0
  SAY @435 /* ~Indeed.  We meet once again.~ #74278 */
  IF ~~ THEN REPLY @436 /* ~That's okay.  If Sarevok can turn up like a bad penny, then you're allowed to, as well.~ #74279 */ EXTERN ~FINMEL01~ a18
  IF ~~ THEN REPLY @437 /* ~You told her how to influence me, didn't you?  And you told her I was in Suldanessalar.~ #74280 */ EXTERN ~FINMEL01~ a18
  IF ~~ THEN REPLY @438 /* ~You're a pathetic excuse for an elf, Irenicus.  If you wish to die again, I'll happily oblige.~ #74281 */ EXTERN ~FINMEL01~ a18
  IF ~~ THEN REPLY @439 /* ~You're collecting my leavings, Melissan?  How very sad for you.~ #74282 */ EXTERN ~FINMEL01~ a18
END

IF ~Global("FinalFight","AR6200",2)~ THEN BEGIN a1 // from:
  SAY @440 /* ~So, <CHARNAME>...it is now just you and I, once again.  At odds in the bowels of Hell and preparing to do combat.  How very fitting.~ #77391 */
  IF ~InParty("Sarevok")
!StateCheck("Sarevok",4032)
!StateCheck("Sarevok",STATE_SLEEPING)
!StateCheck("Sarevok",STATE_STUNNED)
!StateCheck("Sarevok",STATE_SILENCED)~ THEN EXTERN ~SAREV25J~ a27
  IF ~OR(5)
!InParty("Sarevok")
StateCheck("Sarevok",4032)
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)~ THEN REPLY @441 /* ~This fight is mine, Irenicus.  While you stewed in Hell, my power has multiplied.~ #77392 */ GOTO a3
  IF ~OR(5)
!InParty("Sarevok")
StateCheck("Sarevok",4032)
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)~ THEN REPLY @442 /* ~You actually think you'll stop me?  It appears your delusions have survived the many beatings at my hand.~ #77394 */ GOTO a4
  IF ~OR(5)
!InParty("Sarevok")
StateCheck("Sarevok",4032)
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)~ THEN REPLY @443 /* ~So you're actually willing to serve as Melissan's little lackey?  I would expect more from the great elven magician.  Ellesime would be sad to see you reduced to this.~ #77396 */ GOTO a5
  IF ~OR(5)
!InParty("Sarevok")
StateCheck("Sarevok",4032)
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)~ THEN REPLY @444 /* ~Don't you ever tire of that bravado?  Haven't you received enough spankings upon my knee?~ #77398 */ GOTO a6
  IF ~OR(5)
!InParty("Sarevok")
StateCheck("Sarevok",4032)
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)~ THEN REPLY @445 /* ~You won't stop me, Irenicus.  Nobody can.  My destiny is at hand.~ #77400 */ GOTO a7
END

IF ~~ THEN BEGIN a3 // from: 17.0 1.1
  SAY @446 /* ~It appears you have been the beneficiary of low expectations, but even I have learned from my mistakes.  Here, I have nothing to lose, not even my life.  Thanks to Melissan, I still have time to snuff out your divine ascention personally. We will be even!~ #82757 */
  IF ~~ THEN GOTO a8
END

IF ~~ THEN BEGIN a4 // from: 17.1 1.2
  SAY @447 /* ~You may have gained some crude and rudimentary control over your abilities in the interim, but even I have learned a thing or two...delusions or no.  And Melissan has given me the opportunity to personally see an end to your ascension...consider it a favor returned.~ #77395 */
  IF ~~ THEN GOTO a8
END

IF ~~ THEN BEGIN a5 // from: 17.2 1.3
  SAY @448 /* ~Do not speak her name, dog.  Ellesime will understand the fullness of her regret soon enough.  As for you...Melissan has given me the opportunity to return an old favor.  One ascension for another...it rings with universal justice.~ #77397 */
  IF ~~ THEN GOTO a8
END

IF ~~ THEN BEGIN a6 // from: 17.3 1.4
  SAY @449 /* ~How very glib and typical.  How far the expectations of the universe must have lowered to allow a gnat like you to even come this far.  It is fortunate that I have an opportunity, then, to repay your termination of my own ascension in kind.~ #77399 */
  IF ~~ THEN GOTO a8
END

IF ~~ THEN BEGIN a7 // from: 17.4 1.5
  SAY @450 /* ~Ah, yes.  Familiar words.  Similar to the ones I spoke at the cusp of my own ascension.  How I would enjoy to repay that favor in kind and show the universe what an unworthy gnat you truly are.~ #77401 */
  IF ~~ THEN GOTO a8
END

IF ~~ THEN BEGIN a8 // from: 7.0 6.0 5.0 4.0 3.0
  SAY @451 /* ~But enough of this.  Though I would dearly love to let my sister rot in her own Hell for eternity, it would not be a true and fitting re-union if I did not use my new power to send her an invitation.~ #80558 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finiren1")~ EXIT
END

IF ~False()~ THEN BEGIN a9 // from: FINBODH:18.0 FINBODH:17.0 FINBODH:16.0 FINBODH:15.0 FINBODH:14.0 FINBODH:13.0 FINBODH:12.0 FINBODH:11.0 FINBODH:10.0 FINBODH:9.0 FINBODH:8.0 FINBODH:7.0 FINBODH:6.0 FINBODH:5.0 FINBODH:3.0 FINBODH:0.0
  SAY @452 /* ~Do not overestimate your usefulness to me, 'dear' sister...nor the extent of my non-existent affection.  Or do you truly think I had forgotten your whispered urgings which had led me down the path of my exile?~ #77404 */
  IF ~~ THEN EXTERN ~FINBODH~ a1
END

IF ~False()~ THEN BEGIN a10 // from: FINBODH:31.0 FINBODH:30.0 FINBODH:28.0 FINBODH:21.0
  SAY @453 /* ~Enough, sister.  We do as Melissan bids, with her servants at our side.  Take delight, if you will, at the revenge we shall now taste.  Let us see, <CHARNAME>, if I can rip that soul out of you once more.  I would so delight in stealing your proud destiny a second time.~ #80485 */
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyLT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(2)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
!DifficultyGT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
DifficultyGT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")~ EXIT
END

IF ~False()~ THEN BEGIN a11 // from: FINBODH:1.0
  SAY @454 /* ~You over-step your bounds, as always.  I did not call you here to rejoice in your venom, Bodhi.  Do you not notice where we are?  Whom we face?~ #77413 */
  IF ~~ THEN EXTERN ~FINBODH~ a2
END

IF ~False()~ THEN BEGIN a12 // from: FINBODH:25.0 FINBODH:23.1
  SAY @455 /* ~You think to betray me, Bodhi?  Foolish girl.  Melissan is the one who holds power here, and you hope to find succor at the feet of this fool <PRO_BOYGIRL>?  Stand by me or die with <PRO_HIMHER>!~ #82677 */
  IF ~~ THEN EXTERN ~FINBODH~ a24
END

IF ~False()~ THEN BEGIN a13 // from: FINBODH:46.0 FINBODH:36.0 FINBODH:33.0 FINBODH:32.0 FINBODH:19.0
  SAY @456 /* ~So my ungrateful sister, you finally stand by my side.  I shall deal with your treachery afterwards.  As for you,  <CHARNAME>, Mellisan has granted me the power to rip the divinity from your body.  The first thing I shall feel in an eon shall be pleasure as I watch your corpse turn to dust.~ #81460 */
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyLT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(2)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
!DifficultyGT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
DifficultyGT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")~ EXIT
END

IF ~False()~ THEN BEGIN a14 // from: FINBODH:20.0
  SAY @457 /* ~I see.  So you leave me, sister, just as *she* left me.~ #81461 */
  IF ~~ THEN GOTO a15
END

IF ~~ THEN BEGIN a15 // from: 14.0
  SAY @458 /* ~It is no matter.  Melissan has given me power enough, and her own servants shall teach you the error of your ways.  I shall strip the divinity from <CHARNAME>'s soul and you, *dear* sister, shall be nothing but dust beside <PRO_HIMHER>.~ #81462 */
  IF ~Difficulty(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2c")~ EXIT
  IF ~DifficultyGT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2d")~ EXIT
  IF ~DifficultyLT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2e")~ EXIT
END

IF ~False()~ THEN BEGIN a16 // from: SAREV25J:27.0
  SAY @459 /* ~Better that than a laughable fool whose most promising idea to dominate the Sword Coast was to 'poison' its supply of iron.  I discarded you as a candidate long before <CHARNAME> soundly defeated you merely for fear of losing all common sense merely by association with your pathetic soul.~ #82799 */
  IF ~~ THEN EXTERN ~SAREV25J~ a28
END

IF ~False()~ THEN BEGIN a17 // from: SAREV25J:28.0
  SAY @460 /* ~Bark if you wish, mongrel.  Whatever dull fangs you might have possessed have long since been pulled.  If a has-been wishes to ride <CHARNAME>'s coat-tails it makes no difference to me...but you'll be disintegrated right along with <PRO_HIMHER>.~ #82800 */
  IF ~~ THEN REPLY @441 /* ~This fight is mine, Irenicus.  While you stewed in Hell, my power has multiplied.~ #77392 */ GOTO a3
  IF ~~ THEN REPLY @442 /* ~You actually think you'll stop me?  It appears your delusions have survived the many beatings at my hand.~ #77394 */ GOTO a4
  IF ~~ THEN REPLY @443 /* ~So you're actually willing to serve as Melissan's little lackey?  I would expect more from the great elven magician.  Ellesime would be sad to see you reduced to this.~ #77396 */ GOTO a5
  IF ~~ THEN REPLY @444 /* ~Don't you ever tire of that bravado?  Haven't you received enough spankings upon my knee?~ #77398 */ GOTO a6
  IF ~~ THEN REPLY @445 /* ~You won't stop me, Irenicus.  Nobody can.  My destiny is at hand.~ #77400 */ GOTO a7
END
