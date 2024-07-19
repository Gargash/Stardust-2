nightsister_elder = Creature:new {
	objectName = "@mob/creature_names:nightsister_elder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 350,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 1750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 1,
	resists = {85,85,85,85,85,85,85,85,60},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 800000},
				{group = "nightsister_rare", chance = 2200000},
				{group = "junk", chance = 1700000},
				{group = "armor_attachments", chance = 1600000},
				{group = "clothing_attachments", chance = 1600000},
				{group = "ranged_weapons", chance = 800000},
				{group = "melee_weapons", chance = 800000},
				{group = "wearables_scarce", chance = 500000}
			},
				lootChance = 10000000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 800000},
				{group = "nightsister_rare", chance = 2200000},
				{group = "junk", chance = 1700000},
				{group = "armor_attachments", chance = 1600000},
				{group = "clothing_attachments", chance = 1600000},
				{group = "ranged_weapons", chance = 800000},
				{group = "melee_weapons", chance = 800000},
				{group = "wearables_scarce", chance = 500000}
			},
				lootChance = 7500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 800000},
				{group = "nightsister_rare", chance = 2200000},
				{group = "junk", chance = 1700000},
				{group = "armor_attachments", chance = 1600000},
				{group = "clothing_attachments", chance = 1600000},
				{group = "ranged_weapons", chance = 800000},
				{group = "melee_weapons", chance = 800000},
				{group = "wearables_scarce", chance = 500000}
			},
				lootChance = 3500000,
		},
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "force_sword",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster),
	secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(nightsister_elder, "nightsister_elder")
