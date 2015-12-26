///////////////////////////////////////////////////////////////////////
// Ascension : FINMEL01 
///////////////////////////////////////////////////////////////////////
// This completely overwrites the finmel01 dialogue. :-(
// The original only had 11 states. 
///////////////////////////////////////////////////////////////////////

BEGIN ~FINMEL01~

IF ~Global("FinalFight","AR6200",0)~ THEN BEGIN a0 // from:
  SAY #67790 
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",1)~ GOTO a1
END

IF ~~ THEN BEGIN a1 // from: 7.0 5.0 4.0 0.0
  SAY #67791 
  IF ~~ THEN REPLY #67792 GOTO a2
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN REPLY #67793 GOTO a3
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @591 /* ~You don't have all the essence of Bhaal...not by far.  And I rule here, as well...you know that.~ #74266 */ GOTO a15
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN REPLY @592 /* ~You should have remained true to Bhaal, Melissan.  Only he could have saved you now.~ #74267 */ GOTO a16
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN REPLY #67796 GOTO a16
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN REPLY @594 /* ~Yeah, well, I suppose everyone has a dream.  Psycho.~ #74269 */ GOTO a16
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @592 /* ~You should have remained true to Bhaal, Melissan.  Only he could have saved you now.~ #74267 */ GOTO a43
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY #67796 GOTO a43
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @594 /* ~Yeah, well, I suppose everyone has a dream.  Psycho.~ #74269 */ GOTO a43
END

IF ~~ THEN BEGIN a2 // from: 1.0
  SAY #67798 
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN GOTO a14
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN ~BALTH2~ a0
END

IF ~~ THEN BEGIN a3 // from: 1.1
  SAY #67799
  IF ~~ THEN DO ~Enemy()~ GOTO a14
END

IF ~False()~ THEN BEGIN a6 // from: IMOEN25P:4.3 IMOEN25P:4.2 IMOEN25P:4.1 IMOEN25P:4.0
  SAY @597 /* ~Bah!  I should not be wasting time on you.  I still have to absorb the Bhaalspawn essences...and there is more than enough power in this plane to keep you busy.  Irenicus...Imoen...show <CHARNAME> the power <PRO_HESHE> dares to oppose while I take what is mine!~ [FINMEL25] #74301 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo4")~ EXIT
END

IF ~Global("FinalFight","AR6200",6)
Global("TheFiveAreHere","AR6200",0)~ THEN BEGIN a8 // from:
  SAY #67804 
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel3a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(EASY)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel3b")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyLT(NORMAL)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel3c")~ EXIT
END

IF ~Global("FinalFight","AR6200",8)
Global("ShesInIt","LOCALS",0)~ THEN BEGIN a10 // from:
  SAY #67806 
  IF ~~ THEN DO ~SetGlobal("ShesInIt","LOCALS",1)
ActionOverride("cutspy",DestroySelf())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN a11 // from: FINSOL01:0.0
  SAY #67811 
  IF ~~ THEN EXTERN ~FINSOL01~ 1
END

IF ~~ THEN BEGIN a12 // from: FINSOL01:1.0
  SAY #67813 
  IF ~~ THEN EXTERN ~FINSOL01~ 2
END

IF ~~ THEN BEGIN a13 // from: FINSOL01:2.0
  SAY #67815
  IF ~~ THEN EXTERN ~FINSOL01~ 3
END

IF ~~ THEN BEGIN a14 // from: 27.0 16.0 3.0 2.0
  SAY @604 /* ~You do not believe in my power, I can see that much.  You have fought terrible foes in your past and have always managed to succeed.  Why...you leave a trail of felled opponents littered about even here in the Abyss.  Such as this one I found, discarded...~ #80556 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel1")~ EXIT
END

IF ~~ THEN BEGIN a15 // from: 1.2
  SAY @605 /* ~True.  More insightful than I would have expected from you, <CHARNAME>.  And far more clever for you to have denied me Balthazar's essence...although, to tell the truth, I was secretly hoping for him to have defeated you.  Unlikely as that was, considering the pathetic monk could barely see the forest for the trees.~ #74275 */
  IF ~~ THEN EXTERN ~BALTH2~ a1
END

IF ~~ THEN BEGIN a16 // from: 1.5 1.4 1.3
  SAY @606 /* ~I am disappointed in you, <CHARNAME>.  So much bluster, so much force.  So much power and wisdom locked into such a fragile form.  I suppose you actually believe you have a hope in opposing me, in seizing the Throne for yourself.  Such delusions.~ #74276 */
  IF ~~ THEN GOTO a14
END

IF ~Global("FinalFight","AR6200",2)~ THEN BEGIN a17 // from:
  SAY @607 /* ~Irenicus, I believe you called him.  So easily culled as my own, since you abandoned him here recently...and such a valuable source of information on you, <CHARNAME>.  After all...I believe you did share a soul, once, no?  Say hello to the dear <PRO_MANWOMAN>, Irenicus.~ #74277 */
  IF ~~ THEN EXTERN ~IRENIC2~ a0
END

IF ~False()~ THEN BEGIN a18 // from: IRENIC2:2.0 IRENIC2:0.3 IRENIC2:0.2 IRENIC2:0.1 IRENIC2:0.0
  SAY @608 /* ~Of course, if you truly desire a demonstration of my influence over the essence, that can be provided as well.~ #74290 */
  IF ~InPartyAllowDead("Imoen2")
!StateCheck("Imoen2",4032)~ THEN GOTO a19
  IF ~InPartyAllowDead("Imoen2")
StateCheck("Imoen2",4032)~ THEN GOTO a20
  IF ~!InPartyAllowDead("Imoen2")
!StateCheck("Imoen2",4032)~ THEN GOTO a21
  IF ~!InPartyAllowDead("Imoen2")
StateCheck("Imoen2",4032)~ THEN GOTO a22
END

IF ~~ THEN BEGIN a19 // from: 18.0
  SAY @609 /* ~Come, Imoen.  I command the essence within you.  You are not ready to be here...and yet here you are.  Let's see just how much of my power is contained in your young little soul, hmm?~ #74291 */
  IF ~~ THEN EXTERN ~IMOEN25J~ a34
END

IF ~~ THEN BEGIN a20 // from: 18.1
  SAY @610 /* ~It seems you've misplaced your darling little Imoen, haven't you?  But her essence is easy enough to command.  Let's see what she has to say, shall we?~ #74292 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo1")~ EXIT
END

IF ~~ THEN BEGIN a21 // from: 18.2
  SAY @610 /* ~It seems you've misplaced your darling little Imoen, haven't you?  But her essence is easy enough to command.  Let's see what she has to say, shall we?~ #74293 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo2")~ EXIT
END

IF ~~ THEN BEGIN a22 // from: 18.3
  SAY @610 /* ~It seems you've misplaced your darling little Imoen, haven't you?  But her essence is easy enough to command.  Let's see what she has to say, shall we?~ #74294 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo2")~ EXIT
END

IF ~False()~ THEN BEGIN a23 // from: IMOEN25J:34.0 IMOEN25P:6.0
  SAY @611 /* ~You don't have to go anywhere, little one.  I'm not calling you, after all...I'm merely coaxing forth your essence.~ #74295 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo3")~ EXIT
END

IF ~False()~ THEN BEGIN a24 // from: IMOEN25P:5.0
  SAY @612 /* ~There, there, Imoen.  I command the essence within you.  Let's see just how much of my power you have within you, yes?~ #74296 */
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ a34
  IF ~!InParty("Imoen2")~ THEN EXTERN ~IMOEN25P~ a6
END

IF ~False()~ THEN BEGIN a25 // from: BALTH2:0.0
  SAY @613 /* ~Ahhhh, Balthazar is here as well.  How clever to deny me his essence, <CHARNAME>.  Still blinded by your devotion to destiny, Balthazar?  Or have you abandoned your faith so quickly?~ #74297 */
  IF ~~ THEN EXTERN ~BALTH2~ a1
END

IF ~False()~ THEN BEGIN a26 // from: BALTH2:1.0
  SAY @614 /* ~Oh no?  Perhaps you do not understand.  This...this place, here, is the Source.  This is where the essence of all of Bhaal's children returns when they die, hidden away.  Did you never wonder, dear Balthazar, what killing all the other spawn of Bhaal was *for*?~ #80481 */
  IF ~~ THEN EXTERN ~BALTH2~ a2
END

IF ~False()~ THEN BEGIN a27 // from: BALTH2:2.0
  SAY @615 /* ~And well you should not have, though you aided me regardless.  Bhaal may, indeed, be...somewhere.  But not here.  Here I have locked these essences away and drank heartily of their power.  The Source, the Throne, all are mine...and god-hood is but one simple step away.~ #74299 */
  IF ~~ THEN GOTO a14
END

IF ~Global("FinalFight","AR6200",6)
Global("TheFiveAreHere","AR6200",1)~ THEN BEGIN a28 // from:
  SAY @616 /* ~I was going to resurrect them anyway, to serve as my conquering avatars.  And I prefer them far better this way...completely servile, obeying every order without question.~ #74355 */
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(EASY)~ THEN GOTO a29
  IF ~OR(2)
Global("BalthazarFights","GLOBAL",0)
DifficultyLT(NORMAL)~ THEN GOTO a31
END

IF ~~ THEN BEGIN a29 // from: 28.0
  SAY @617 /* ~And since you recruited Balthazar to your side, I've decided on the delicious irony of re-creating poor, pathetic Gromnir as well.  It delights me to no end to know that he was right about me all along...and yet it made no difference.  You murdered him still, as I knew you would.~ #74357 */
  IF ~Global("BalthazarFights","GLOBAL",1)
!StateCheck("balth2",4032)
!StateCheck("balth2",STATE_SLEEPING)
!StateCheck("balth2",STATE_STUNNED)~ THEN EXTERN ~BALTH2~ a6
  IF ~Global("BalthazarFights","GLOBAL",1)
OR(3)
StateCheck("balth2",4032)
StateCheck("balth2",STATE_SLEEPING)
StateCheck("balth2",STATE_STUNNED)~ THEN REPLY @618 /* ~You should have kept your energies to yourself, Melissan.  Spending them on re-creating the Five will cost you...and cost you dearly.~ #74358 */ GOTO a30
END

IF ~~ THEN BEGIN a30 // from: BALTH2:6.0 31.1 29.1
  SAY @619 /* ~Perhaps.  But already I am immortal, which means I cannot be killed even by you.  And there is still more of your father's essence for me to take.~ #80486 */
  IF ~StateCheck("sarevok",4032)~ THEN GOTO a32
  IF ~InPartyAllowDead("sarevok")
!StateCheck("sarevok",4032)~ THEN GOTO a33
  IF ~!InPartyAllowDead("sarevok")
!StateCheck("sarevok",4032)
OR(2)
DifficultyGT(2)
Global("BalthazarFights","GLOBAL",1)~ THEN GOTO a34
  IF ~!InPartyAllowDead("sarevok")
!StateCheck("sarevok",4032)
DifficultyLT(3)
OR(2)
Global("BalthazarFights","GLOBAL",0)
Difficulty(1)~ THEN GOTO a32
END

IF ~~ THEN BEGIN a31 // from: 28.1
  SAY @620 /* ~They provided a considerable challenge for you individually, <CHARNAME>.  I wonder how you will fare against them all?~ #74360 */
  IF ~Global("BalthazarFights","GLOBAL",1)
!StateCheck("balth2",4032)
!StateCheck("balth2",STATE_SLEEPING)
!StateCheck("balth2",STATE_STUNNED)~ THEN EXTERN ~BALTH2~ a6
  IF ~OR(4)
StateCheck("balth2",4032)
StateCheck("balth2",STATE_SLEEPING)
StateCheck("balth2",STATE_STUNNED)
Global("BalthazarFights","GLOBAL",0)
~ THEN REPLY @618 /* ~You should have kept your energies to yourself, Melissan.  Spending them on re-creating the Five will cost you...and cost you dearly.~ #74361 */ GOTO a30
END

IF ~~ THEN BEGIN a32 // from: 30.3 30.0
  SAY @621 /* ~So come, <CHARNAME>...kill your siblings once again.  If you can.~ #80487 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4")~ EXIT
END

IF ~~ THEN BEGIN a33 // from: 30.1
  SAY @622 /* ~There is enough essence, in fact, even for you...Sarevok.~ #80488 */
  IF ~~ THEN EXTERN ~SAREV25J~ a15
END

IF ~~ THEN BEGIN a34 // from: 30.2
  SAY @623 /* ~But...we don't have all your siblings accounted for just quite yet, do we?  Haven't you forgotten someone?~ #80489 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel5")~ EXIT
END

IF ~False()~ THEN BEGIN a35 // from: SAREV25J:15.0
  SAY @624 /* ~Oh, but we do, Sarevok.  I made you an offer once before, and that offer still stands.  Join me now, abandon this pathetic whelp, and take your place at my side.~ #80494 */
  IF ~Global("SarevokOath","GLOBAL",1)~ THEN EXTERN ~SAREV25J~ a16
  IF ~!Global("SarevokOath","GLOBAL",1)~ THEN EXTERN ~SAREV25J~ a17
END

IF ~False()~ THEN BEGIN a36 // from: SAREV25J:16.0
  SAY @625 /* ~The geas the fool placed on your heart is nothing.  I could easily remove it.  In fact, I do so now.  There...act as you will.~ #80495 */
  IF ~~ THEN EXTERN ~SAREV25J~ a17
END

IF ~False()~ THEN BEGIN a37 // from: SAREV25J:17.0
  SAY @626 /* ~Perhaps.  But you are a great warrior...and could be a fine general to lead my earthly armies.  Power, riches, respect...all you desire.  Including the return of the Bhaalspawn essence you lost.  Come, Sarevok...be the demon you once were.  Serve me.~ #80498 */
  IF ~!Alignment("sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ a20
  IF ~Alignment("sarevok",MASK_EVIL)
DifficultyLT(3)~ THEN EXTERN ~SAREV25J~ a18
  IF ~Alignment("sarevok",MASK_EVIL)
!DifficultyLT(3)
OR(2)
!Alignment(Player1,MASK_EVIL)
!ReputationLT(Player1,10)~ THEN EXTERN ~SAREV25J~ a19
  IF ~Alignment("sarevok",MASK_EVIL)
!DifficultyLT(3)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)~ THEN EXTERN ~SAREV25J~ a18
END

IF ~False()~ THEN BEGIN a38 // from: SAREV25J:23.0 SAREV25J:22.0 SAREV25J:21.0 FINSAREV:2.0
  SAY @627 /* ~Then fight for me you shall!  And your first victim will be the <PRO_BROTHERSISTER> upon whom vengeance is so richly deserved!~ #80502 */
  IF ~~ THEN DO ~SetGlobal("SarevokFights","GLOBAL",1)~ GOTO a39
END

IF ~~ THEN BEGIN a39 // from: 38.0
  SAY @621 /* ~So come, <CHARNAME>...kill your siblings once again.  If you can.~ #80503 */
  IF ~!Global("SarevokSummoned","AR6200",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4a")~ EXIT
  IF ~Global("SarevokSummoned","AR6200",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4b")~ EXIT
END

IF ~False()~ THEN BEGIN a40 // from: SAREV25J:20.0 SAREV25J:18.0
  SAY @628 /* ~Then die with your fool <PRO_BROTHERSISTER>, if that is your wish!  The Five shall be the end of you both!~ #80513 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4")~ EXIT
END

IF ~False()~ THEN BEGIN a41 // from: FINSAREV:0.0
  SAY @629 /* ~I brought you here, Sarevok.  To give you a second chance.  Join me and fight against <CHARNAME> and I will return the power you lost, the power you crave so much.  I will make you the man you once were.~ #80515 */
  IF ~~ THEN EXTERN ~FINSAREV~ a1
END

IF ~Global("allfive","GLOBAL",1)
Global("MelissanIsMortal","LOCALS",1)~ THEN BEGIN a42 // from:
  SAY @630 /* ~What--?  Mortal!  No, it can't be!  I am nearly mortal once again!!  I have lost too much power!!  You shall pay for this!!~ #80545 */
  IF ~~ THEN DO ~SetGlobal("MelissanIsMortal","LOCALS",2)
SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN BEGIN a43 // from: 1.8 1.7 1.6
  SAY @606 /* ~I am disappointed in you, <CHARNAME>.  So much bluster, so much force.  So much power and wisdom locked into such a fragile form.  I suppose you actually believe you have a hope in opposing me, in seizing the Throne for yourself.  Such delusions.~ #74276 */
  IF ~~ THEN EXTERN ~BALTH2~ a0
END
