---@meta

---@class Modules.Clock
local clock = {}

---The angle the sun or moon lies at in degrees.
---@return number angle
function clock.getCelestialAngle() end

---The current day of this world
---@return integer day
function clock.getDay() end

---The current phase of the moon
---@return integer phase
function clock.getMoonPhase() end

---The game time in ticks.
---@return integer timeTicks
function clock.getTime() end