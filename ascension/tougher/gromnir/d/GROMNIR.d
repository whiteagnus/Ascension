/*//JediMindTrix Additions, this replaces code that becomes unnecessary with WhiteAgnus' addition
REPLACE_TRANS_ACTION GROMNIR BEGIN 7 END BEGIN END ~ActionOverride("gromg03",Shout(151)) ActionOverride("gromg03",Enemy()) Shout(151)~ ~~
//WhiteAgnus Stuff
ADD_TRANS_ACTION GROMNIR BEGIN 7 END BEGIN END ~SetGlobalTimer("reinfg","GLOBAL",10) ActionOverride("gromg03",Shout(ALERT)) ActionOverride("gromg05",Enemy()) ActionOverride("gromg08",Enemy()) ActionOverride("gromg09",Enemy()) ActionOverride("gromg10",Enemy())~*/

ALTER_TRANS GROMNIR BEGIN 7 END BEGIN END BEGIN "ACTION" ~ClearAllActions() StartCutSceneMode() EraseJournalEntry(64995) EraseJournalEntry(65001) EraseJournalEntry(65003) Enemy() SetGlobalTimer("reinfg","GLOBAL",10) CreateCreature("GROMG03",[781.596],W) CreateCreature("GROMG09",[832.609],W) CreateCreature("GROMG10",[778.636],W) EndCutSceneMode() ActionOverride("gromg03",Shout(ALERT)) ActionOverride("gromg03",Enemy()) ActionOverride("gromg05",Enemy()) ActionOverride("gromg08",Enemy()) ActionOverride("gromg09",Enemy()) ActionOverride("gromg10",Enemy())~ END
