---@meta

---Matches the default [Redstone API](https://tweaked.cc/module/redstone.html).
---The functions take a direction instead of a direction.
---@class tom.peripheral.RedstonePort
local RedstonePort = {
	---Returns a tuple containing the six directions of the port. Namely, "down", "up", "north", "south", "west" and "east".
	---@return "down"
	---@return "up"
	---@return "north"
	---@return "south"
	---@return "west"
	---@return "east"
	getSides = function() end,

	---Get the current redstone input of a specific direction.
	---@param direction cc.types.Direction The direction to get.
	---@return boolean on Whether the redstone input is on or off.
	getInput = function(direction) end,

	---Turn the redstone signal of a specific direction on or off.
	---@param direction cc.types.Direction The direction to set.
	---@param on boolean Whether the redstone signal should be on or off. When on, a signal strength of 15 is emitted.
	setOutput = function(direction, on) end,

	---Get the current redstone output of a specific direction.
	---@param direction cc.types.Direction The direction to get.
	---@return boolean output Whether the redstone output is on or off.
	getOutput = function(direction) end,

	---Set the redstone signal strength for a specific direction.
	---@param direction cc.types.Direction The direction to set.
	---@param value number The signal strength between 0 and 15.
	setAnalogOutput = function(direction, value) end,

	---Get the redstone output signal strength for a specific direction.
	---@param direction cc.types.Direction The direction to get.
	---@return number output The output signal strength, between 0 and 15.
	getAnalogOutput = function(direction) end,

	---Set the bundled cable output for a specific direction.
	---@param direction cc.types.Direction The direction to set.
	---@param output number The color bitmask to set.
	setBundledOutput = function(direction, output) end,

	---Get the bundled cable output for a specific direction.
	---@param direction cc.types.Direction The direction to get.
	---@return number output The bundle cable's output.
	getBundledOutput = function(direction) end,

	---Get the bundled cable input for a specific direction.
	---@param direction cc.types.Direction The direction to get.
	---@return number input The bundle cable's input.
	getBundledInput = function(direction) end,

	---Determine if a specific combination of colors are on for the given direction.
	---@param direction cc.types.Direction The direction to test.
	---@param mask number The mask to test.
	---@return boolean on If the colors are on.
	testBundledInput = function(direction, mask) end,
}
