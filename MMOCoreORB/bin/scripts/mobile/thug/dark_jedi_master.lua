dark_jedi_master = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_master",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "sith_shadow",
	faction = "sith_shadow",
	level = 300,
	chanceHit = 27.25,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 1,
	resists = {90,90,90,90,90,90,90,90,40},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "dark_jedi" },
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 300000},
				{group = "holocron_light", chance = 300000},
				{group = "power_crystals", chance = 1200000},
				{group = "ranged_weapons", chance = 1300000},
				{group = "melee_weapons", chance = 1300000},
				{group = "armor_attachments", chance = 2400000},
				{group = "clothing_attachments", chance = 2400000},
				{group = "dark_jedi_common", chance = 800000}
			},
				lootChance = 10000000,
		},
		{
			groups = {
				{group = "holocron_dark", chance = 300000},
				{group = "holocron_light", chance = 300000},
				{group = "power_crystals", chance = 1200000},
				{group = "ranged_weapons", chance = 1300000},
				{group = "melee_weapons", chance = 1300000},
				{group = "armor_attachments", chance = 2400000},
				{group = "clothing_attachments", chance = 2400000},
				{group = "dark_jedi_common", chance = 800000}
			},
				lootChance = 10000000,
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
			},
				lootChance = 2500000,
		},
	},
	

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "dark_jedi_weapons_gen4",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = lightsabermaster,
	secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(dark_jedi_master, "dark_jedi_master")
