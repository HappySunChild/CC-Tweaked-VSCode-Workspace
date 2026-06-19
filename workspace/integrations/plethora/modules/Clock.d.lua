---@meta

---@class plethora.module.Clock
local Clock = {
	---Returns the angle the sun or moon lies at in degrees.
	---@return number celestial_angle 0 is directly overhead.
	getCelestialAngle = function() end,

	---Returns the game time in ticks.
	---@return integer time_ticks
	getTime = function() end,

	---Returns the current day of this world.
	---@return integer world_day
	getDay = function() end,

	---Returns the current phase of the moon.
	---@return integer moon_phase
	getMoonPhase = function() end,
}
