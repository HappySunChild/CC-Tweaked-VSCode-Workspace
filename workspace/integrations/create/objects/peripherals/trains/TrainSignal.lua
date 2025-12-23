---@meta

---@class create.peripheral.TrainSignal
local TrainSignal = {
	---Returns the train signal's currently displayed signal, as how the trains see it.
	---@return create.train.SignalState
	getState = function() end,

	---Returns if the signal is forced red by the computer.
	---@return boolean forced
	isForcedRed = function() end,
	---Forces the signal to be red regardless of redstoen and free space ahead.
	---
	---Goes back to default behavior when losing connection with the computer.
	---@param forced boolean
	setForcedRed = function(forced) end,

	---Gets the train signal's signal type (Normally toggled with a wrench) as how the trains see it.
	---@return create.train.SignalType
	getSignalType = function() end,

	---Cycles through the train signal's signal types like if you used a wrench on it.
	cycleSignalType = function() end,

	---Returns a list of train names that are blocking the track.
	---@return string[] names
	listBlockingTrainNames = function() end,
}
