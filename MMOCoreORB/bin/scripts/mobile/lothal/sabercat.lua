sabercat = Creature:new {
	objectName = "@mob/creature_names:gurreck",
	customName = "a sabercat",
	socialGroup = "gurreck",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 50,
	chanceHit = 0.5,
	damageMin = 395,
	damageMax = 1000,
	baseXp = 4825,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 0,
	resists = {130,130,-1,150,150,-1,150,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 123,
	hideType = "hide_wooly",
	hideAmount = 123,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurreck.iff"},
	controlDeviceTemplate = "object/intangible/pet/gurreck_hue.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(sabercat, "sabercat")
