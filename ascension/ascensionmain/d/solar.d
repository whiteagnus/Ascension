ADD_STATE_TRIGGER SOLAR 59 ~Global("BalthazarFights","GLOBAL",0)~

REPLACE_SAY SOLAR 60 @230

REPLACE_SAY SOLAR 61 @231


APPEND SOLAR

IF ~Global("TalkedToSolar","GLOBAL",5)
Global("BalthazarFights","GLOBAL",1)~ THEN a68
  SAY @239
  ++ @240 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)~ + a69
END

IF ~~ THEN BEGIN a69
  SAY @241
  ++ @242 + a70
  ++ @243 + a70
  ++ @244 + a70
  ++ @245 + a70
END

IF ~~ THEN BEGIN a70
  SAY @246
  IF ~~ THEN GOTO 60
END

END
