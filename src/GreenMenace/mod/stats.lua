local CharacterBuilder = include("lib.CharacterTemplateLib")

local shronkie = CharacterBuilder.newCharacterSet("Shronkie")

-- Normal Version

shronkie:addCostume("character_ears_shronkie")

shronkie:addItem(CollectibleType.COLLECTIBLE_JUPITER, true)
shronkie:setTrinket(TrinketType.TRINKET_GIGANTE_BEAN)
shronkie:setPocketItem(PillEffect.PILLEFFECT_BAD_GAS, true)

local normalStats = CharacterBuilder.newStatTable()
normalStats.Damage = 4.50
normalStats.Firedelay = 2.54
normalStats.Range = 5.50
normalStats.Speed = 1.10
normalStats.Luck = -1.00
normalStats.criticalChance = 0
normalStats.criticalMultiplier = 2

shronkie:setStats(normalStats)

-- Tainted version

shronkie:addCostume("character_ears_shronkie", true)

shronkie:setTrinket(TrinketType.TRINKET_BUTT_PENNY, true)
shronkie:addItem(CollectibleType.COLLECTIBLE_MONTEZUMAS_REVENGE, true, true)
shronkie:addItem(CollectibleType.COLLECTIBLE_FLUSH, false, true)

local taintedStats = CharacterBuilder.newStatTable()
taintedStats.Damage = 4.00
taintedStats.Firedelay = 2.24
taintedStats.Shotspeed = 0.80
taintedStats.Range = 7.50
taintedStats.Speed = 0.80
taintedStats.Tearflags = TearFlags.TEAR_POISON
taintedStats.Tearcolor = Color(0.376, 0.168, 0.0, 1.0, 0, 0, 0)
taintedStats.Luck = 1.00

shronkie:setStats(taintedStats, true)

return CharacterBuilder.build()
