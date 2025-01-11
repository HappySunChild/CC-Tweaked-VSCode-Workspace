---@meta

---@class Modules.DaylightDetector
local daylightDetector = {}

---The light level from surrounding blocks.
---@return integer lightLevel
function daylightDetector.getBlockLight() end

---The light level from the sun.
---@return integer lightLevel
function daylightDetector.getSkyLight() end

---The weather in the current world.
---@return string weather
function daylightDetector.getWeather() end

---Whether this world has a sky.
---@return boolean hasSky
function daylightDetector.hasSky() end