BEGIN ~PPGUY02~

IF ~!InPartySlot(LastTalkedToBy,0)
!Name("Imoen2",LastTalkedToBy)~ THEN a0
  SAY @1
  IF ~~ THEN DO ~ReallyForceSpellRES("baldead",Myself) DestroySelf()~ EXIT
END

IF ~Global("Pool1Active","AR6200",2)~ THEN a1
  SAY @2
  IF ~!Global("Pool2Active","AR6200",3) !Global("Pool3Active","AR6200",3) DifficultyLT(4)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3) ReallyForceSpellRES("pool1a",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool1b")~ JOURNAL @3 EXIT
  IF ~Global("Pool2Active","AR6200",3) Global("Pool3Active","AR6200",3)~ THEN JOURNAL @4 + a4
  IF ~!Global("Pool2Active","AR6200",3) Global("Pool3Active","AR6200",3)~ THEN JOURNAL @4 + a5
  IF ~Global("Pool2Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN JOURNAL @4 + a5
  IF ~!Global("Pool2Active","AR6200",3) !Global("Pool3Active","AR6200",3) DifficultyGT(3)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3) ReallyForceSpellRES("pool1a",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool1b2")~ JOURNAL @3 EXIT
END

IF ~Global("Pool2Active","AR6200",2)~ THEN a2
  SAY @5
  IF ~!Global("Pool1Active","AR6200",3)  !Global("Pool3Active","AR6200",3) DifficultyLT(4)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3) ReallyForceSpellRES("POOL2A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool2b")~ JOURNAL @6 EXIT
  IF ~Global("Pool1Active","AR6200",3) Global("Pool3Active","AR6200",3)~ THEN JOURNAL @6 + a6
  IF ~!Global("Pool1Active","AR6200",3) Global("Pool3Active","AR6200",3)~ THEN JOURNAL @6 + a7
  IF ~Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN JOURNAL @6 + a7
  IF ~!Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3) DifficultyGT(3)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3) ReallyForceSpellRES("POOL2A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool2b2")~ JOURNAL @6 EXIT
END

IF ~Global("Pool3Active","AR6200",2)~ THEN a3
  SAY @7
  IF ~!Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3) DifficultyLT(4)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3) ReallyForceSpellRES("POOL3A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool3b")~ JOURNAL @9 EXIT
  IF ~Global("Pool1Active","AR6200",3) Global("Pool2Active","AR6200",3)~ THEN JOURNAL @9 + a8
  IF ~Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN JOURNAL @9 + a9
  IF ~!Global("Pool1Active","AR6200",3) Global("Pool2Active","AR6200",3)~ THEN JOURNAL @9 + a9
  IF ~!Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3) DifficultyGT(3)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3) ReallyForceSpellRES("POOL3A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool3b2")~ JOURNAL @9 EXIT
END

IF ~~ THEN a4
  SAY @10
  IF ~DifficultyLT(5)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3) SetGlobalTimer("MelissanComes","AR6200",15) ReallyForceSpellRES("pool1a",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool1b")~ EXIT
  IF ~Difficulty(5)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3) SetGlobalTimer("MelissanComes","AR6200",15) ReallyForceSpellRES("pool1a",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool1b2")~ EXIT
END

IF ~~ THEN a5
  SAY @11
  IF ~DifficultyLT(3)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3) ReallyForceSpellRES("pool1a",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool1b")~ EXIT
  IF ~DifficultyGT(2)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3) ReallyForceSpellRES("pool1a",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool1b2")~ EXIT
END

IF ~~ THEN a6
  SAY @10
  IF ~DifficultyLT(5)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3) SetGlobalTimer("MelissanComes","AR6200",15) ReallyForceSpellRES("POOL2A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool2b")~ EXIT
  IF ~Difficulty(5)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3) SetGlobalTimer("MelissanComes","AR6200",15) ReallyForceSpellRES("POOL2A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool2b2")~ EXIT
END

IF ~~ THEN a7
  SAY @11
  IF ~DifficultyLT(3)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3) ReallyForceSpellRES("POOL2A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool2b")~ EXIT
  IF ~DifficultyGT(2)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3) ReallyForceSpellRES("POOL2A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool2b2")~ EXIT
END

IF ~~ THEN a8
  SAY @10
  IF ~DifficultyLT(5)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3) SetGlobalTimer("MelissanComes","AR6200",15) ReallyForceSpellRES("POOL3A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool3b")~ EXIT
  IF ~Difficulty(5)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3) SetGlobalTimer("MelissanComes","AR6200",15) ReallyForceSpellRES("POOL3A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool3b2")~ EXIT
END

IF ~~ THEN a9
  SAY @11
  IF ~DifficultyLT(3)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3) ReallyForceSpellRES("POOL3A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool3b")~ EXIT
  IF ~DifficultyGT(2)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3) ReallyForceSpellRES("POOL3A",LastTalkedToBy) ClearAllActions() StartCutSceneMode() StartCutScene("pool3b2")~ EXIT
END
