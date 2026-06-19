---@meta

---@class plethora.module.DaylightDetector
local DaylightDetector = {
	---Returns the light level from surrounding blocks.
	---@return integer block_light_level
	getBlockLight = function() end,

	---Returns the light level from the sky.
	---@return integer sky_light_level
	getSkyLight = function() end,

	---Returns the weather in the current world.
	---@return string weather
	getWeather = function() end,

	---Returns whether this world has a sky.
	---@return boolean has_sky
	hasSky = function() end,
}
