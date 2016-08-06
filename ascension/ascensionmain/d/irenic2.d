BEGIN ~IRENIC2~

IF ~False()~ THEN a0
  SAY @435
  ++ @436 EXTERN FINMEL01 a18
  ++ @437 EXTERN FINMEL01 a18
  ++ @438 EXTERN FINMEL01 a18
  ++ @439 EXTERN FINMEL01 a18
END

IF ~Global("FinalFight","AR6200",2)~ THEN a1
  SAY @440
  IF ~InParty("Sarevok") !StateCheck("Sarevok",4032) !StateCheck("Sarevok",STATE_SLEEPING) !StateCheck("Sarevok",STATE_STUNNED) !StateCheck("Sarevok",STATE_SILENCED)~ THEN EXTERN SAREV25J a27
  + ~OR(5) !InParty("Sarevok") StateCheck("Sarevok",4032) StateCheck("Sarevok",STATE_SLEEPING) StateCheck("Sarevok",STATE_STUNNED) StateCheck("Sarevok",STATE_SILENCED)~ + @441 + a3
  + ~OR(5) !InParty("Sarevok") StateCheck("Sarevok",4032) StateCheck("Sarevok",STATE_SLEEPING) StateCheck("Sarevok",STATE_STUNNED) StateCheck("Sarevok",STATE_SILENCED)~ + @442 + a4
  + ~OR(5) !InParty("Sarevok") StateCheck("Sarevok",4032) StateCheck("Sarevok",STATE_SLEEPING) StateCheck("Sarevok",STATE_STUNNED) StateCheck("Sarevok",STATE_SILENCED)~ + @443 + a5
  + ~OR(5) !InParty("Sarevok") StateCheck("Sarevok",4032) StateCheck("Sarevok",STATE_SLEEPING) StateCheck("Sarevok",STATE_STUNNED) StateCheck("Sarevok",STATE_SILENCED)~ + @444 + a6
  + ~OR(5) !InParty("Sarevok") StateCheck("Sarevok",4032) StateCheck("Sarevok",STATE_SLEEPING) StateCheck("Sarevok",STATE_STUNNED) StateCheck("Sarevok",STATE_SILENCED)~ + @445 + a7
END

IF ~~ THEN a3
  SAY @446
  IF ~~ THEN GOTO a8
END

IF ~~ THEN a4
  SAY @447
  IF ~~ THEN GOTO a8
END

IF ~~ THEN a5
  SAY @448
  IF ~~ THEN GOTO a8
END

IF ~~ THEN a6
  SAY @449
  IF ~~ THEN GOTO a8
END

IF ~~ THEN a7
  SAY @450
  IF ~~ THEN GOTO a8
END

IF ~~ THEN a8
  SAY @451
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("finiren1")~ EXIT
END

IF ~False()~ THEN a9
  SAY @452
  IF ~~ THEN EXTERN FINBODH a1
END

IF ~False()~ THEN a10
  SAY @453
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyLT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyGT(2)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2b")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0) !DifficultyGT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0) DifficultyGT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2b")~ EXIT
END

IF ~False()~ THEN a11
  SAY @454
  IF ~~ THEN EXTERN FINBODH a2
END

IF ~False()~ THEN a12
  SAY @455
  IF ~~ THEN EXTERN FINBODH a24
END

IF ~False()~ THEN a13
  SAY @456
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyLT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1) DifficultyGT(2)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2b")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0) !DifficultyGT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2a")~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0) DifficultyGT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2b")~ EXIT
END

IF ~False()~ THEN a14
  SAY @457
  IF ~~ THEN GOTO a15
END

IF ~~ THEN a15
  SAY @458
  IF ~Difficulty(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2c")~ EXIT
  IF ~DifficultyGT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2d")~ EXIT
  IF ~DifficultyLT(3)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("irenic2e")~ EXIT
END

IF ~False()~ THEN a16
  SAY @459
  IF ~~ THEN EXTERN SAREV25J a28
END

IF ~False()~ THEN a17
  SAY @460
  ++ @441 + a3
  ++ @442 + a4
  ++ @443 + a5
  ++ @444 + a6
  ++ @445 + a7
END
