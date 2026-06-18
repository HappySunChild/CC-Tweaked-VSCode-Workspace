---@meta

---@class create.peripheral.TrainStation
local TrainStation = {
	---Assembles a new train at the station. The station must be in assembly mode before calling this function.
	---
	---This function also causes the station to exit assembly mode after the train is done assembling.
	assemble = function() end,

	---Disassembles the station's currently present train. The station must not be in assembly mode.
	disassemble = function() end,

	---Sets the station's assembly mode.
	---@param active boolean
	setAssemblyMode = function(active) end,

	---Returns whether the station is currently in assembly mode.
	---@return boolean
	isInAssemblyMode = function() end,

	---Returns the station's current name.
	---@return string name
	getStationName = function() end,

	---Sets the station's name.
	---@param name string
	setStationName = function(name) end,

	---Returns whether a train is currently present at the station.
	---@return boolean present
	isTrainPresent = function() end,

	---Returns whether a train is imminently arriving at the station.
	---
	---Imminent is defined as being within 30 blocks of the station.
	---@return boolean imminent
	isTrainImminent = function() end,

	---Returns whether a train is enroute and navigating to the station.
	---@return boolean enroute
	isTrainEnroute = function() end,

	---Returns the currently present train's name.
	---@return string name
	getTrainName = function() end,

	---Sets the currently present train's name.
	---@param name string
	setTrainName = function(name) end,

	---Returns whether the currently present train has a schedule.
	---@return boolean exists
	hasSchedule = function() end,

	---Returns the currently present train's schedule.
	---@return create.train.Schedule
	getSchedule = function() end,

	---Sets the currently present train's schedule. This will overwrite the currently set schedule.
	---@param schedule create.train.Schedule
	setSchedule = function(schedule) end,

	---Tests if a route to the station named `destination` is possible from this station.
	---@param destination string
	---@return boolean reachable
	---@return string? reason
	canTrainReach = function(destination) end,

	---Measures the distance between the station named `destination` and this station.
	---@param destination string
	---@return number distance
	---@return string? reason
	distanceTo = function(destination) end,
}
