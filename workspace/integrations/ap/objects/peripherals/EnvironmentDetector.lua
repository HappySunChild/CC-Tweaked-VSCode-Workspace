---@meta

---The Environment Detector provides current information from the environment like the current time, the current moon phase, the light level of the block and many more.
---@class ap.peripheral.EnvironmentDetector
local EnvironmentDetector = {
	---Returns the current biome the Environment Detector is in.
	---@return string biome_id
	getBiome = function() end,

	---Returns the block light level at the Environment Detector.
	---@return number light_level
	getBlockLightLevel = function() end,

	---Returns the day light level of the current world.
	---@return number light_level
	getDayLightLevel = function() end,

	---Returns the current sky light level.
	---@return number light_level
	getSkyLightLevel = function() end,

	---Returns the name of the dimension the Environment Detector is in.
	---@return string dimension_name
	getDimension = function() end,

	---Returns the name of the dimension the Environment Detector is in prefixed with the provider name (ex. `minecraft:overworld`)
	---@see ap.peripheral.EnvironmentDetector.getDimension
	---@return string dimension_name
	getDimensionPaN = function() end,

	---Returns the provider of the dimension the Environment Detector is in.
	---@return string provider_name
	getDimensionProvider = function() end,

	---Returns the current moon phase's id.
	---
	---# Mapping
	---0 = Full moon
	---1 = Waning gibbous
	---2 = Third quarter
	---3 = Waning crescent
	---4 = New moon
	---5 = Waxing crescent
	---6 = First quarter
	---7 = Waxing gibbous
	---@return number phase_id
	getMoonId = function() end,

	---Returns the current moon phases' name.
	---@return string phase_name
	getMoonName = function() end,

	---Returns the daytime of the current world.
	---@return number time
	getTime = function() end,

	---Returns whether the current dimension matches the specified dimension.
	---@param dimension string
	---@return boolean matches
	isDimension = function(dimension) end,

	---Returns whether the current moon phase matches the specified moon phase id.
	---@param moon_phase_id number
	---@return boolean matches
	isMoon = function(moon_phase_id) end,

	---Returns whether it is raining.
	---@return boolean is_raining
	isRaining = function() end,

	---Returns whether it is sunny.
	---@return boolean is_sunny
	isSunny = function() end,

	---Returns whether it is thundering.
	---@return boolean is_thundering
	isThunder = function() end,

	---Returns whether the current chunk the Environment Detector is in is a slime chunk.
	---@return boolean is_slime_chunk
	isSlimeChunk = function() end,

	---Returns a list of all registered dimensions for the current world.
	---@return string[] dimensions
	listDimensions = function() end,

	---Returns a list of all entities in the specified range.
	---@return ap.info.Entity[]
	scanEntities = function() end,
}
