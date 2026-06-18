---@meta

---@class create.peripheral.SequencedGearshift
local SequencedGearshift = {
	---Rotates connected components by a set angle.
	---@param distance number Angle to rotate the shaft by in degrees.
	---@param modifier? integer Speed modifier which can be used to reverse rotation. Must be an integer within the range of `[-2..2]`. Values out of this range are ignored and the default of 1 is used.
	rotate = function(distance, modifier) end,

	---Rotates connected components to move connected piston, pulley or gantry contractions by a set distance.
	---@param distance integer Distance to move connected piston, pulley or gantry contraptions by.
	---@param modifier integer Speed modifier which can be used to reverse rotation. Must be an integer within the range of `[-2..2]`. Values out of this range are ignored and the default of 1 is used.
	move = function(distance, modifier) end,

	---Returns whether the sequenced gearshift is currently spinning.
	---@return boolean running
	isRunning = function() end,
}
