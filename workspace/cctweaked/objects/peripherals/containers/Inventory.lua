---@meta

---Methods for interacting with inventories.
---@class peripheral.Inventory
local Inventory = {
	---Get the size of this inventory.
	---@return integer slots The number of slots in this inventory.
	size = function() end,

	---List all items in this inventory. This returns a table, with an entry for each slot.
	---
	---The returned table is sparse, and so empty slots will be nil - it is recommended to loop over using `pairs` rather than `ipairs`.
	---@return peripheral.InventoryItem[] All items in this inventory.
	list = function() end,

	---Get detailed information about an item.
	---@param slot integer The slot to get information about.
	---@return peripheral.DetailedInventoryItem info Information about the item in this slot, or nil if not present.
	getItemDetail = function(slot) end,

	---Get the maximum number of items which can be stored in this slot.
	---@param slot integer The slot.
	---@return integer max The maximum number of items in this slot.
	getItemLimit = function(slot) end,

	---Push items *from this inventory* into another connected one.
	---
	---This allows you to push items in an inventory to another inventory *on the same wired network*.
	---**Both inventories must be attached to wired modems which are connected via a cable.**
	---@param toName string The name of the peripheral/inventory to push to. This is the string given to `peripheral.wrap`, and displayed by the wired modem.
	---@param fromSlot integer The slot in the current inventory to move items to.
	---@param limit? integer The maximum number of items to move. Defaults to the current stack limit.
	---@param toSlot? integer The slot in the target inventory to move to. If not given, the item will be inserted into any slot.
	---@return integer transferred The number of transferred items.
	pushItems = function(toName, fromSlot, limit, toSlot) end,

	---Pull items from a connected inventory *into this inventory*.
	---
	---This allows you to push items in an inventory to another inventory *on the same wired network*.
	---**Both inventories must be attached to wired modems which are connected via a cable.**
	---@param fromName string The name of the peripheral/inventory to push to. This is the string given to `peripheral.wrap`, and displayed by the wired modem.
	---@param fromSlot integer The slot in the source inventory to move items from.
	---@param limit? integer The maximum number of items to move. Defaults to the current stack limit.
	---@param toSlot? integer The slot in current inventory to move to. If not given, the item will be inserted into any slot.
	---@return integer transferred The number of transferred items.
	pullItems = function(fromName, fromSlot, limit, toSlot) end,
}
