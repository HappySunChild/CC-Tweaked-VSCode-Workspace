---@meta

---@class create.peripheral.RedstoneRequester
local RedstoneRequester = {
	---Gets the Redstone Requester's address.
	---@return string
	getAddress = function() end,
	---Sets the Redstone Requester's address to the given variable.
	---
	---If the address arg is nil, it'll unset the address.
	---@param address? string
	setAddress = function(address) end,

	---Gets the Redstone Requester's configuration.
	---@return create.logistics.RequestConfiguration
	getConfiguration = function() end,
	---Sets the Redstone Requester's configuration.
	---@param configuration create.logistics.RequestConfiguration
	setConfiguration = function(configuration) end,

	---Gets the Redstone Requester's request data.
	---@return peripheral.InventoryItem[]
	getRequest = function() end,
	---Sets the packagers request, the same one as
	---the one available in the GUI - maximum of 9 arguments.
	---@param ... peripheral.InventoryItem
	setRequest = function(...) end,

	---Requests for a package in the network using the
	---Redstone Requester's configuration, request data and address.
	request = function() end,

	---Sets the packagers configuration with up to 9 slots for autocrafting.
	---@param amount integer
	---@param ... string?
	setCraftingRequest = function(amount, ...) end,
}
