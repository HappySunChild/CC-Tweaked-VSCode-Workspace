---@meta

---@class create.peripheral.RotationalSpeedController
local RotationalSpeedController = {
	---Sets the rotation speed controller's target speed.
	---@param speed integer The target speed in RPM. Must be an integer within the range of `[-256..256]`
	setTargetSpeed = function(speed) end,

	---Returns the rotation speed controller's current target speed.
	---@return integer speed
	getTargetSpeed = function() end,
}
