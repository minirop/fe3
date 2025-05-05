.MACRO EV_STOP
.db $00
.ENDM

; start dialogue?
.MACRO EV_DIALOGUE
.db $02
.dw \1
.ENDM

; unclear
.MACRO EV_EXPLOSION
.db $06 \1 \2 \3
.ENDM

; unclear
.MACRO EV_CHANGE_MUSIC
.db $08 \1 \2
.ENDM

; find better name?
.MACRO EV_RESTORE_MUSIC_FIELD
.db $08 $FF $FF
.ENDM

.MACRO EV_DEL_CHAR
.db $0B \1
.ENDM

; to investigate
.MACRO EV_SET_ALLY
.db $0D $00 \1 \2
.ENDM

; to investigate
.MACRO EV_SET_FLAG
.db $11
.dw \1
.ENDM

; to investigate
.MACRO EV_UNSET_FLAG
.db $12
.dw \1
.ENDM

; to investigate
.MACRO EV_COMMAND_18
.db $18 \1 \2 \3 \4 \5
.ENDM

; to investigate
.MACRO EV_BRANCH_IF_UNIT_EXISTS
.db $1F \1 $00
.dw \2
.db $00
.ENDM
