APPEND ~SAREV25J~

IF ~False()~ THEN a15
  SAY @262
  IF ~~ THEN EXTERN FINMEL01 a35
END

IF ~False()~ THEN a16
  SAY @263
  IF ~~ THEN EXTERN FINMEL01 a36
END

IF ~False()~ THEN a17
  SAY @264
  IF ~~ THEN EXTERN FINMEL01 a37
END

IF ~False()~ THEN a18
  SAY @265
  IF ~~ THEN EXTERN FINMEL01 a40
END

IF ~False()~ THEN a19
  SAY @266
  IF ~False()~ THEN EXIT
  ++ @267 + a21
  ++ @268 + a22
  ++ @269 + a23
END

IF ~False()~ THEN a20
  SAY @270
  IF ~~ THEN EXTERN FINMEL01 a40
END

IF ~~ THEN a21
  SAY @271
  IF ~~ THEN EXTERN FINMEL01 a38
END

IF ~~ THEN a22
  SAY @272
  IF ~~ THEN EXTERN FINMEL01 a38
END

IF ~~ THEN a23
  SAY @273
  IF ~~ THEN EXTERN FINMEL01 a38
END

IF ~Global("MelStillImmortal","AR6200",2)
!Global("SarevokHasSword","LOCALS",1)~ THEN a24
  SAY @274
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",3)~ EXIT
END

IF ~Global("SarevokHasSword","LOCALS",1)~ THEN a25
  SAY @275
  IF ~~ THEN DO ~SetGlobal("SarevokHasSword","LOCALS",2)~ + a26
END

IF ~~ THEN a26
  SAY @276
  IF ~~ THEN DO ~DestroyItem("sw2h16") GiveItemCreate("finsarev",Myself,0,0,0)~ EXIT
END

IF ~False()~ THEN a27
  SAY @277
  IF ~~ THEN EXTERN IRENIC2 a16
END

IF ~False()~ THEN a28
  SAY @278
  IF ~~ THEN EXTERN IRENIC2 a17
END

END
