cin_drallig = Creature:new {
  objectName = "",
  customName = "Cin Drallig (Jedi Temple Battlemaster)",
  socialGroup = "rebel",
  faction = "rebel",
  mobType = MOB_NPC,
  level = 126,
  chanceHit = 4,
  damageMin = 1345,
  damageMax = 1700,
  baseXp = 11953,
  baseHAM = 2222000,
  baseHAMmax = 2222000,
  armor = 1,
  resists = {99,99,99,99,99,99,99,99,99},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = ATTACKABLE + AGGRESSIVE,
  creatureBitmask = PACK + KILLER,
  diet = HERBIVORE,
  optionsBitmask = AIENABLED,
  scale = 1.2,
  lightsaberColor = 2,
  
  templates = {
    "object/mobile/tatooine_npc/hedon_istee.iff"},
  outfit = "cin_drallig_outfit",
  lootGroups = {
      {
      groups = {
        {group = "holocron_dark", chance = 140000},
        {group = "holocron_light", chance = 140000},
        {group = "power_crystals", chance = 200000},
        {group = "kaas_weapons", chance = 10000},
        {group = "color_crystals", chance = 1000000},
        {group = "melee_weapons", chance = 1000000},
        {group = "armor_attachments", chance = 500000},
        {group = "clothing_attachments", chance = 500000},
        {group = "nge_houses_all", chance = 10000}        
      },
      lootChance = 4000000
    }
  },
  primaryWeapon = "light_jedi_weapons_gen4",
  secondaryWeapon = "unarmed",
  conversationTemplate = "",

  -- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
  -- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
  primaryAttacks = lightsabermaster,
  secondaryAttacks = forcepowermaster
}

CreatureTemplates:addCreatureTemplate(cin_drallig, "cin_drallig")