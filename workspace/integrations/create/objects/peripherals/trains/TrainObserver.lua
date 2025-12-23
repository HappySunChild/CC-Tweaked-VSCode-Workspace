---@meta

---@class create.peripheral.TrainObserver
local TrainObserver = {
	---Returns whether a train is currently within the train observer's range.
	---@return boolean passing
	isTrainPassing = function() end,

	---Gets the name of a train within the train observer's range.
	---@return string? name
	getPassingTrainName = function() end,
}
