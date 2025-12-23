---@meta

---@class create.peripheral.Stressometer
local Stressometer = {
	---Returns the connected network's current stress level.
	---@return number stress Tge current stress level in SU.
	getStress = function() end,

	---Returns the connected network's total stress capacity.
	---@return number capacity The total stress capacity in SU.
	getStressCapacity = function() end,
}
