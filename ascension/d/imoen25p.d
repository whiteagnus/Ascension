ADD_STATE_TRIGGER IMOEN25P 0 ~!Global("ImoenBackToHuman","GLOBAL",1) !Global("ImoenHurt","GLOBAL",1) !Global("ImoenResurrected","GLOBAL",1) !Global("ImoenResurrected2","GLOBAL",1)~ 2 

APPEND IMOEN25P

IF ~Global("ImoenHurt","GLOBAL",1)~ THEN a4
  SAY @470
  ++ @471 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 a6
  ++ @472 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 a6
  ++ @473 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 a6
  ++ @474 DO ~SetGlobal("ImoenHate","GLOBAL",1) SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN FINMEL01 a6
END

IF ~Global("ImoenHurt","GLOBAL",0) Global("ImoenBackToHuman","GLOBAL",0) OR(2) Global("ImoenResurrected","GLOBAL",1) Global("ImoenResurrected2","GLOBAL",1)~ THEN a5
  SAY @475
  IF ~~ THEN EXTERN FINMEL01 a24
END

IF ~False()~ THEN a6
  SAY @476
  IF ~~ THEN EXTERN FINMEL01 a23
END

IF ~Global("ImoenBackToHuman","GLOBAL",1)~ THEN a7
  SAY @477
  IF ~Global("ImoenHate","GLOBAL",1)~ THEN DO ~SetGlobal("ImoenBackToHuman","GLOBAL",2)~ GOTO a8
  IF ~Global("ImoenResurrected2","GLOBAL",1) Global("ImoenHate","GLOBAL",0)~ THEN DO ~SetGlobal("ImoenBackToHuman","GLOBAL",2)~ GOTO a10
  IF ~Global("ImoenResurrected2","GLOBAL",0) Global("ImoenHate","GLOBAL",0)~ THEN DO ~SetGlobal("ImoenBackToHuman","GLOBAL",2)~ GOTO a15
END

IF ~~ THEN a8
  SAY @478
  + ~CheckStatGT(Player1,15,CHR)~ + @479 + a9
  + ~!CheckStatGT(Player1,15,CHR)~ + @479 + a13
  ++ @480 + a14
  + ~OR(2) ActuallyInCombat() See([ENEMY])~ + @481 + a16
END

IF ~~ THEN a9
  SAY @482
  IF ~Global("ImoenResurrected2","GLOBAL",1)~ THEN GOTO a10
  IF ~!Global("ImoenResurrected2","GLOBAL",1)~ THEN GOTO a11
END

IF ~~ THEN a10
  SAY @483
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN a11
  SAY @484
  ++ @486 DO ~SetGlobal("ImoenResurrected","GLOBAL",0) JoinParty()~ JOURNAL @485 EXIT
  ++ @487 + a12
END

IF ~~ THEN a12
  SAY @488
  IF ~~ THEN DO ~SetGlobal("ImoenEpilogueAnyway","GLOBAL",1) DropInventory() ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN a13
  SAY @489
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN a14
  SAY @490
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN a15
  SAY @491
  IF ~!ActuallyInCombat() !See([ENEMY])~ THEN GOTO a11
  IF ~OR(2) ActuallyInCombat() See([ENEMY])~ THEN GOTO a17
END

IF ~~ THEN a16
  SAY @492
  ++ @486 JOURNAL @485 EXIT
  ++ @487 + a12
END

IF ~~ THEN a17
  SAY @493
  ++ @486 + a18
  ++ @494 + a18
  ++ @487 + a12
END

IF ~~ THEN a18
  SAY @495
  IF ~~ THEN DO ~SetGlobal("ImoenResurrected","GLOBAL",0) JoinParty()~ JOURNAL @485 EXIT
END

END
