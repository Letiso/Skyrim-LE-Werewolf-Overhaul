Scriptname PlayerWerewolfChangeScript extends Quest  


; ==============================================================================================
; ####### PROPERTIES

Actor Property PlayerRef Auto

;------------------------------------------------------------
; Beast races
;------------------------------------------------------------
Race Property WerewolfBeastRace Auto
Race Property DLC1VampireBeastRace Auto

;------------------------------------------------------------
; SpellsPowers
;------------------------------------------------------------
FormList Property WO_SpellsPowers Auto
FormList Property DLC1VampireSpellsPowers Auto

;------------------------------------------------------------
; Imods
;------------------------------------------------------------
ImageSpaceModifier Property WerewolfWarningImod Auto
ImageSpaceModifier Property WerewolfChangeImod Auto

;------------------------------------------------------------
; Sound
;------------------------------------------------------------
Sound Property MAGPowerRacialRedguardAdrenalineRushFire2DDUPLICATE000 Auto

;------------------------------------------------------------
; Shaders
;------------------------------------------------------------
EffectShader Property WerewolfTrans02FXS Auto

;------------------------------------------------------------
; Factions
;------------------------------------------------------------
Faction Property PlayerWerewolfFaction Auto
Faction Property WerewolfFaction Auto
FormList Property WerewolfHateFactions Auto

;------------------------------------------------------------
; 'Werewolf Overhaul' mod - jewerly
;------------------------------------------------------------
Armor Property DA05HircinesRing Auto

Armor Property WO_NecklaceOfFear Auto
Armor Property WO_NecklaceOfVictory Auto
Armor Property WO_NecklaceOfPack Auto
; Armor Property WO_NecklaceOfSovereign Auto 		; maintained by necklace itself
Armor Property WO_NecklaceOfRoar Auto
Armor Property WO_NecklaceOfFlame Auto
Armor Property WO_NecklaceOfFury Auto
; Armor Property WO_NecklaceOfShadows Auto 			; maintained by necklace itself

GlobalVariable Property WO_RingPowerHircines Auto
GlobalVariable Property WO_RingPowerFrostmoonBloodlust Auto
GlobalVariable Property WO_RingPowerFrostmoonMoon Auto
GlobalVariable Property WO_RingPowerFrostmoonInstinct Auto
GlobalVariable Property WO_RingPowerFrostmoonHunt Auto

GlobalVariable Property WO_NecklacePowerOfFear Auto
GlobalVariable Property WO_NecklacePowerOfVictory Auto
GlobalVariable Property WO_NecklacePowerOfPack Auto
GlobalVariable Property WO_NecklacePowerOfSovereign Auto
GlobalVariable Property WO_NecklacePowerOfRoar Auto
GlobalVariable Property WO_NecklacePowerOfFlame Auto
GlobalVariable Property WO_NecklacePowerOfFury Auto
GlobalVariable Property WO_NecklacePowerOfShadows Auto

;------------------------------------------------------------
; 'Dragonborn' DLC - Frostmoon jewerly
;------------------------------------------------------------
Armor property WO_FrostmoonRingHunt Auto
Spell property WO_FrostmoonRingHuntBeastform Auto

Armor property WO_FrostmoonRingInstinct Auto
Spell property WO_FrostmoonRingInstinctBeastform Auto

Armor property WO_FrostmoonRingMoon Auto
Spell property WO_FrostmoonRingMoonBeastform Auto

Armor property WO_FrostmoonRingBloodlust Auto
Spell property WO_FrostmoonRingBloodlustBeastform Auto

;------------------------------------------------------------
; Skin & weapon
;------------------------------------------------------------
Armor Property ArmorFXWerewolfTransitionSkin Auto
Weapon Property WO_Unarmed Auto

;------------------------------------------------------------
; Abilities
;------------------------------------------------------------
Spell Property WO_RevertForm Auto

Spell Property WO_PredatorsFlair Auto
Spell Property WO_PredatorsFlairSavageFeeding Auto

; in vanilla it was a howl, for now it's an ability
Spell Property WO_WerewolfDetectLife Auto
; in case when we have my other mod 'Detect Life & Night Vision Overhaul' installed, we wanna to use ability from there
Spell Property WerewolfDetectLife Auto

Spell Property WO_AcceleratedMetabolism Auto

Spell Property WO_SupernaturalReflexes Auto

;------------------------------------------------------------
; When race switch is happen & all processing is done, we don't wanna to see a SKYUI notification no longer, so we have to dispel it manually
;------------------------------------------------------------
Spell Property WerewolfChange Auto
Spell Property WerewolfChangeFX Auto

;------------------------------------------------------------
; Howls
;------------------------------------------------------------
Spell Property WO_HowlWerewolfTerribleRoarSpell1 Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell2 Auto
Spell Property WO_HowlWerewolfTerribleRoarSpell3 Auto
Shout Property WO_HowlWerewolfTerribleRoar1 Auto
Shout Property WO_HowlWerewolfTerribleRoar2 Auto
Shout Property WO_HowlWerewolfTerribleRoar3 Auto

Shout Property WO_HowlWerewolfVictoryCry Auto

Shout Property WO_HowlWerewolfCallOfThePack Auto

Shout Property WO_HowlWerewolfSovereignsVoice1 Auto
Shout Property WO_HowlWerewolfSovereignsVoice2 Auto
Shout Property WO_HowlWerewolfSovereignsVoice3 Auto

Shout Property WO_HowlWerewolfUnrelentingRoar1 Auto
Shout Property WO_HowlWerewolfUnrelentingRoar2 Auto
Shout Property WO_HowlWerewolfUnrelentingRoar3 Auto
Message Property WO_UnrelentingRoarGainMessage Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell1 Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell2 Auto
Spell Property WO_HowlWerewolfUnrelentingRoarSpell3 Auto

Shout Property WO_HowlWerewolfCursedFlame1 Auto
Shout Property WO_HowlWerewolfCursedFlame2 Auto
Shout Property WO_HowlWerewolfCursedFlame3 Auto

Shout Property WO_HowlWerewolfFuriousHowl Auto

Shout Property WO_HowlWerewolfCloakOfShadows Auto
Spell Property WO_HowlWerewolfCloakOfShadows1 Auto
Spell Property WO_HowlWerewolfCloakOfShadowsCloak Auto

;------------------------------------------------------------
; To save last equipped spell except 'Revert Form' & equip it next time
;------------------------------------------------------------
Quest Property WO_PlayerWerewolfQuestStorage Auto

;------------------------------------------------------------
; Leveled abilities
;------------------------------------------------------------
Spell Property LeveledAbility Auto
Spell Property PlayerWerewolfLvl10AndBelowAbility Auto
Spell Property PlayerWerewolfLvl15AndBelowAbility Auto
Spell Property PlayerWerewolfLvl20AndBelowAbility Auto
Spell Property PlayerWerewolfLvl25AndBelowAbility Auto
Spell Property PlayerWerewolfLvl30AndBelowAbility Auto
Spell Property PlayerWerewolfLvl35AndBelowAbility Auto
Spell Property PlayerWerewolfLvl40AndBelowAbility Auto
Spell Property PlayerWerewolfLvl45AndBelowAbility Auto
Spell Property PlayerWerewolfLvl50AndBelowAbility Auto

Spell Property WO_PlayerWerewolfLvl55AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl60AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl65AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl70AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl75AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl80AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl85AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl90AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl95AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl100AndBelowAbility Auto

Spell Property WO_PlayerWerewolfLvl105AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl110AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl115AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl120AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl125AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl130AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl135AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl140AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl145AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl150AndBelowAbility Auto

Spell Property WO_PlayerWerewolfLvl155AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl160AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl165AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl170AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl175AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl180AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl185AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl190AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl195AndBelowAbility Auto
Spell Property WO_PlayerWerewolfLvl200AndOverAbility Auto

;------------------------------------------------------------
; Feeding
;------------------------------------------------------------
Keyword Property ActorTypeNPC Auto
Idle Property SpecialFeeding Auto
Spell property BleedingSpell Auto
{This Spell is for making the target of feeding bleed.}

Spell Property WerewolfFeed Auto
Message Property PlayerWerewolfFeedMessage Auto

GlobalVariable Property WO_FeedingCounter Auto

;------------------------------------------------------------
; Dawnguard DLC - perks
;------------------------------------------------------------
GlobalVariable Property DLC1WerewolfMaxPerks Auto

Perk Property DLC1GorgingPerk Auto
Perk Property DlC1SavageFeedingPerk Auto

;------------------------------------------------------------
; Werewolf Overhaul mod - perks
;------------------------------------------------------------
; active abilities
Perk Property WO_DetectAllCreatures Auto
Perk Property WO_AcceleratedMetabolismPerk Auto
Perk Property WO_SupernaturalReflexesPerk Auto

Perk Property WO_CallOfthePack1 Auto
Perk Property WO_SovereignsVoice1 Auto
Perk Property WO_SovereignsVoice2 Auto
Perk Property WO_SovereignsVoice3 Auto
Perk Property WO_TerribleRoar1 Auto
Perk Property WO_TerribleRoar2 Auto
Perk Property WO_TerribleRoar3 Auto
Perk Property WO_VictoryCry1 Auto
Perk Property WO_UnrelentingRoar1 Auto
Perk Property WO_UnrelentingRoar2 Auto
Perk Property WO_UnrelentingRoar3 Auto
Perk Property WO_CursedFlame1 Auto
Perk Property WO_CursedFlame2 Auto
Perk Property WO_CursedFlame3 Auto
Perk Property WO_FuriousHowl1 Auto
Perk Property WO_CloakOfShadows1 Auto

; passive abilities
Perk Property WO_Maniac Auto
Spell Property WO_PerkManiac Auto

Perk Property WO_AnimalVigorPerk1 Auto
Perk Property WO_AnimalVigorPerk2 Auto

Perk Property WO_ScentOfBlood Auto
Spell Property WO_PerkScentOfBlood Auto

;------------------------------------------------------------
; Timers
;------------------------------------------------------------
float Property StandardDurationSeconds auto
{How long (in real seconds) the transformation lasts}

float Property DurationWarningTimeSeconds auto
{How long (in real seconds) before turning back we should warn the player}

float Property FeedExtensionTimeSeconds auto
{How long (in real seconds) that feeding extends werewolf time}

GlobalVariable Property TimeScale auto
GlobalVariable Property GameDaysPassed auto
GlobalVariable Property PlayerWerewolfShiftBackTime auto

;------------------------------------------------------------
; To add extra health & stamina from perks & race bonus
;------------------------------------------------------------
Int Property MaxHealthStaminaBonus = 100 Auto

; ####### PROPERTIES END
; ==============================================================================================


; ==============================================================================================
; ####### INTERNAL DATA

race __originalRace = None
bool __alreadyWarned = False
bool __shiftingBack = False

float __durationWarningTime = -1.0
float __feedExtensionTime = -1.0

shout _currentHowl
spell _currentBeastPower

;------------------------------------------------------------
; To make available quick menu & spellsPowers form list
;------------------------------------------------------------
DefaultObjectManager ObjectManager

;------------------------------------------------------------
; Fix for the dual weapon bug after the shift back
;------------------------------------------------------------
Form __leftHandWeapon
Form __rightHandWeapon

; ####### INTERNAL DATA END
; ==============================================================================================


; ==============================================================================================
; ####### EVENTS

;------------------------------------------------------------
Event OnInit()
	ObjectManager = Game.GetFormFromFile(0x00000031, "Skyrim.esm") as DefaultObjectManager
	
EndEvent


;------------------------------------------------------------
; Shift back if it's time
;------------------------------------------------------------
Event OnUpdate()
	if PlayerRef.IsInKillMove()
		return
	endif

	float currentTime = GameDaysPassed.Value
	float shiftBackTime = PlayerWerewolfShiftBackTime.Value
	float warningTime = shiftBackTime - __durationWarningTime

	if currentTime >= shiftBackTime
		;------------------------------------------------------------
		; shift back
		;------------------------------------------------------------
		ShiftBack()
		
	elseif currentTime >= warningTime && !__alreadyWarned
		;------------------------------------------------------------
		; shift back soon, send the screen effect warning
		;------------------------------------------------------------
		WerewolfWarningImod.Apply()
		__alreadyWarned = True

	elseif __alreadyWarned && (currentTime < warningTime)
		;------------------------------------------------------------
		; we wanna to get the warning again, if we have to
		;------------------------------------------------------------
		__alreadyWarned = False
	endif

EndEvent

; ####### EVENTS END
; ==============================================================================================


; ==============================================================================================
; ####### FUNCTIONS

;------------------------------------------------------------
; Called by perk: PlayerWerewolfFeed on dead body activation
;------------------------------------------------------------
Function Feed(actor akVictim)
	;------------------------------------------------------------
	; play feeding animation
	;------------------------------------------------------------
	PlayerRef.PlayIdle(SpecialFeeding)
	
	;------------------------------------------------------------
	; a spell that simulates victim's bleeding
	;------------------------------------------------------------
	BleedingSpell.Cast(akVictim)

	;------------------------------------------------------------
	; apply base feeding bonus
	;------------------------------------------------------------
	ApplyBaseFeedBonus(akVictim)

	;------------------------------------------------------------
	; used by perk: Scent Of Blood to incrise claws damage after the feeding
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_ScentOfBlood)
		WO_PerkScentOfBlood.Cast(PlayerRef)
	endif
	
EndFunction


;------------------------------------------------------------
; Called by WO_HowlCursedFlameSoulTrapFXScript, when the victim is turned to dust
;------------------------------------------------------------
Function CursedFlameFeed(actor akVictim)
	;------------------------------------------------------------
	; apply base feeding bonus
	;------------------------------------------------------------
	ApplyBaseFeedBonus(akVictim)
	
EndFunction


;------------------------------------------------------------
Function ApplyBaseFeedBonus(actor akVictim)
	;------------------------------------------------------------
	; health & stamina regen from feeding
	;------------------------------------------------------------
	WerewolfFeed.Cast(PlayerRef)

	;------------------------------------------------------------
	; delay shift back time depending on gorging perk & victim actor type
	;------------------------------------------------------------
	if PlayerRef.HasPerk(DLC1GorgingPerk) == 1
		if akVictim.HasKeyword(ActorTypeNPC)
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime * 2
		else
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime
		endif
	else
		if akVictim.HasKeyword(ActorTypeNPC)
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime
		else
			PlayerWerewolfShiftBackTime.Value += __feedExtensionTime / 2
		endif
	endif
	PlayerWerewolfFeedMessage.Show()

	;------------------------------------------------------------
	; used by perk: Maniac to incrise player's maximum health & stamina every 50 victims
	;------------------------------------------------------------
	WO_FeedingCounter.Value += 1
	SendModEvent("WerewolfFeeding")
	
EndFunction


;------------------------------------------------------------
; Called by PlayerWerewolfScript
;------------------------------------------------------------
Function HandlePlayerLoadGame()
	;------------------------------------------------------------
	; this settings are resets to default each save load, so we have to set them again
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", WerewolfBeastRace)
	ObjectManager.SetForm("RIVS", WO_SpellsPowers)

	;------------------------------------------------------------
	; unarmed weapon damage is resets to default each save load, so we have to set it again
	;------------------------------------------------------------
	WO_Unarmed.SetBaseDamage(PlayerRef.GetAV("UnarmedDamage") as int)


	int playerLevel = PlayerRef.GetLevel()
	;------------------------------------------------------------
	; dynamic fear spell magnitude is resets to default each save load, so we have to set it again
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_TerribleRoar1)
		spell howlSpell
		float mult

		if PlayerRef.HasPerk(WO_TerribleRoar3)
			howlSpell = WO_HowlWerewolfTerribleRoarSpell3
			mult = 1.30

		elseif PlayerRef.HasPerk(WO_TerribleRoar2)
			howlSpell = WO_HowlWerewolfTerribleRoarSpell2
			mult = 1.15

		else
			howlSpell = WO_HowlWerewolfTerribleRoarSpell1
			mult = 1.0
		endif

		howlSpell.SetNthEffectMagnitude(0, playerLevel * mult)
		howlSpell.SetNthEffectMagnitude(1, playerLevel * mult)
	endif

	;------------------------------------------------------------
	; the same for Unrelenting Roar spells
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_UnrelentingRoar1)
		spell howlSpell
		float mult

		if PlayerRef.HasPerk(WO_UnrelentingRoar3)
			howlSpell = WO_HowlWerewolfUnrelentingRoarSpell3
			mult = 1.30

		elseif PlayerRef.HasPerk(WO_UnrelentingRoar2)
			howlSpell = WO_HowlWerewolfUnrelentingRoarSpell2
			mult = 1.15

		else
			howlSpell = WO_HowlWerewolfUnrelentingRoarSpell1
			mult = 1.0
		endif

		howlSpell.SetNthEffectMagnitude(1, playerLevel * mult)
	endif

	;------------------------------------------------------------
	; and the same for Cloak of Shadows spells
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_CloakOfShadows1)
		if WO_NecklacePowerOfShadows.Value > 0
			float damageToDeal = PlayerRef.GetAV("UnarmedDamage") / 2
			float staminaToAbsorb = ActorValueInfo.GetActorValueInfoByName("stamina").GetMaximumValue(PlayerRef) * 0.05

			WO_HowlWerewolfCloakOfShadowsCloak.SetNthEffectMagnitude(0, damageToDeal)
			WO_HowlWerewolfCloakOfShadowsCloak.SetNthEffectMagnitude(1, staminaToAbsorb)
		endif
	endif

	;------------------------------------------------------------
	; for compability with my other mod - 'Detect Life & Night Vision Overhaul' 
	;------------------------------------------------------------
	if PlayerRef.HasPerk(WO_DetectAllCreatures)
		Spell DLNV_WO_WerewolfDetectLife = Game.GetFormFromFile(0x478C65, "Detect Life & Night Vision Overhaul.esp") as spell

		;------------------------------------------------------------
		; when we install DLNV being in the beastform
		;------------------------------------------------------------
		if DLNV_WO_WerewolfDetectLife
			if WerewolfDetectLife == WO_WerewolfDetectLife
				PlayerRef.DispelSpell(WO_WerewolfDetectLife)
				SendModEvent("DetectAllCreaturesStop")

				WerewolfDetectLife = DLNV_WO_WerewolfDetectLife
				WO_SpellsPowers.AddForm(DLNV_WO_WerewolfDetectLife)
				
				PlayerRef.AddSpell(DLNV_WO_WerewolfDetectLife, false)

				if PlayerRef.GetEquippedSpell(2) == WO_WerewolfDetectLife
					PlayerRef.EquipSpell(DLNV_WO_WerewolfDetectLife, 2)
				endif

				PlayerRef.RemoveSpell(WO_WerewolfDetectLife)

			endif
		;------------------------------------------------------------
		; when we uninstall DLNV being in the beastform
		;------------------------------------------------------------
		else
			if WerewolfDetectLife != WO_WerewolfDetectLife
				WerewolfDetectLife = WO_WerewolfDetectLife

				PlayerRef.AddSpell(WO_WerewolfDetectLife, false)

				if PlayerRef.GetEquippedSpell(2) == None
					PlayerRef.EquipSpell(WO_WerewolfDetectLife, 2)
				endif

			endif
		endif
	endif

EndFunction


;------------------------------------------------------------
; Called on stage 0 (On quest start) by WerewolfChangeEffectScript
;------------------------------------------------------------
Function PrepShift()
	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfChangeImod.Apply()
	MAGPowerRacialRedguardAdrenalineRushFire2DDUPLICATE000.Play(PlayerRef)

	;------------------------------------------------------------
	; setup the UI restrictions
	;------------------------------------------------------------
	Game.SetBeastForm(True)
	Game.EnableFastTravel(False)
    Game.EnablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = true, abLooking = false, abSneaking = false, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
	Game.ForceThirdPerson()
	Game.ShowFirstPersonGeometry(true)

	;------------------------------------------------------------
	; make game to think that a Vampire Lord transform happens, so we can access to the special Quick Menu being a Werewolf
	; it also prevents unequipping of player's stuff after the shift back
	; and letting us to use our own spells & howls FormList, which will be able to use at special Quick Menu
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", WerewolfBeastRace)
	ObjectManager.SetForm("RIVS", WO_SpellsPowers)
	
EndFunction


;------------------------------------------------------------
; Called on stage 1 by WerewolfTransformVisual script
;------------------------------------------------------------
Function InitialShift()
	if PlayerRef.IsDead()
		return		; then do nothing
	endif
	
	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfWarningImod.Apply()

	;------------------------------------------------------------
	; handle transformation process
	;------------------------------------------------------------
	FixDualWeaponReequipBug()
	HandleWerewolfJewerlyPowers()
	SwitchPlayerRace()

EndFunction


;------------------------------------------------------------
; Called by PlayerWerewolfScript after race switch
;------------------------------------------------------------
Function StartTracking()
	;------------------------------------------------------------
	; handle transformation process
	;------------------------------------------------------------
	UnequipMagic()
	HandlePlayerAbilities()
	HandlePlayerItems()
	SetupFactions()
	SetupShiftBackTimeTracking()

	;------------------------------------------------------------
	; increment stats	; for statistics, I suppose
	;------------------------------------------------------------
	Game.IncrementStat("Werewolf Transformations")

	;------------------------------------------------------------
	; magic effects from this spells no needed anymore
	;------------------------------------------------------------
	PlayerRef.DispelSpell(WerewolfChange)
	PlayerRef.DispelSpell(WerewolfChangeFX)

	;------------------------------------------------------------
	; usual werewolf gameplay
	;------------------------------------------------------------
	SetStage(10)
	
EndFunction


;------------------------------------------------------------
; Called from stage 100 or manually (most of cases)
;------------------------------------------------------------
Function ShiftBack()
	if __shiftingBack || PlayerRef.IsDead()
		return		; do nothing
	endif
	
	__shiftingBack = true
	UnRegisterForUpdate()
	SetStage(100)

	;------------------------------------------------------------
	; effect shader
	;------------------------------------------------------------
	WerewolfTrans02FXS.Play(PlayerRef)

	;------------------------------------------------------------
	; screen effect
	;------------------------------------------------------------
	WerewolfChangeImod.Apply()
	MAGPowerRacialRedguardAdrenalineRushFire2DDUPLICATE000.Play(PlayerRef)

	;------------------------------------------------------------
	; disable saving & waiting
	;------------------------------------------------------------
	Game.SetInCharGen(true, true, false)
	
	;------------------------------------------------------------
	; waiting for synced animation to finish
	;------------------------------------------------------------
	while PlayerRef.GetAnimationVariableBool("bIsSynced")
		Utility.Wait(0.1)
	endwhile
	;------------------------------------------------------------
	; effect shader
	;------------------------------------------------------------
	WerewolfTrans02FXS.Stop(PlayerRef)

	;------------------------------------------------------------
	; handle transformation progress
	;------------------------------------------------------------
	HandlePlayerAbilities()
	HandlePlayerItems()
	HandleWerewolfJewerlyPowers()
	SwitchPlayerRace()
	SetupFactions()

EndFunction


;------------------------------------------------------------
Function Shutdown()
	;------------------------------------------------------------
	; handle transformation progress
	;------------------------------------------------------------
	FixDualWeaponReequipBug()

	;------------------------------------------------------------
	; disable ui restrictions
	;------------------------------------------------------------
	Game.SetBeastForm(False)
	Game.EnableFastTravel(True)
	Game.EnablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = true, abLooking = false, abSneaking = false, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
	Game.ShowFirstPersonGeometry(true)
	
	;------------------------------------------------------------
	; enable saving & waiting
	;------------------------------------------------------------
	Game.SetInCharGen(false, false, false)

	;------------------------------------------------------------
	; restore vampire-lord transform behaviour
	;------------------------------------------------------------
	ObjectManager.SetForm("RIVR", DLC1VampireBeastRace)
	ObjectManager.SetForm("RIVS", DLC1VampireSpellsPowers)
	
	;------------------------------------------------------------
	; gave achievement if necessary
	;------------------------------------------------------------
	if Game.QueryStat("NumWerewolfPerks") >= DLC1WerewolfMaxPerks.Value
		Game.AddAchievement(57)
	endif

	;------------------------------------------------------------
	; magic effect from this spell no needed anymore
	;------------------------------------------------------------
	PlayerRef.DispelSpell(WO_RevertForm)

	;------------------------------------------------------------
	; stop the quest itself
	;------------------------------------------------------------
	self.Stop()
	
EndFunction


;------------------------------------------------------------
Function FixDualWeaponReequipBug()
	if !__shiftingBack
		EquippedWeaponsInBothHandsCheck()
		UnequipWeaponInLeftHandIfNecessary()

	else
		EquipWeaponInLeftHandIfNecessary()

	endif

EndFunction



; ------------------------------------------------------------
Function HandleWerewolfJewerlyPowers()
	if !__shiftingBack
		;------------------------------------------------------------
		; turn on all the werewolf ring variables if we have equipped any
		;------------------------------------------------------------
		; Right hand
		;------------------------------------------------------------
		if PlayerRef.isEquipped(DA05HircinesRing)
			WO_RingPowerHircines.Value = 1

		elseif PlayerRef.isEquipped(WO_FrostmoonRingHunt)
			WO_RingPowerFrostmoonHunt.Value = 1
			PlayerRef.AddSpell(WO_FrostmoonRingHuntBeastform, false)

		elseif PlayerRef.isEquipped(WO_FrostmoonRingInstinct)
			WO_RingPowerFrostmoonInstinct.Value = 1
			PlayerRef.AddSpell(WO_FrostmoonRingInstinctBeastform, false)

		elseif PlayerRef.isEquipped(WO_FrostmoonRingMoon)
			WO_RingPowerFrostmoonMoon.Value = 1
			PlayerRef.AddSpell(WO_FrostmoonRingMoonBeastform, false)

		elseif PlayerRef.isEquipped(WO_FrostmoonRingBloodlust)
			WO_RingPowerFrostmoonBloodlust.Value = 1
			PlayerRef.AddSpell(WO_FrostmoonRingBloodlustBeastform, false)


		endif

		;------------------------------------------------------------
		; Left hand
		;------------------------------------------------------------

		;------------------------------------------------------------
		; turn on all the werewolf necklace variables if we have equipped any
		;------------------------------------------------------------
		if PlayerRef.isEquipped(WO_NecklaceOfFear)
			WO_NecklacePowerOfFear.Value = 1

		elseif PlayerRef.isEquipped(WO_NecklaceOfVictory)
			WO_NecklacePowerOfVictory.Value = 1

		elseif PlayerRef.isEquipped(WO_NecklaceOfPack)
			WO_NecklacePowerOfPack.Value = 1

		; elseif PlayerRef.isEquipped(WO_NecklaceOfSovereign)
		; 	;------------------------------------------------------------
 		; 	; maintained by WO_HowlSovereingsVoiceNecklace script (by the necklace itself)
		; 	;------------------------------------------------------------

		elseif PlayerRef.isEquipped(WO_NecklaceOfRoar)
			WO_NecklacePowerOfRoar.Value = 1

		elseif PlayerRef.isEquipped(WO_NecklaceOfFlame)
			WO_NecklacePowerOfFlame.Value = 1

		elseif PlayerRef.isEquipped(WO_NecklaceOfFury)
			WO_NecklacePowerOfFury.Value = 1

		; elseif PlayerRef.isEquipped(WO_NecklaceOfShadows)
		; 	WO_NecklacePowerOfShadows.Value = 1
		endif
		
	else
		;------------------------------------------------------------
		; turn off all the werewolf necklace/ring variables when we change back
		;------------------------------------------------------------
		if WO_RingPowerHircines.Value
			WO_RingPowerHircines.Value = 0

		elseif PlayerRef.isEquipped(WO_FrostmoonRingHunt)
			WO_RingPowerFrostmoonHunt.Value = 1
			PlayerRef.RemoveSpell(WO_FrostmoonRingHuntBeastform)

		elseif WO_RingPowerFrostmoonInstinct.Value
			WO_RingPowerFrostmoonInstinct.Value = 1
			PlayerRef.RemoveSpell(WO_FrostmoonRingInstinctBeastform)

		elseif WO_RingPowerFrostmoonMoon.Value
			WO_RingPowerFrostmoonMoon.Value = 1
			PlayerRef.RemoveSpell(WO_FrostmoonRingMoonBeastform)

		elseif WO_RingPowerFrostmoonBloodlust.Value
			WO_RingPowerFrostmoonBloodlust.Value = 0
			PlayerRef.RemoveSpell(WO_FrostmoonRingBloodlustBeastform)

		endif

		WO_NecklacePowerOfFear.Value = 0
		WO_NecklacePowerOfVictory.Value = 0
		WO_NecklacePowerOfPack.Value = 0
		;------------------------------------------------------------
 		; WO_NecklacePowerOfSovereign.Value maintained by WO_HowlSovereingsVoiceNecklace script (by the necklace itself)
		;------------------------------------------------------------
		WO_NecklacePowerOfRoar.Value = 0
		WO_NecklacePowerOfFlame.Value = 0
		WO_NecklacePowerOfFury.Value = 0
		WO_NecklacePowerOfShadows.Value = 0
		
	endif

EndFunction


;------------------------------------------------------------
Function SwitchPlayerRace()
	if !__shiftingBack
		;------------------------------------------------------------
		; you're can't be harmed until the race isn't switched
		;------------------------------------------------------------
		PlayerRef.GetActorBase().SetInvulnerable(true)
		PlayerRef.SetGhost()

		;------------------------------------------------------------
		; turn you into a werewolf
		;------------------------------------------------------------
		__originalRace = PlayerRef.GetRace()
		PlayerRef.SetRace(WerewolfBeastRace)
		
		;------------------------------------------------------------
		; calculate a werewolf max health & stamina bonus (100 by default)
		;------------------------------------------------------------
		if PlayerRef.HasPerk(WO_AnimalVigorPerk2)
			maxHealthStaminaBonus += 200
		elseif PlayerRef.HasPerk(WO_AnimalVigorPerk1)
			maxHealthStaminaBonus += 100
		endif
		
		;------------------------------------------------------------
		; incrise your max health & stamina
		;------------------------------------------------------------
		PlayerRef.ModAV("health", MaxHealthStaminaBonus)
		PlayerRef.ModAV("stamina", MaxHealthStaminaBonus)

	else
		;------------------------------------------------------------
		; you're can't be harmed until the race isn't switched back
		;------------------------------------------------------------
		PlayerRef.GetActorBase().SetInvulnerable(true)
		PlayerRef.SetGhost()

		;------------------------------------------------------------
		; make sure your health is reasonable before turning you back
		;------------------------------------------------------------
		float currentHealth = PlayerRef.GetAV("health")
	
		float needToBeRestoredHealth = (currentHealth - MaxHealthStaminaBonus) * -1
		if needToBeRestoredHealth > 0
			PlayerRef.RestoreAV("health", needToBeRestoredHealth + 1)
		endif
		
		;------------------------------------------------------------
		; back your max health & stamina to normal
		;------------------------------------------------------------
		PlayerRef.ModAV("health", -MaxHealthStaminaBonus)
		PlayerRef.ModAV("stamina", -MaxHealthStaminaBonus)
		
		;------------------------------------------------------------
		; change you back
		;------------------------------------------------------------
		PlayerRef.SetRace(__originalRace)

	endif
	
EndFunction


;------------------------------------------------------------
Function HandlePlayerItems()
	if !__shiftingBack
		;------------------------------------------------------------
		; remove werewolf animated transition skin added by WerewolfTransformVisual script
		;------------------------------------------------------------
		PlayerRef.RemoveItem(ArmorFXWerewolfTransitionSkin, 1, True)

		;------------------------------------------------------------
		; unequip all the player's stuff (armors, clothes & weapons)
		;------------------------------------------------------------
		PlayerRef.UnequipAll()

		;------------------------------------------------------------
		; equip werewolf unarmed "weapon"	; this is needed for werewolf attack perks to work properly
		;------------------------------------------------------------
		; weapon animation type changed from 'HandToHandMelee' to 'TwoHandSword' (visually no difference between this animations) 
		; to make able impacts for non-actors (doors, rocks, trees etc.), 
		; so we have to set a weapons damage like ours unarmed damage
		;------------------------------------------------------------
		WO_Unarmed.SetBaseDamage(PlayerRef.GetAV("UnarmedDamage") as int)
		Utility.Wait(0.1)
		PlayerRef.EquipItem(WO_Unarmed, False, True)

	else
		;------------------------------------------------------------
		; remove werewolf unarmed "weapon"
		;------------------------------------------------------------
		PlayerRef.RemoveItem(WO_Unarmed, 1, True)

	endif

EndFunction


;------------------------------------------------------------
Function UnequipMagic()
	;------------------------------------------------------------
	; unequip left & right hand spells, abilities & shouts
	;------------------------------------------------------------
	Spell _leftHand = PlayerRef.GetEquippedSpell(0)
	Spell _rightHand = PlayerRef.GetEquippedSpell(1)
	Spell _power = PlayerRef.GetEquippedSpell(2)
	Shout _voice = PlayerRef.GetEquippedShout()
	
	if _leftHand != None
		PlayerRef.UnequipSpell(_leftHand, 0)
	endif
	
	if _rightHand != None
		PlayerRef.UnequipSpell(_rightHand, 1)
	endif
	
	if _power != None
		PlayerRef.UnequipSpell(_power, 2)
	elseif _voice != None
		PlayerRef.UnequipShout(_voice)
	endif

EndFunction


;------------------------------------------------------------
Function HandlePlayerAbilities()
	if !__shiftingBack
		;------------------------------------------------------------
		; and leveled ability
		;------------------------------------------------------------
		EstablishLeveledAbility()
		PlayerRef.AddSpell(LeveledAbility, false)
		
		;------------------------------------------------------------
		; add the spell that allowes us to turn back manually 
		;------------------------------------------------------------
		PlayerRef.AddSpell(WO_RevertForm, false)

		;------------------------------------------------------------
		; add the spell that showing corpses available for feeding
		;------------------------------------------------------------
		AddPredatorFlair()

		;------------------------------------------------------------
		; add werewolf beast powers (left perks branch)
		;------------------------------------------------------------
		AddBeastPowerDetectAllCreatures()
		AddBeastPowerAcceleratedMetabolism()
		AddBeastPowerSupernaturalReflexes()

		;------------------------------------------------------------
		; check for ability equipped at previous transformation
		;------------------------------------------------------------
		_currentHowl = (WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl
		_currentBeastPower = (WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower

		;------------------------------------------------------------
		; add werewolf howls (right perks branch)
		;------------------------------------------------------------
		AddHowlTerribleRoar()
		AddHowlVictoryCry()
		AddHowlCallOfThePack()
		AddHowlSovereignsVoice()
		AddHowlUnrelentingRoar()
		AddHowlCursedFlame()
		AddHowlFuriousHowl()
		AddHowlCloakOfShadows()

		;------------------------------------------------------------
		; equip an ability from previous transformation if we have one
		;------------------------------------------------------------
		if _currentHowl
			PlayerRef.EquipShout(_currentHowl)
		elseif _currentBeastPower
			PlayerRef.EquipSpell(_currentBeastPower, 2)
		endif

		;------------------------------------------------------------
		; add passive abilities
		;------------------------------------------------------------
		if PlayerRef.HasPerk(WO_Maniac)
			;------------------------------------------------------------
			; feeding event call back
			;------------------------------------------------------------
			PlayerRef.AddSpell(WO_PerkManiac, false)
		endif

	else
		;------------------------------------------------------------
		; save last equipped howl\beast power to equip it next time
		;------------------------------------------------------------
		Shout _equippedHowl = PlayerRef.GetEquippedShout()
		Spell _equippedSpell = PlayerRef.GetEquippedSpell(2)

		if _equippedHowl
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl = _equippedHowl
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower = None
		elseif _equippedSpell && (_equippedSpell != WO_RevertForm)
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl = None
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower = _equippedSpell
		else
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastHowl = None
			(WO_PlayerWerewolfQuestStorage as WO_PlayerWerewolfQuestStorageScript).LastBeastPower = None
		endif

		;------------------------------------------------------------
		; remove werewolf beast powers & howls
		;------------------------------------------------------------
		; TODO REPLACE BY human form separate spell
		; we wanna to keep WerewolfDetectLife at human form

		WO_SpellsPowers.RemoveAddedForm(WerewolfDetectLife)

		int counter
		while counter < WO_SpellsPowers.GetSize()
			Form spellPower = WO_SpellsPowers.GetAt(counter)
			int spellPowerType = spellPower.GetType()

			if spellPowerType == 22
				PlayerRef.RemoveSpell(spellPower as spell)

			elseif spellPowerType == 119
				PlayerRef.RemoveShout(spellPower as shout)
			endif

			counter += 1
		endwhile

		;------------------------------------------------------------
		; remove passive leveled ability
		;------------------------------------------------------------
		PlayerRef.RemoveSpell(LeveledAbility)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddPredatorFlair()	
	if PlayerRef.HasPerk(DlC1SavageFeedingPerk)
		PlayerRef.AddSpell(WO_PredatorsFlairSavageFeeding, false)
	else
		PlayerRef.AddSpell(WO_PredatorsFlair, false)
	endif
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerDetectAllCreatures()
	if !PlayerRef.HasPerk(WO_DetectAllCreatures)
		return
	endif

	;------------------------------------------------------------
	; check if we have installed & enabled the 'Detect Life & Night Vision Overhaul' mod
	;------------------------------------------------------------
	spell DLNV_WO_WerewolfDetectLife = Game.GetFormFromFile(0x478C65, "Detect Life & Night Vision Overhaul.esp") as spell

	if DLNV_WO_WerewolfDetectLife
		WerewolfDetectLife = DLNV_WO_WerewolfDetectLife
	else
	;------------------------------------------------------------
	; otherwise we wanna to use 'Detect All Creatures' ability from this mod
	;------------------------------------------------------------
		WerewolfDetectLife = WO_WerewolfDetectLife
	endif

	;------------------------------------------------------------
	; give the spell chosen above
	;------------------------------------------------------------
	WO_SpellsPowers.AddForm(WerewolfDetectLife)
	PlayerRef.AddSpell(WerewolfDetectLife, false)

EndFunction


;------------------------------------------------------------
Function AddBeastPowerSupernaturalReflexes()
	if !PlayerRef.HasPerk(WO_SupernaturalReflexesPerk)
		return
	endif

	PlayerRef.AddSpell(WO_SupernaturalReflexes, false)
	
EndFunction


;------------------------------------------------------------
Function AddBeastPowerAcceleratedMetabolism()
	if !PlayerRef.HasPerk(WO_AcceleratedMetabolismPerk)
		return
	endif

	PlayerRef.AddSpell(WO_AcceleratedMetabolism, false)
	
EndFunction


;------------------------------------------------------------
Function AddHowlTerribleRoar()
	if !PlayerRef.HasPerk(WO_TerribleRoar1)
		return
	endif

	int playerLevel = PlayerRef.GetLevel()

	shout howlShout
	spell howlSpell
	float mult

	if PlayerRef.HasPerk(WO_TerribleRoar3)
		howlShout = WO_HowlWerewolfTerribleRoar3
		howlSpell = WO_HowlWerewolfTerribleRoarSpell3
		mult = 1.30

	elseif PlayerRef.HasPerk(WO_TerribleRoar2)
		howlShout = WO_HowlWerewolfTerribleRoar2
		howlSpell = WO_HowlWerewolfTerribleRoarSpell2
		mult = 1.15

	else
		howlShout = WO_HowlWerewolfTerribleRoar3
		howlSpell = WO_HowlWerewolfTerribleRoarSpell3
		mult = 1.0
	endif

	howlSpell.SetNthEffectMagnitude(0, playerLevel * mult)
	howlSpell.SetNthEffectMagnitude(1, playerLevel * mult)

	PlayerRef.AddShout(howlShout)

	if !_currentHowl && !_currentBeastPower
		PlayerRef.EquipShout(howlShout)
	endif

EndFunction


;------------------------------------------------------------
Function AddHowlVictoryCry()
	if !PlayerRef.HasPerk(WO_VictoryCry1)
		return
	endif

	shout howlShout = WO_HowlWerewolfVictoryCry

	PlayerRef.AddShout(howlShout)
	
EndFunction


;------------------------------------------------------------
Function AddHowlCallOfThePack()
	if !PlayerRef.HasPerk(WO_CallOfThePack1)
		return
	endif

	shout howlShout = WO_HowlWerewolfCallOfThePack

	PlayerRef.AddShout(howlShout)
	
EndFunction


;------------------------------------------------------------
Function AddHowlSovereignsVoice()
	if !PlayerRef.HasPerk(WO_SovereignsVoice1)
		return
	endif

	shout howlShout

	if PlayerRef.HasPerk(WO_SovereignsVoice3)
		howlShout = WO_HowlWerewolfSovereignsVoice3
	elseif PlayerRef.HasPerk(WO_SovereignsVoice2)
		howlShout = WO_HowlWerewolfSovereignsVoice2
	else
		howlShout = WO_HowlWerewolfSovereignsVoice1
	endif

	PlayerRef.AddShout(howlShout)

EndFunction


;------------------------------------------------------------
Function AddHowlUnrelentingRoar()
	if !PlayerRef.HasPerk(WO_UnrelentingRoar1)
		return
	endif

	int playerLevel = PlayerRef.GetLevel()

	shout howlShout
	spell howlSpell
	float mult

	if PlayerRef.HasPerk(WO_UnrelentingRoar3)
		howlShout = WO_HowlWerewolfUnrelentingRoar3
		howlSpell = WO_HowlWerewolfUnrelentingRoarSpell3
		mult = 1.30

	elseif PlayerRef.HasPerk(WO_UnrelentingRoar2)
		howlShout = WO_HowlWerewolfUnrelentingRoar2
		howlSpell = WO_HowlWerewolfUnrelentingRoarSpell2
		mult = 1.15
			
	else
		howlShout = WO_HowlWerewolfUnrelentingRoar1
		howlSpell = WO_HowlWerewolfUnrelentingRoarSpell1
		mult = 1.0
	endif

	howlSpell.SetNthEffectMagnitude(1, playerLevel * mult)

	PlayerRef.AddShout(howlShout)

EndFunction


;------------------------------------------------------------
Function AddHowlCursedFlame()
	if !PlayerRef.HasPerk(WO_CursedFlame1)
		return
	endif

	shout howlShout

	if PlayerRef.HasPerk(WO_CursedFlame3)
		howlShout = WO_HowlWerewolfCursedFlame3
	elseif PlayerRef.HasPerk(WO_CursedFlame3)
		howlShout = WO_HowlWerewolfCursedFlame2
	else
		howlShout = WO_HowlWerewolfCursedFlame1
	endif

	PlayerRef.AddShout(howlShout)
	
EndFunction


;------------------------------------------------------------
Function AddHowlFuriousHowl()
	if !PlayerRef.HasPerk(WO_FuriousHowl1)
		return
	endif

	shout howlShout = WO_HowlWerewolfFuriousHowl

	PlayerRef.AddShout(howlShout)
	
EndFunction


;------------------------------------------------------------
Function AddHowlCloakOfShadows()
	if !PlayerRef.HasPerk(WO_CloakOfShadows1)
		return
	endif

	shout howlShout = WO_HowlWerewolfCloakOfShadows

	if WO_NecklacePowerOfShadows.Value > 0
		float damageToDeal = PlayerRef.GetAV("UnarmedDamage") / 2
		float staminaToAbsorb = ActorValueInfo.GetActorValueInfoByName("stamina").GetMaximumValue(PlayerRef) * 0.05

		WO_HowlWerewolfCloakOfShadowsCloak.SetNthEffectMagnitude(0, damageToDeal)
		WO_HowlWerewolfCloakOfShadowsCloak.SetNthEffectMagnitude(1, staminaToAbsorb)
	endif

	PlayerRef.AddShout(howlShout)
	
EndFunction


;------------------------------------------------------------
Function EstablishLeveledAbility()
	int playerLevel = PlayerRef.GetLevel()
	
	if playerLevel <= 50
		if playerLevel <= 10
			LeveledAbility = PlayerWerewolfLvl10AndBelowAbility
		elseif playerLevel <= 15
			LeveledAbility = PlayerWerewolfLvl15AndBelowAbility
		elseif playerLevel <= 20
			LeveledAbility = PlayerWerewolfLvl20AndBelowAbility
		elseif playerLevel <= 25
			LeveledAbility = PlayerWerewolfLvl25AndBelowAbility
		elseif playerLevel <= 30
			LeveledAbility = PlayerWerewolfLvl30AndBelowAbility
		elseif playerLevel <= 35
			LeveledAbility = PlayerWerewolfLvl35AndBelowAbility
		elseif playerLevel <= 40
			LeveledAbility = PlayerWerewolfLvl40AndBelowAbility
		elseif playerLevel <= 45
			LeveledAbility = PlayerWerewolfLvl45AndBelowAbility
		elseif playerLevel <= 50
			LeveledAbility = PlayerWerewolfLvl50AndBelowAbility
		endif
		
	elseif playerLevel <= 100
		if playerLevel <= 55
			LeveledAbility = WO_PlayerWerewolfLvl55AndBelowAbility
		elseif playerLevel <= 60
			LeveledAbility = WO_PlayerWerewolfLvl60AndBelowAbility
		elseif playerLevel <= 65
			LeveledAbility = WO_PlayerWerewolfLvl65AndBelowAbility
		elseif playerLevel <= 70
			LeveledAbility = WO_PlayerWerewolfLvl70AndBelowAbility
		elseif playerLevel <= 75
			LeveledAbility = WO_PlayerWerewolfLvl75AndBelowAbility
		elseif playerLevel <= 80
			LeveledAbility = WO_PlayerWerewolfLvl80AndBelowAbility
		elseif playerLevel <= 85
			LeveledAbility = WO_PlayerWerewolfLvl85AndBelowAbility
		elseif playerLevel <= 90
			LeveledAbility = WO_PlayerWerewolfLvl90AndBelowAbility
		elseif playerLevel <= 95
			LeveledAbility = WO_PlayerWerewolfLvl95AndBelowAbility
		elseif playerLevel <= 100
			LeveledAbility = WO_PlayerWerewolfLvl100AndBelowAbility
		endif
		
	elseif playerLevel <= 150
		if playerLevel <= 105
			LeveledAbility = WO_PlayerWerewolfLvl105AndBelowAbility
		elseif playerLevel <= 110
			LeveledAbility = WO_PlayerWerewolfLvl110AndBelowAbility
		elseif playerLevel <= 115
			LeveledAbility = WO_PlayerWerewolfLvl115AndBelowAbility
		elseif playerLevel <= 120
			LeveledAbility = WO_PlayerWerewolfLvl120AndBelowAbility
		elseif playerLevel <= 125
			LeveledAbility = WO_PlayerWerewolfLvl125AndBelowAbility
		elseif playerLevel <= 130
			LeveledAbility = WO_PlayerWerewolfLvl130AndBelowAbility
		elseif playerLevel <= 135
			LeveledAbility = WO_PlayerWerewolfLvl135AndBelowAbility
		elseif playerLevel <= 140
			LeveledAbility = WO_PlayerWerewolfLvl140AndBelowAbility
		elseif playerLevel <= 145
			LeveledAbility = WO_PlayerWerewolfLvl145AndBelowAbility
		elseif playerLevel <= 150
			LeveledAbility = WO_PlayerWerewolfLvl150AndBelowAbility
		endif
		
	elseif playerLevel <= 195
		if playerLevel <= 155
			LeveledAbility = WO_PlayerWerewolfLvl155AndBelowAbility
		elseif playerLevel <= 160
			LeveledAbility = WO_PlayerWerewolfLvl160AndBelowAbility
		elseif playerLevel <= 165
			LeveledAbility = WO_PlayerWerewolfLvl165AndBelowAbility
		elseif playerLevel <= 170
			LeveledAbility = WO_PlayerWerewolfLvl170AndBelowAbility
		elseif playerLevel <= 175
			LeveledAbility = WO_PlayerWerewolfLvl175AndBelowAbility
		elseif playerLevel <= 180
			LeveledAbility = WO_PlayerWerewolfLvl180AndBelowAbility
		elseif playerLevel <= 185
			LeveledAbility = WO_PlayerWerewolfLvl185AndBelowAbility
		elseif playerLevel <= 190
			LeveledAbility = WO_PlayerWerewolfLvl190AndBelowAbility
		elseif playerLevel <= 195
			LeveledAbility = WO_PlayerWerewolfLvl195AndBelowAbility
		endif
	else
		LeveledAbility = WO_PlayerWerewolfLvl200AndOverAbility
	endif

EndFunction


;------------------------------------------------------------
Function SetupFactions()
	if !__shiftingBack
		;------------------------------------------------------------
		; make everyone hate you
		;------------------------------------------------------------
		PlayerRef.SetAttackActorOnSight(true)
		PlayerRef.AddToFaction(PlayerWerewolfFaction)
		PlayerRef.AddToFaction(WerewolfFaction)
		
		;------------------------------------------------------------
		; set the crime factions
		;------------------------------------------------------------
		int counter = 0
		while (counter < WerewolfHateFactions.GetSize())
			(WerewolfHateFactions.GetAt(counter) as Faction).SetPlayerEnemy()
			counter += 1
		endwhile
		
		;------------------------------------------------------------
		; but they also don't know that it's you
		;------------------------------------------------------------
		Game.SetPlayerReportCrime(false)
		
		;------------------------------------------------------------
		; alert anyone nearby that they should now know the player is a werewolf
		;------------------------------------------------------------
		Game.SendWereWolfTransformation()

	else
		;------------------------------------------------------------
		; people don't hate you no more
		;------------------------------------------------------------
		PlayerRef.SetAttackActorOnSight(false)
		PlayerRef.RemoveFromFaction(PlayerWerewolfFaction)
		PlayerRef.RemoveFromFaction(WerewolfFaction)
		
		;------------------------------------------------------------
		; unset the crime factions
		;------------------------------------------------------------
		int counter = 0
		while (counter < WerewolfHateFactions.GetSize())
			(WerewolfHateFactions.GetAt(counter) as Faction).SetPlayerEnemy(false)
			counter += 1
		endwhile
		
		;------------------------------------------------------------
		; and you're now recognized
		;------------------------------------------------------------
		Game.SetPlayerReportCrime(true)
		
		;------------------------------------------------------------
		; alert anyone nearby that they should now know the player is a werewolf
		;------------------------------------------------------------
		Game.SendWereWolfTransformation()

	endif

EndFunction


;------------------------------------------------------------
Function SetupShiftBackTimeTracking()
	if WO_RingPowerHircines.Value
		return	; endless transformation
	endif
	
	;------------------------------------------------------------
	; recalculate times
	;------------------------------------------------------------
	__durationWarningTime = RealTimeSecondsToGameTimeDays(DurationWarningTimeSeconds)
	__feedExtensionTime   = RealTimeSecondsToGameTimeDays(FeedExtensionTimeSeconds)

	;------------------------------------------------------------
	; calculate when the player turns back
	;------------------------------------------------------------
	float currentTime = GameDaysPassed.Value
	float regressTime = currentTime + RealTimeSecondsToGameTimeDays(StandardDurationSeconds)
	PlayerWerewolfShiftBackTime.Value = regressTime

	;------------------------------------------------------------
	; shift back tracking
	;------------------------------------------------------------
	if !PlayerRef.IsEquipped(DA05HircinesRing)
		RegisterForUpdate(5)
	endif
	
EndFunction


;------------------------------------------------------------
; Time scale tools
;------------------------------------------------------------
float Function RealTimeSecondsToGameTimeDays(float realtime)
	float scaledSeconds = realtime * TimeScale.Value
	return scaledSeconds / (60 * 60 * 24)
EndFunction


;------------------------------------------------------------
float Function GameTimeDaysToRealTimeSeconds(float gametime)
	float gameSeconds = gametime * (60 * 60 * 24)
	return (gameSeconds / TimeScale.Value)
EndFunction


;------------------------------------------------------------
; Fix of vampire-lord post shift back dual weapons bug when only one hand equipes a weapon instead of both
;------------------------------------------------------------
Function EquippedWeaponsInBothHandsCheck()
	__leftHandWeapon = PlayerRef.GetEquippedWeapon(true)
	__rightHandWeapon = PlayerRef.GetEquippedWeapon(false)
		
EndFunction


;------------------------------------------------------------
Function UnequipWeaponInLeftHandIfNecessary()
	if __leftHandWeapon && __rightHandWeapon
		PlayerRef.UnequipItem(__leftHandWeapon, false, true)
	endif

EndFunction


;------------------------------------------------------------
Function EquipWeaponInLeftHandIfNecessary()
	if __leftHandWeapon && __rightHandWeapon
		PlayerRef.EquipItemEx(__leftHandWeapon, 2, false, false)
	endif
	
EndFunction

; ####### FUNCTIONS END
; ==============================================================================================
