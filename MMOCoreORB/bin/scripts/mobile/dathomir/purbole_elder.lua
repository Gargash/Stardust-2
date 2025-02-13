purbole_elder = Creature:new {
	objectName = "@mob/creature_names:purbole_elder",
	socialGroup = "purbole",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 24,
	chanceHit = 0.35,
	damageMin = 190,
	damageMax = 200,
	baseXp = 2443,
	baseHAM = 7700,
	baseHAMmax = 9400,
	armor = 0,
	resists = {120,125,10,-1,-1,170,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 75,
	hideType = "hide_bristley",
	hideAmount = 150,
	boneType = "bone_mammal",
	boneAmount = 75,
	milk = 0,
	tamingChance = 0,
	ferocity = 7,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/purbole_elder.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.15,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"posturedownattack",""}, {"stunattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(purbole_elder, "purbole_elder")
