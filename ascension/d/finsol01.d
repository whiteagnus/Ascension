REPLACE FINSOL01
  IF ~NumTimesTalkedTo(0)~ THEN 0 
    SAY #67810 
    IF ~~ THEN EXTERN FINMEL01 a11
  END

  IF ~~ THEN 1 
    SAY #67812 
    IF ~~ THEN EXTERN FINMEL01 a12
  END

  IF ~~ THEN 2 
    SAY #67814 
    IF ~~ THEN EXTERN FINMEL01 a13
  END

  IF ~NumTimesTalkedToGT(0)~ THEN 4 
    SAY #67817
    IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") Global("BalthazarFights","GLOBAL",0) !Global("BodhiFights","GLOBAL",1)~ THEN GOTO 5
    IF ~InParty("Imoen2") !Dead("Imoen2") Global("BalthazarFights","GLOBAL",0) !Global("BodhiFights","GLOBAL",1)~ THEN GOTO 6
    IF ~OR(2) !InParty("Imoen2") Dead("Imoen2") Global("BalthazarFights","GLOBAL",1) !Global("BodhiFights","GLOBAL",1)~ THEN GOTO a34
    IF ~InParty("Imoen2") !Dead("Imoen2") Global("BalthazarFights","GLOBAL",1) !Global("BodhiFights","GLOBAL",1)~ THEN GOTO a35
    IF ~Global("BodhiFights","GLOBAL",1)~ THEN EXTERN FINBODH a37
  END

  IF ~~ THEN 33 
    SAY #68097
    IF ~GlobalLT("PPEvilChoices","GLOBAL",3) Global("PlayerChoseEssence","GLOBAL",1)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut233i")~ EXIT
    IF ~GlobalGT("PPEvilChoices","GLOBAL",2) Global("PlayerChoseEssence","GLOBAL",1)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut233i2")~ EXIT
    IF ~Global("PlayerChoseEssence","GLOBAL",0)~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("cut233i3")~ EXIT
  END
END

EXTEND_BOTTOM FINSOL01 27 
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN BALTH2 a10
END

EXTEND_BOTTOM FINSOL01 29 30 31
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN BALTH2 a15
END

EXTEND_BOTTOM FINSOL01 32 
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN BALTH2 a14
END

APPEND FINSOL01

IF ~~ THEN BEGIN a34 
  SAY @580 
  IF ~~ THEN EXTERN BALTH2 a7
END

IF ~~ THEN BEGIN a35 
  SAY @581 
  IF ~~ THEN EXTERN BALTH2 a7
END

IF ~False()~ THEN BEGIN a36 
  SAY @582 
  IF ~~ THEN EXTERN BALTH2 a8
END

IF ~False()~ THEN BEGIN a37 
  SAY @583 
  IF ~~ THEN EXTERN BALTH2 a9
END

IF ~False()~ THEN BEGIN a38 
  SAY @584 
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN GOTO a39
  IF ~OR(2) !InParty("Imoen2") Dead("Imoen2")~ THEN GOTO 5
END

IF ~~ THEN BEGIN a39 
  SAY @585
  IF ~~ THEN EXTERN IMOEN25J 14
END

IF ~False()~ THEN BEGIN a40
  SAY @586
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("bodhif01")~ EXIT
END

END
