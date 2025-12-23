---@meta

---@class create.peripheral.Frogport
local Frogport = {
	---Gets the Frogport's address.
	---@return string address
	getAddress = function() end,

	---Sets the Frogport's address to the given variable.
	---
	---If the address arg is nil, it'll unset the address.
	---@param address? string
	setAddress = function(address) end,

	---Gets the Frogport's configuration.
	---@return create.logistics.PortConfiguration
	getConfiguration = function() end,

	---Sets the Frogport's configuration.
	---@param configuration create.logistics.PortConfiguration
	setConfiguration = function(configuration) end,

	---Get detailed information about an item in the Frogport's inventory.
	---@param slot integer
	---@return peripheral.InventoryItem?
	getItemDetail = function(slot) end,

	---List all items in the Frogport's inventory. This returns a table, with an entry for each slot.
	---@return peripheral.InventoryItem[]
	list = function() end,
}
