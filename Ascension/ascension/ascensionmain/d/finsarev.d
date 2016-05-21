BEGIN FINSAREV

IF ~True()~ THEN a0
  SAY @26
  IF ~~ THEN DO ~SetGlobal("SarevokSummoned","AR6200",1)~ EXTERN FINMEL01 a41
END

IF ~False()~ THEN a1
  SAY @27
  ++ @28 + a2
  ++ @29 + a2
  ++ @30 + a2
  ++ @31 + a2
END

IF ~~ THEN a2
  SAY @32
  IF ~~ THEN EXTERN FINMEL01 a38
END
