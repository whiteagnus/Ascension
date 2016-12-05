SET_WEIGHT BALTH 12 #-1 

REPLACE_SAY BALTH 19 @1060

REPLACE BALTH
  IF ~~ THEN BEGIN 24
    SAY #67727 
    + ~Alignment(Player1,MASK_GOOD) ReputationGT(Player1,18)~ + #67730 + a31
    + ~!Alignment(Player1,MASK_GOOD) ReputationGT(Player1,18)~ + #67730 + a32
    + ~Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,18)~ + #67730 + a33
    + ~!Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,18) ReputationGT(Player1,6)~ + #67730 + a34
    ++ #67731 + a35
    ++ @1072 + a36
    ++ #67733 + a37
    + ~Alignment(Player1,MASK_EVIL) !ReputationGT(Player1,6)~ + #67730 GOTO a38
  END

END

APPEND BALTH 

IF ~~ THEN a31 
  SAY @1074
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ GOTO a39
END

IF ~~ THEN a32 
  SAY @1075
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a39
END

IF ~~ THEN a33 
  SAY @1076
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",0)~ GOTO a40
END

IF ~~ THEN a34 
  SAY @1077
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a40
END

IF ~~ THEN a35 
  SAY @1078
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a39
END

IF ~~ THEN a36 
  SAY @1079
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO a40
END

IF ~~ THEN a37 
  SAY @1080
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO a40
END

IF ~~ THEN a38 
  SAY @1081
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-3)~ GOTO a41
END

IF ~~ THEN a39 
  SAY @1082
  ++ @1083 + a42
  ++ @1084 + a95
  ++ @1085 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ + a97
  ++ @1086 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ + a99
  ++ @1087 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ + a100
END

IF ~~ THEN a40 
  SAY @1088
  ++ @1083 + a42
  ++ @1084 + a95
  ++ @1085 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ + a97
  ++ @1086 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ + a99
  ++ @1087 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ + a100
END

IF ~~ THEN a41 
  SAY @1089
  IF ~~ THEN GOTO a39
END

IF ~~ THEN a42 
  SAY @1090
  IF ~~ THEN GOTO a43
END

IF ~~ THEN a43 
  SAY @1091
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a94
END

IF ~~ THEN a44 
  SAY @1092
  + ~Global("WhatBecomesMelissan","LOCALS",0)~ + @1093 DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ + a45
  + ~Global("DontHaveToDoThis","LOCALS",0)~ + @1094 DO ~SetGlobal("DontHaveToDoThis","LOCALS",1)~ + a71
  + ~Global("Righteousness","LOCALS",0)~ + @1095 DO ~SetGlobal("Righteousness","LOCALS",1)~ + a84
  ++ @1096 + a93
END

IF ~~ THEN a45 
  SAY @1097
  ++ @1098 + a46
  + ~CheckStatGT(Player1,8,WIS)~ + @1099 + a62
  ++ @1100 + a66
  ++ @1101 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ + a69
  ++ @1102 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ + a70
  ++ @1103 + a93
END

IF ~~ THEN a46 
  SAY @1104
  IF ~OR(2) Alignment(Player1,MASK_EVIL) CheckStatLT(Player1,16,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a47
  IF ~!Alignment(Player1,MASK_EVIL) CheckStatGT(Player1,15,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a61
END

IF ~~ THEN a47 
  SAY @1105
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a48 
  SAY #36427
  IF ~Global("WhatBecomesMelissan","LOCALS",1) Global("DontHaveToDoThis","LOCALS",0) Global("Righteousness","LOCALS",0)~ THEN GOTO a49
  IF ~Global("WhatBecomesMelissan","LOCALS",0) Global("DontHaveToDoThis","LOCALS",1) Global("Righteousness","LOCALS",0)~ THEN GOTO a49
  IF ~Global("WhatBecomesMelissan","LOCALS",0) Global("DontHaveToDoThis","LOCALS",0) Global("Righteousness","LOCALS",1)~ THEN GOTO a49
  IF ~Global("WhatBecomesMelissan","LOCALS",1) Global("DontHaveToDoThis","LOCALS",1) Global("Righteousness","LOCALS",0)~ THEN GOTO a50
  IF ~Global("WhatBecomesMelissan","LOCALS",1) Global("DontHaveToDoThis","LOCALS",0) Global("Righteousness","LOCALS",1)~ THEN GOTO a50
  IF ~Global("WhatBecomesMelissan","LOCALS",0) Global("DontHaveToDoThis","LOCALS",1) Global("Righteousness","LOCALS",1)~ THEN GOTO a50
END

IF ~~ THEN a49 
  SAY @1106
  + ~Global("WhatBecomesMelissan","LOCALS",0)~ + @1093 DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ + a45
  + ~Global("DontHaveToDoThis","LOCALS",0)~ + @1094 DO ~SetGlobal("DontHaveToDoThis","LOCALS",1)~ + a71
  + ~Global("Righteousness","LOCALS",0)~ + @1095 DO ~SetGlobal("Righteousness","LOCALS",1)~ + a84
  ++ @1107 + a93
END

IF ~~ THEN a50 
  SAY @1108
  + ~GlobalGT("ConvinceBalth","GLOBAL",3)~ + @1109 + a51
  + ~!GlobalGT("ConvinceBalth","GLOBAL",3)~ + @1109 + a54
  + ~GlobalGT("ConvinceBalth","GLOBAL",0)~ + @1110 + a55
  + ~!GlobalGT("ConvinceBalth","GLOBAL",0)~ + @1110 + a57
  ++ @1111 + a57
  ++ @1112 + a59
END

IF ~~ THEN a51 
  SAY @1113
  IF ~~ THEN GOTO a52
END

IF ~~ THEN a52 
  SAY @1114
  IF ~~ THEN GOTO a53
END

IF ~~ THEN a53 
  SAY @1115
  IF ~~ THEN DO ~SetGlobal("BalthazarFights","GLOBAL",1) ActionOverride("balelit1",EscapeArea()) ActionOverride("balelit2",EscapeArea()) ActionOverride("balelit3",EscapeArea()) ActionOverride("balelit4",EscapeArea()) EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357) ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN a54 
  SAY @1116
  IF ~GlobalGT("ConvinceBalth","GLOBAL",0)~ THEN GOTO a55
  IF ~!GlobalGT("ConvinceBalth","GLOBAL",0)~ THEN GOTO a58
END

IF ~~ THEN a55 
  SAY @1117
  ++ @1118 + a56
  ++ @1119 + a57
  ++ @1120 + a57
END

IF ~~ THEN a56 
  SAY @1121
  IF ~~ THEN DO ~ActionOverride("balelit1",EscapeArea()) ActionOverride("balelit2",EscapeArea()) ActionOverride("balelit3",EscapeArea()) ActionOverride("balelit4",EscapeArea()) EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357) Kill(Myself)~ EXIT
END

IF ~~ THEN a57 
  SAY @1122
  IF ~~ THEN DO ~Shout(ALERT) Enemy() EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN a58 
  SAY @1123
  IF ~~ THEN DO ~Shout(ALERT) Enemy() EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN a59 
  SAY @1124
  IF ~~ THEN DO ~Shout(ALERT) Enemy() EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN a60 
  SAY @1125
  IF ~~ THEN DO ~Shout(ALERT) Enemy() EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN a61 
  SAY @1126
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a62 
  SAY #69176 
  + ~CheckStatLT(Player1,16,WIS)~ + @1128 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ + a63
  + ~CheckStatGT(Player1,15,WIS) CheckStatLT(Player1,19,WIS)~ + @1129 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ + a64
  + ~CheckStatGT(Player1,18,WIS)~ + @1130 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ + a65
END

IF ~~ THEN a63 
  SAY @1131
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a64 
  SAY @1132
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a65 
  SAY @1133
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a66 
  SAY @1134
  IF ~OR(2) Alignment(Player1,MASK_GOOD) ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a67
  IF ~!Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a68
END

IF ~~ THEN a67 
  SAY @1135
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a68 
  SAY @1136
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a69 
  SAY @1137
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a70 
  SAY @1138
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a71 
  SAY @1139
  ++ @1140 + a72
  + ~CheckStatGT(Player1,9,WIS)~ + @1141 + a75
  ++ @1142 + a79
  ++ @1143 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ + a82
  ++ @1144 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ + a83
  ++ @1145 + a93
END

IF ~~ THEN a72 
  SAY @1146
  IF ~OR(3) Alignment(Player1,MASK_EVIL) ReputationLT(Player1,10) CheckStatLT(Player1,16,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a73
  IF ~!Alignment(Player1,MASK_EVIL) !ReputationLT(Player1,10) !CheckStatLT(Player1,16,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a74
END

IF ~~ THEN a73 
  SAY @1147
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a74 
  SAY @1148
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a75 
  SAY @1149
  + ~CheckStatLT(Player1,15,WIS)~ + @1150  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ + a76
  + ~CheckStatGT(Player1,14,WIS) CheckStatLT(Player1,19,WIS)~ + @1151  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ + a77
  + ~CheckStatGT(Player1,18,WIS)~ + @1152  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ + a78
END

IF ~~ THEN a76 
  SAY @1153
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a77 
  SAY @1154
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a78 
  SAY @1155
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a79 
  SAY @1156
  IF ~CheckStatGT(Player1,16,CHR) !Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a80
  IF ~OR(2) !CheckStatGT(Player1,16,CHR) Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a81
END

IF ~~ THEN a80 
  SAY @1157
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a81 
  SAY @1158
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a82 
  SAY @1159
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a83 
  SAY @1160
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a84 
  SAY @1161
  ++ @1162  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2) SetGlobal("Righteousness","LOCALS",1)~ + a85
  ++ @1163  DO ~SetGlobal("Righteousness","LOCALS",1)~ + a86
  ++ @1164  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2) SetGlobal("Righteousness","LOCALS",1)~ + a89
  ++ @1165  DO ~SetGlobal("Righteousness","LOCALS",1)~ + a90
  ++ @1166  DO ~SetGlobal("Righteousness","LOCALS",1)~ + a93
END

IF ~~ THEN a85 
  SAY @1167
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a86 
  SAY @1168
  IF ~!ReputationLT(Player1,11)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a87
  IF ~ReputationLT(Player1,11)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a88
END

IF ~~ THEN a87 
  SAY @1169
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a88 
  SAY @1170
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a89 
  SAY @1171
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a90 
  SAY @1172
  IF ~OR(2) Alignment(Player1,MASK_GOOD) ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a91
  IF ~!Alignment(Player1,MASK_GOOD) !ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a92
END

IF ~~ THEN a91 
  SAY @1173
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a92 
  SAY @1174
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO a60
END

IF ~~ THEN a93 
  SAY @1175
  IF ~~ THEN DO ~Shout(ALERT) Enemy() EraseJournalEntry(67720) EraseJournalEntry(67721) EraseJournalEntry(67722) EraseJournalEntry(67723) EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN a94 
  SAY @1176
  + ~Global("WhatBecomesMelissan","LOCALS",0)~ + @1093  DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ + a45
  + ~Global("DontHaveToDoThis","LOCALS",0)~ + @1094  DO ~SetGlobal("DontHaveToDoThis","LOCALS",1)~ + a71
  + ~Global("Righteousness","LOCALS",0)~ + @1095  DO ~SetGlobal("Righteousness","LOCALS",1)~ + a84
  ++ @1096 + a93
END

IF ~~ THEN a95 
  SAY @1177
  IF ~~ THEN GOTO a96
END

IF ~~ THEN a96 
  SAY @1178
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a94
END

IF ~~ THEN a97 
  SAY @1179
  IF ~~ THEN GOTO a98
END

IF ~~ THEN a98 
  SAY @1180
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a94
END

IF ~~ THEN a99 
  SAY @1181
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a94
END

IF ~~ THEN a100 
  SAY @1182
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO a44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO a94
END

END
