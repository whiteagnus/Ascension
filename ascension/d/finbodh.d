BEGIN FINBODH

IF ~Global("BodhiTalks","LOCALS",0) !GlobalGT("BodhiHappyBunny","LOCALS",0)~ THEN a0 
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("BodhiTalks","LOCALS",1)~ EXTERN IRENIC2 a9
END

IF ~False()~ THEN a1 
  SAY @34 
  IF ~~ THEN EXTERN IRENIC2 a11
END

IF ~False()~ THEN a2 
  SAY @35 
  ++ @36  + a4
  ++ @37  + a30
  ++ @38  + a30
  ++ @39  + a31
END

IF ~~ THEN a4 
  SAY @41 
  ++ @42  + a21
  ++ @43  + a21
  + ~CheckStatGT(Player1,15,CHR) Global("BalthazarFights","GLOBAL",0) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ + @44 + a22
  + ~OR(4) !CheckStatGT(Player1,15,CHR) !Global("BalthazarFights","GLOBAL",0) Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11)~ + @44 + a26
  + ~CheckStatGT(Player1,15,CHR) Global("BalthazarFights","GLOBAL",0) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ + @45 + a22
  + ~OR(4) !CheckStatGT(Player1,15,CHR) !Global("BalthazarFights","GLOBAL",0) Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11)~ + @45 + a29
END

IF ~False()~ THEN a19 
  SAY @46 
  IF ~~ THEN EXTERN IRENIC2 a13
END

IF ~False()~ THEN a20 
  SAY @47 
  IF ~~ THEN EXTERN IRENIC2 a14
END

IF ~~ THEN a21 
  SAY @48 
  IF ~~ THEN EXTERN IRENIC2 a10
END

IF ~~ THEN a22 
  SAY @49 
  IF ~InPartyAllowDead("Sarevok") !Dead("Sarevok")~ THEN GOTO a23
  IF ~OR(2) !InPartyAllowDead("Sarevok") Dead("Sarevok")~ THEN GOTO a25
END

IF ~~ THEN a23 
  SAY @50 
  IF ~False()~ THEN GOTO a24
  IF ~True()~ THEN EXTERN IRENIC2 a12
END

IF ~~ THEN a24 
  SAY @51 
  IF ~False()~ THEN EXIT
  IF ~~ THEN GOTO a44
END

IF ~~ THEN a25 
  SAY @52 
  IF ~~ THEN EXTERN IRENIC2 a12
END

IF ~~ THEN a26 
  SAY @53 
  ++ @54 + a27
  ++ @55 + a28
  ++ @56 + a27
END

IF ~~ THEN a27 
  SAY @57
  IF ~Global("BalthazarFights","GLOBAL",0) OR(2) Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11) GlobalGT("WorkingForBodhi","GLOBAL",0)~ THEN GOTO a32
  IF ~Global("BalthazarFights","GLOBAL",0) OR(2) Alignment(Player1,MASK_GOOD) ReputationGT(Player1,11) Global("WorkingForBodhi","GLOBAL",0)~ THEN GOTO a33
  IF ~Global("BalthazarFights","GLOBAL",0) !Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,11)~ THEN GOTO a34
  IF ~Global("BalthazarFights","GLOBAL",1) GlobalGT("WorkingForBodhi","GLOBAL",0)~ THEN GOTO a36
  IF ~Global("BalthazarFights","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",0)~ THEN GOTO a46
END

IF ~~ THEN a28 
  SAY @58 
  IF ~~ THEN EXTERN IRENIC2 a10
END

IF ~~ THEN a29 
  SAY @59 
  ++ @54 + a27
  ++ @55 + a28
  ++ @56 + a27
  ++ @60 + a28
END

IF ~~ THEN a30 
  SAY @61 
  IF ~~ THEN EXTERN IRENIC2 a10
END

IF ~~ THEN a31 
  SAY @62 
  IF ~~ THEN EXTERN IRENIC2 a10
END

IF ~~ THEN a32 
  SAY @63 
  IF ~~ THEN EXTERN IRENIC2 a13
END

IF ~~ THEN a33 
  SAY @64 
  IF ~~ THEN EXTERN IRENIC2 a13
END

IF ~~ THEN a34 
  SAY @65 
  ++ @66  DO ~SetGlobal("BodhiPromised","GLOBAL",1)~ + a35
  ++ @67  DO ~SetGlobal("BodhiPromised","GLOBAL",1)~ + a35
  ++ @68  + a19
  + ~CheckStatGT(Player1,15,WIS)~ + @69 + a20
END

IF ~~ THEN a35 
  SAY @70 
  IF ~~ THEN GOTO a20
END

IF ~~ THEN a36 
  SAY @71 
  IF ~~ THEN EXTERN IRENIC2 a13
END

IF ~False()~ THEN a37 
  SAY @72 
  IF ~~ THEN GOTO a38
END

IF ~~ THEN a38 
  SAY @73 
  ++ @74  DO ~SetGlobal("BodhiHappyBunny","LOCALS",1) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif01")~ EXIT
  ++ @75  + a39
  ++ @76  DO ~SetGlobal("BodhiHappyBunny","LOCALS",2) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif01")~ EXIT
  ++ @77  + a40
END

IF ~~ THEN a39 
  SAY @78 
  IF ~Global("BodhiPromised","GLOBAL",1)~ THEN DO ~SetGlobal("BodhiHappyBunny","LOCALS",3)~ EXTERN FINSOL01 a40
  + ~Global("BodhiPromised","GLOBAL",0)~ + @79  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
  + ~Global("BodhiPromised","GLOBAL",0)~ + @80  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
  + ~Global("BodhiPromised","GLOBAL",0)~ + @81  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
  + ~Global("BodhiPromised","GLOBAL",0)~ + @82  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
END

IF ~~ THEN a40 
  SAY @83 
  IF ~Global("BodhiPromised","GLOBAL",1)~ THEN DO ~SetGlobal("BodhiHappyBunny","LOCALS",3)~ EXTERN FINSOL01 a40
  + ~Global("BodhiPromised","GLOBAL",0)~ + @79  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
  + ~Global("BodhiPromised","GLOBAL",0)~ + @80  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
  + ~Global("BodhiPromised","GLOBAL",0)~ + @81  DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
  + ~Global("BodhiPromised","GLOBAL",0)~ + @82 DO ~SetGlobal("BodhiFights","GLOBAL",0) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif02")~ EXIT
END

IF ~Global("BodhiHappyBunny","LOCALS",1)~ THEN a41 
  SAY @84 
  IF ~~ THEN GOTO a43
END

IF ~Global("BodhiHappyBunny","LOCALS",2)~ THEN a42 
  SAY @85 
  IF ~~ THEN GOTO a43
END

IF ~Global("BodhiHappyBunny","LOCALS",3)~ THEN a43 
  SAY @86 
  IF ~~ THEN DO ~SetGlobal("BodhiFights","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("bodhif03")~ EXIT
END

IF ~~ THEN a44 
  SAY @87 
  ++ @66 DO ~SetGlobal("BodhiPromised","GLOBAL",1)~ + a45
  ++ @67 DO ~SetGlobal("BodhiPromised","GLOBAL",1)~ + a45
  ++ @88 + a19
  + ~CheckStatGT(Player1,15,WIS)~ + @69 + a45
END

IF ~~ THEN a45 
  SAY @89 
  IF ~~ THEN GOTO a20
END

IF ~~ THEN a46 
  SAY @90 
  IF ~~ THEN EXTERN IRENIC2 a13
END
