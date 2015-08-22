BEGIN ~FINMEL01~

IF ~Global("FinalFight","AR6200",0)~ THEN a0 
  SAY #67790 
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",1)~ GOTO a1
END

IF ~~ THEN a1 
  SAY #67791 
  ++ #67792 + a2
  + ~Global("BalthazarFights","GLOBAL",0)~ + #67793 + a3
  + ~Global("BalthazarFights","GLOBAL",1)~ + @591  + a15
  + ~Global("BalthazarFights","GLOBAL",0)~ + @592  + a16
  + ~Global("BalthazarFights","GLOBAL",0)~ + #67796 + a16
  + ~Global("BalthazarFights","GLOBAL",0)~ + @594  + a16
  + ~Global("BalthazarFights","GLOBAL",1)~ + @592  + a43
  + ~Global("BalthazarFights","GLOBAL",1)~ + #67796 + a43
  + ~Global("BalthazarFights","GLOBAL",1)~ + @594  + a43
END

IF ~~ THEN a2 
  SAY #67798 
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN GOTO a14
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN BALTH2 a0
END

IF ~~ THEN a3 
  SAY #67799
  IF ~~ THEN DO ~Enemy()~ GOTO a14
END

IF ~False()~ THEN a6 
  SAY @597 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo4")~ EXIT
END

IF ~Global("FinalFight","AR6200",6) Global("TheFiveAreHere","AR6200",0)~ THEN a8 
  SAY #67804 
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel3a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyGT(EASY)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel3b")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyLT(NORMAL)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel3c")~ EXIT
END

IF ~Global("FinalFight","AR6200",8) Global("ShesInIt","LOCALS",0)~ THEN a10 
  SAY #67806 
  IF ~~ THEN DO ~SetGlobal("ShesInIt","LOCALS",1) ActionOverride("cutspy",DestroySelf()) Enemy()~ EXIT
END

IF ~~ THEN a11 
  SAY #67811 
  IF ~~ THEN EXTERN FINSOL01 1
END

IF ~~ THEN a12 
  SAY #67813 
  IF ~~ THEN EXTERN FINSOL01 2
END

IF ~~ THEN a13 
  SAY #67815
  IF ~~ THEN EXTERN FINSOL01 3
END

IF ~~ THEN a14 
  SAY @604 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel1")~ EXIT
END

IF ~~ THEN a15 
  SAY @605 
  IF ~~ THEN EXTERN BALTH2 a1
END

IF ~~ THEN a16 
  SAY @606 
  IF ~~ THEN GOTO a14
END

IF ~Global("FinalFight","AR6200",2)~ THEN a17 
  SAY @607 
  IF ~~ THEN EXTERN IRENIC2 a0
END

IF ~False()~ THEN a18 
  SAY @608 
  IF ~InPartyAllowDead("Imoen2") !Dead("Imoen2")~ THEN GOTO a19
  IF ~InPartyAllowDead("Imoen2") Dead("Imoen2")~ THEN GOTO a20
  IF ~!InPartyAllowDead("Imoen2") !Dead("Imoen2")~ THEN GOTO a21
  IF ~!InPartyAllowDead("Imoen2") Dead("Imoen2")~ THEN GOTO a22
END

IF ~~ THEN a19 
  SAY @609 
  IF ~~ THEN EXTERN IMOEN25J a34
END

IF ~~ THEN a20 
  SAY @610 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo1")~ EXIT
END

IF ~~ THEN a21 
  SAY @610 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo2")~ EXIT
END

IF ~~ THEN a22 
  SAY @610 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo2")~ EXIT
END

IF ~False()~ THEN a23 
  SAY @611 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("resimo3")~ EXIT
END

IF ~False()~ THEN a24 
  SAY @612 
  IF ~InParty("Imoen2")~ THEN EXTERN IMOEN25J a34
  IF ~!InParty("Imoen2")~ THEN EXTERN IMOEN25P a6
END

IF ~False()~ THEN a25 
  SAY @613 
  IF ~~ THEN EXTERN BALTH2 a1
END

IF ~False()~ THEN a26 
  SAY @614 
  IF ~~ THEN EXTERN BALTH2 a2
END

IF ~False()~ THEN a27 
  SAY @615 
  IF ~~ THEN GOTO a14
END

IF ~Global("FinalFight","AR6200",6) Global("TheFiveAreHere","AR6200",1)~ THEN a28 
  SAY @616 
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyGT(EASY)~ THEN GOTO a29
  IF ~OR(2) Global("BalthazarFights","GLOBAL",0) DifficultyLT(NORMAL)~ THEN GOTO a31
END

IF ~~ THEN a29 
  SAY @617 
  IF ~Global("BalthazarFights","GLOBAL",1) !Dead("balth2") !StateCheck("balth2",STATE_SLEEPING) !StateCheck("balth2",STATE_STUNNED)~ THEN EXTERN BALTH2 a6
  + ~Global("BalthazarFights","GLOBAL",1) OR(3) Dead("balth2") StateCheck("balth2",STATE_SLEEPING) StateCheck("balth2",STATE_STUNNED)~ + @618 + a30
END

IF ~~ THEN a30 
  SAY @619 
  IF ~Dead("sarevok")~ THEN GOTO a32
  IF ~InPartyAllowDead("sarevok") !Dead("sarevok")~ THEN GOTO a33
  IF ~!InPartyAllowDead("sarevok") !Dead("sarevok") OR(2) DifficultyGT(2) Global("BalthazarFights","GLOBAL",1)~ THEN GOTO a34
  IF ~!InPartyAllowDead("sarevok") !Dead("sarevok") DifficultyLT(3) OR(2) Global("BalthazarFights","GLOBAL",0) Difficulty(1)~ THEN GOTO a32
END

IF ~~ THEN a31 
  SAY @620 
  IF ~Global("BalthazarFights","GLOBAL",1) !Dead("balth2") !StateCheck("balth2",STATE_SLEEPING) !StateCheck("balth2",STATE_STUNNED)~ THEN EXTERN BALTH2 a6
  + ~OR(4) Dead("balth2") StateCheck("balth2",STATE_SLEEPING) StateCheck("balth2",STATE_STUNNED) Global("BalthazarFights","GLOBAL",0)~ + @618 + a30
END

IF ~~ THEN a32 
  SAY @621 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel4")~ EXIT
END

IF ~~ THEN a33 
  SAY @622 
  IF ~~ THEN EXTERN SAREV25J a15
END

IF ~~ THEN a34 
  SAY @623 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel5")~ EXIT
END

IF ~False()~ THEN a35 
  SAY @624 
  IF ~Global("SarevokOath","GLOBAL",1)~ THEN EXTERN SAREV25J a16
  IF ~!Global("SarevokOath","GLOBAL",1)~ THEN EXTERN SAREV25J a17
END

IF ~False()~ THEN a36 
  SAY @625 
  IF ~~ THEN EXTERN SAREV25J a17
END

IF ~False()~ THEN a37 
  SAY @626 
  IF ~!Alignment("sarevok",MASK_EVIL)~ THEN EXTERN SAREV25J a20
  IF ~Alignment("sarevok",MASK_EVIL) DifficultyLT(3)~ THEN EXTERN SAREV25J a18
  IF ~Alignment("sarevok",MASK_EVIL) !DifficultyLT(3) OR(2) !Alignment(Player1,MASK_EVIL) !ReputationLT(Player1,10)~ THEN EXTERN SAREV25J a19
  IF ~Alignment("sarevok",MASK_EVIL) !DifficultyLT(3) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,10)~ THEN EXTERN SAREV25J a18
END

IF ~False()~ THEN a38 
  SAY @627 
  IF ~~ THEN DO ~SetGlobal("SarevokFights","GLOBAL",1)~ GOTO a39
END

IF ~~ THEN a39 
  SAY @621 
  IF ~!Global("SarevokSummoned","AR6200",1)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel4a")~ EXIT
  IF ~Global("SarevokSummoned","AR6200",1)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel4b")~ EXIT
END

IF ~False()~ THEN a40 
  SAY @628 
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finmel4")~ EXIT
END

IF ~False()~ THEN a41 
  SAY @629 
  IF ~~ THEN EXTERN FINSAREV a1
END

IF ~Global("allfive","GLOBAL",1) Global("MelissanIsMortal","LOCALS",1)~ THEN a42 
  SAY @630 
  IF ~~ THEN DO ~SetGlobal("MelissanIsMortal","LOCALS",2) SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN a43 
  SAY @606 
  IF ~~ THEN EXTERN BALTH2 a0
END
