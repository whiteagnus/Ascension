BEGIN ~BALTH2~

IF ~False()~ THEN a0 
  SAY @1002
  IF ~~ THEN EXTERN FINMEL01 a25
END

IF ~False()~ THEN a1 
  SAY @1003
  IF ~~ THEN EXTERN FINMEL01 a26
END

IF ~False()~ THEN a2 
  SAY @1004
  IF ~~ THEN EXTERN FINMEL01 a27
END

IF ~Global("FinalFight","AR6200",4)~ THEN a3 
  SAY @1005
  IF ~~ THEN GOTO a4
END

IF ~~ THEN a4 
  SAY @1006
  IF ~~ THEN GOTO a5
END

IF ~~ THEN a5 
  SAY @1007
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",5)~ EXIT
END

IF ~False()~ THEN a6 
  SAY @1008
  IF ~~ THEN EXTERN FINMEL01 a30
END

IF ~False()~ THEN a7 
  SAY @1009
  IF ~~ THEN EXTERN FINSOL01 a36
END

IF ~False()~ THEN a8 
  SAY @1010
  IF ~~ THEN EXTERN FINSOL01 a37
END

IF ~False()~ THEN a9 
  SAY @1011
  IF ~~ THEN EXTERN FINSOL01 a38
END

IF ~False()~ THEN a10 
  SAY @1012
  IF ~~ THEN GOTO a11
END

IF ~~ THEN a11 
  SAY @1013
  IF ~~ THEN GOTO a12
END

IF ~~ THEN a12 
  SAY @1014
  IF ~~ THEN GOTO a13
END

IF ~~ THEN a13 
  SAY @1015
  COPY_TRANS FINSOL01 27
END

IF ~False()~ THEN a14 
  SAY @1016
  COPY_TRANS FINSOL01 32
END

IF ~False()~ THEN a15 
  SAY @1017
  COPY_TRANS FINSOL01 29
END

IF ~Global("MelStillImmortal","AR6200",3)~ THEN a16 
  SAY @1018
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",4)~ EXIT
END
