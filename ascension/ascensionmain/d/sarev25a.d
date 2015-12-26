///////////////////////////////////////////////////////////////////////
// Ascension: SAREV25A
///////////////////////////////////////////////////////////////////////
// (1) Weimeric fix: add an extra transition to state 1 to ensure that
// people always have something to say here. Despite appearances, 
// sometimes you are not given any options in that state. 
///////////////////////////////////////////////////////////////////////

EXTEND_TOP SAREV25A 1
  IF ~~ THEN REPLY #22962 
    DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)~ GOTO 3
END
