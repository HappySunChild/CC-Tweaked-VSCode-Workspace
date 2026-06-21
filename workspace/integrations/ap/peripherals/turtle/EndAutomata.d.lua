---@meta

---@class ap.peripheral.turtle.EndAutomata : ap.peripheral.turtle.WeakAutomata
local EndAutomata = {
	---Returns a list of names of all saved waypoints.
	---@return string[] waypoint_names
	points = function() end,

	---Saves the turtle's current location as a warp point with the specified name, which can be teleported.
	---@param name string
	---@return true? success
	---@return string? err_message
	savePoint = function(name) end,

	---Deletes the waypoint with the specified name.
	---@return true? success
	---@return string? err_message
	deletePoint = function(name) end,

	---Returns the [taxicab distance](https://en.wikipedia.org/wiki/Taxicab_geometry) from the turtle's current location, to the location of the specified waypoint.
	---@param name string
	---@return number? distance
	---@return string? err_message
	distanceToPoint = function(name) end,

	---Returns the curernt cooldown for warp operations.
	---@return number cooldown
	getWarpCooldown = function() end,

	---Returns the fuel point cost to warm from the current location to the specified waypoint.
	---@param name string
	---@return number? fuel_cost
	---@return string? err_message
	estimateWarpCost = function(name) end,

	---Teleports the turtle to the specified waypoint.
	---@return true? success
	---@return string? err_message
	warpToPoint = function(name) end,
}
