---@meta

---@class peripheral.InventoryItem
---@field name string
---@field count integer
---@field nbt string?

---@class peripheral.DetailedInventoryItem : peripheral.InventoryItem
---@field displayName string
---@field maxCount integer
---@field tags? table<string, true>
---@field damage? integer
---@field maxDamage? integer
---@field durability? integer

---@class peripheral.FluidTankInfo
---@field amount integer
---@field name string

---@alias peripheral.Side
---| '"top"'
---| '"bottom"'
---| '"left"'
---| '"right"'
---| '"front"'
---| '"back"'

---@alias peripheral.WrappedPeripheral any

---Find and control peripherals attached to this computer.
---
---Peripherals are blocks (or turtle and pocket computer upgrades) which can be
---controlled by a computer. For instance, the `speaker` peripheral allows a computer
---to play music and the `monitor` peripheral allows you to display text in the world.
---
---<h2 align="center"><a href="https://tweaked.cc/module/peripheral.html">Official Documentation</a></h2>
---@class peripherallib
local peripheral = {
	---Provides a list of all peripherals available.
	---
	---If a device is located directly next to the system, then its name will be
	---listed as the side it is attached to. If a device is attached via a Wired Modem,
	---then it'll be reported according to its name on the wired network.
	---@return string[] peripherals
	getNames = function() end,

	---Get all available methods for the peripheral with the given name.
	---@param name peripheral.Side|string The name of the peripheral to find.
	---@return string[]? methods A list of methods provided by this peripheral, or `nil` if it is not present.
	getMethods = function(name) end,

	---Determines if a peripheral is present with the given name.
	---@param name peripheral.Side|string The side or network name that you want to check.
	---@return boolean isPresent If a peripheral is present with the given name.
	isPresent = function(name) end,

	---Get the types of a named or wrapped peripheral.
	---@param peripheral string|peripheral.WrappedPeripheral The name of the peripheral to find, or a wrapped peripheral instance.
	---@return string ... The peripheral's types, or `nil` if it is not present.
	getType = function(peripheral) end,

	---Get the name of a peripheral wrapped with `peripheral.wrap`.
	---@param peripheral peripheral.WrappedPeripheral The peripheral to get the name of.
	---@return string name The name of the given peripheral.
	getName = function(peripheral) end,

	---Check if a peripheral is of a particular type.
	---@param peripheral string|peripheral.WrappedPeripheral The name of the peripheral or a wrapped peripheral instance.
	---@param type string The type to check.
	---@return boolean? hasType If a peripheral has a particular type, or `nil` if it is not present.
	hasType = function(peripheral, type) end,

	---Call a method on the peripheral with the given name.
	---@param name string The name of the peripheral to invoke the method on.
	---@param method string The name of the method
	---@param ... any Additional arguments to pass to the method
	---@return any ... The return values of the peripheral method.
	call = function(name, method, ...) end,

	---Get a table containing all functions available on a peripheral.
	---These can then be called instead of using `peripheral.call` every time.
	---@param name peripheral.Side|string The name of the peripheral to wrap.
	---@return peripheral.WrappedPeripheral wrappedPeripheral The table containing the peripheral's methods, or nil if there is no peripheral present with the given name.
	wrap = function(name) end,

	---Find all peripherals of a specific type, and return the wrapped peripherals.
	---@param type string The type of peripheral to look for.
	---@param filter? fun(name: string, wrapped: peripheral.WrappedPeripheral): boolean A filter function, which takes the peripheral's name and wrapped table and returns if it should be included in the result.
	---@return peripheral.WrappedPeripheral ... 0 or more wrapped peripherals matching the given filters.
	find = function(type, filter) end,
}
