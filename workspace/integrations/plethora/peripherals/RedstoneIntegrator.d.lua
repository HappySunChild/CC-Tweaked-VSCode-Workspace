---@meta

---The redstone integrator allows you to transmit redstone signals through networking cable, just like you would on a computer.
---
---The redstone integrator acts as any normal peripheral, providing an API very similar to the default `redstone` API.
---Simply place it down somewhere, attach it to a wired modem and wrap it as a peripheral.
---@class plethora.peripherals.RedstoneIntegrator : cc.redstonelib
local RedstoneIntegrator = {
	---Returns a table containing the six directions of the Redstone Integrator. Namely, "down", "up", "north", "south", "west" and "east".
	---@return cc.types.peripheral.Side[]
	getSides = function() end,

	---Get the current redstone input of a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to get.
	---@return boolean on Whether the redstone input is on or off.
	getInput = function(direction) end,

	---Turn the redstone signal of a specific direction on or off.
	---@param direction cc.types.peripheral.Direction The direction to set.
	---@param on boolean Whether the redstone signal should be on or off. When on, a signal strength of 15 is emitted.
	setOutput = function(direction, on) end,

	---Get the current redstone output of a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to get.
	---@return boolean output Whether the redstone output is on or off.
	getOutput = function(direction) end,

	---Set the redstone signal strength for a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to set.
	---@param value number The signal strength between 0 and 15.
	setAnalogOutput = function(direction, value) end,

	---Get the redstone output signal strength for a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to get.
	---@return number output The output signal strength, between 0 and 15.
	getAnalogOutput = function(direction) end,

	---Set the bundled cable output for a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to set.
	---@param output number The color bitmask to set.
	setBundledOutput = function(direction, output) end,

	---Get the bundled cable output for a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to get.
	---@return number output The bundle cable's output.
	getBundledOutput = function(direction) end,

	---Get the bundled cable input for a specific direction.
	---@param direction cc.types.peripheral.Direction The direction to get.
	---@return number input The bundle cable's input.
	getBundledInput = function(direction) end,

	---Determine if a specific combination of colors are on for the given direction.
	---@param direction cc.types.peripheral.Direction The direction to test.
	---@param mask number The mask to test.
	---@return boolean on If the colors are on.
	testBundledInput = function(direction, mask) end,
}
