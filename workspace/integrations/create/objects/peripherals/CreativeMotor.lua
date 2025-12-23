---@meta

---@class create.peripheral.CreativeMotor
local CreativeMotor = {
	---Sets the creative motor's generated speed.
	---@param speed integer The generated speed in RPM. Must be an integer within the range of `[-256..256]`
	setGeneratedSpeed = function(speed) end,

	---Returns the creative motor's current generated speed.
	---@return integer speed
	getGeneratedSpeed = function() end,
}
