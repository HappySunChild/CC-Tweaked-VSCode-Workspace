---@meta

---@class plethora.Inventory : plethora.Documented
local Inventory = {
	---Suck an item from the ground.
	---@param slot? integer
	---@param limit? integer
	suck = function(slot, limit) end,

	---Drop an item on the ground. Returns the number of items dropped.
	---@param slot integer
	---@param limit? integer
	---@param direction? string
	drop = function(slot, limit, direction) end,

	---Returns the size of the inventory.
	---@return integer size
	size = function() end,

	---Returns a list of all available inventories which can be transferred to or from.
	---@param location? string
	getTransferLocations = function(location) end,

	---Returns the item at the specified slot.
	---@param slot integer
	---@return plethora.ItemStack item
	getItem = function(slot) end,

	---Returns the metadata of item at the specified slot.
	---@param slot integer
	---@return plethora.item.ItemMetadata metadata
	getItemMeta = function(slot) end,

	---Pull items to this inventory from another inventory. Returns the amount transferred.
	---@param from_name string
	---@param from_slot integer
	---@param limit? integer
	---@param to_slot? integer
	pullItems = function(from_name, from_slot, limit, to_slot) end,

	---Push items from this inventory to another inventory. Returns the amount transferred.
	---@param to_name string
	---@param from_slot integer
	---@param limit? integer
	---@param to_slot? integer
	pushItems = function(to_name, from_slot, limit, to_slot) end,

	---Returns a list of all items in this inventory.
	---@return table<integer, plethora.item.ItemInfo> items
	list = function() end,
}

---@class plethora.ItemStack : plethora.Documented
local ItemStack = {
	---Returns metadata about this object.
	---@return plethora.item.ItemMetadata metadata
	getMetadata = function() end,

	---Drop an item on the ground. Returns the number of items dropped.
	---@param limit? integer
	---@param direction? string
	---@return integer dropped
	drop = function(limit, direction) end,

	---Consumes one item from this stack.
	---**This can only be used on items that are edible.**
	consume = function() end,

	---Set whether these elytra are active or not.
	---**This can only be used on elytras that are equipped.**
	---@param active boolean
	setActive = function(active) end,
}
