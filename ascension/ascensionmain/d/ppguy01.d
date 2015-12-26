ADD_STATE_TRIGGER PPGUY01 0 ~Global("BalthazarFights","GLOBAL",0)~ 

REPLACE_STATE_TRIGGER PPGUY01 4 ~OR(2) StateCheck("balth",4032) Global("BalthazarFights","GLOBAL",1)~ 
