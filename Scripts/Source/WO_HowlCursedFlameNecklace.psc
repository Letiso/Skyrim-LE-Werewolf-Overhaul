Scriptname WO_HowlCursedFlameNecklace extends ActiveMagicEffect  


; ==============================================================================================
; ####### PROPERTIES

WO_HowlCursedFlameAliasController Property AliasController Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA
; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnEffectStart(actor akTarget, actor akCaster)
	AliasController.TryToControlCreature(akTarget, self.GetDuration())

	;------------------------------------------------------------
	; HandleSpellCast() is using this effect's duration, but effect itself doesn't needed no longer, so we have to stop it manually
	;------------------------------------------------------------
	self.Dispel()

EndEvent

; ####### EVENTS END
; ==============================================================================================

; ==============================================================================================
;########## FUNCTIONS
;########## FUNCTIONS END
; ==============================================================================================
