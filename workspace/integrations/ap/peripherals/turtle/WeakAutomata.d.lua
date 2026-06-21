---@meta

---@class ap.peripheral.turtle.WeakAutomata
local WeakAutomata = {
	---Returns the amount of fuel stored in the turtle.
	---@return number fuel_level
	getFuelLevel = function() end,

	---Returns the maximum amount of fuel points that the turtle can store.
	---@return number max_fuel_level
	getFuelMaxLevel = function() end,

	---Returns the turtle's current fuel consumption rate.
	---@return number consumption_rate
	getFuelConsumptionRate = function() end,

	---Sets the fuel consumption rate of the turtle. Returns true if the consumption rate was successfully set, or nil and an error message.
	---@param rate number
	---@return boolean? success
	---@return string? err_message
	setFuelConsumptionRate = function(rate) end,

	---Returns the current cooldown for dig operations.
	---@return number cooldown
	getDigCooldown = function() end,

	---Returns the current cooldown for item collection operations.
	---@return number cooldown
	getSuckCooldown = function() end,

	---Returns the current cooldown for block interaction operations.
	getUseOnBlockCooldown = function() end,

	---Returns the configuration values for this automata.
	---@return table
	getConfiguration = function() end,

	---Returns a table containing information about the block infront of the turtle, or nil with an error message if the operation fails.
	---@return cc.types.blocks.BlockDetails? info
	---@return string? err_message
	lookAtBlock = function() end,

	---Returns a table containing information about the entity infront of the turtle, or nil with an error message if the operation fails.
	---@return ap.types.info.Entity? info
	---@return string? err_message
	lookAtEntity = function() end,

	---Tries to dig the block that the turtle is looking at with the current item.
	---Returns whether the block was mined successfully, or nil with an error message if the operation failed.
	---@return true? success
	---@return string? err_message
	digBlock = function() end,

	---Returns a list of items that are around the turtle, or nil with an error message if the operation fails.
	---@return table? items
	---@return string? err_message
	scanItems = function() end,

	---Tries to collect all items, or the specified amount, around the turtle.
	---Returns true if the items were successfully collected, or nil with an error message if the operation failed.
	---@param count number?
	---@return true? success
	---@return string? err_message
	collectItems = function(count) end,

	---Tries to collect all items, or the specified amount, around the turtle.
	---Returns true if the items were successfully collected, or nil with an error message if the operation failed.
	---@param item string
	---@param count number?
	---@return true? success
	---@return string? err_message
	collectSpecificItem = function(item, count) end,

	---Tries to feed the entity that is in front of the turtle to the mechanic soul upgrade in the turtle's selected slot.
	---Returns true and the interaction result as a string if the operation succeeded, or nil and an error message if the operation failed.
	---@return true? success
	---@return string message
	feedSoul = function() end,

	---Tries to fuel the turtle using an energy cell in the turtle's inventory.
	---Returns the amount of fuel gained, or nil and an error message if the operation failed.
	---@return number? fuel
	---@return string? err_message
	chargeTurtle = function(max) end,
}
