---@meta

---@class create.peripheral.Packager
local Packager = {
	---Gets the Packager's address.
	---@return string
	getAddress = function() end,

	---Sets the Packager's address to the given variable until it tries to make a package
	---with no computer attached, at which point it forgets about it and goes back to normal behavior.
	---@param address? string
	setAddress = function(address) end,

	---Get an interactive `Package` object for the package currently held by the packager.
	---@return create.Package
	getPackage = function() end,

	---Activates the packager like if it was powered by redstone. It operates by the same rule as
	---a button press, but unlike a redstone signal, returns a value on if it actually succeeded at making a package.
	---@return boolean success
	makePackage = function() end,

	---Gets detailed information about an item in the connected inventory.
	---@param slot integer
	---@return peripheral.InventoryItem?
	getItemDetail = function(slot) end,

	---List all items in the connected inventory. This returns a table, with an entry for each slot.
	---@return peripheral.InventoryItem[]
	list = function() end,
}
