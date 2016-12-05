ADD_STATE_TRIGGER PPGUY01 0 ~Global("BalthazarFights","GLOBAL",0)~ 

REPLACE_STATE_TRIGGER PPGUY01 4 ~OR(2) Dead("balth") Global("BalthazarFights","GLOBAL",1)~ 
