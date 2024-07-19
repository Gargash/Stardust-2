singing_mountain_clan_councilwoman = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_councilwoman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 253,
	chanceHit = 23.5,
	damageMin = 1395,
	damageMax = 1500,
	baseXp = 24180,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 1,
	resists = {10,35,35,10,10,10,10,10,20},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_councilwoman.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1500000},
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "melee_weapons", chance = 1000000},
				{group = "ranged_weapons", chance = 1000000},
				{group = "wearables_rare", chance = 500000}
			},
				lootChance = 10000000,
		},
		{
			groups = {
				{group = "junk", chance = 1500000},
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "melee_weapons", chance = 1000000},
				{group = "ranged_weapons", chance = 1000000},
				{group = "wearables_rare", chance = 500000}
			},
				lootChance = 7500000,
		},
		{
			groups = {
				{group = "junk", chance = 1500000},
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "melee_weapons", chance = 1000000},
				{group = "ranged_weapons", chance = 1000000},
				{group = "wearables_rare", chance = 500000}
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
	primaryAttacks = merge(pikemanmaster,swordsmanmaster,fencermaster,brawlermaster,forcepowermaster),
	secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_councilwoman, "singing_mountain_clan_councilwoman")
