---@meta

---The Inventory Manager can communicate with the player's inventory.
---You need to assign yourself to a [Memory Card](https://docs.advanced-peripherals.de/latest/items/memory_card/) and put the card into the manager to use it.
---@class ap.peripheral.InventoryManager
local InventoryManager = {
	---Adds an item to the player's inventory and returns the amount of the item added.
	---@param direction cc.types.peripheral.Side | string The direction is the direction of the container relative to the peripheral.
	---@param item ap.types.info.Item
	---@return number amount_added
	addItemToPlayer = function(direction, item) end,

	---Removes an item from the player's inventory and returns the amount of the item removed.
	---@param direction cc.types.peripheral.Side | string
	---@param item ap.types.info.Item
	---@return number amount_removed
	removeItemFromPlayer = function(direction, item) end,

	---Returns a list of the player's current armor slots.
	---@return ap.types.info.Item[]
	getArmor = function() end,

	---Returns the contents of the player's inventory as a list of items.
	---@return ap.types.info.Item[]
	getItems = function() end,

	---Returns the username of the owner of the memory card in the Inventory Manager, or nil if there is no memory card or owner.
	---@return string? username
	getOwner = function() end,

	---Returns whether the player is waering atleast one piece of armor.
	---@return boolean has_armor
	isPlayerEquipped = function() end,

	---Returns whether the player is wearing armor in the given slot.
	---@param slot number
	---@return boolean wearing
	isWearing = function(slot) end,

	---Returns the item currently being held by the player.
	---@return ap.types.info.Item?
	getItemInHand = function() end,

	---Returns the item current being held in the offhand by the player.
	---@return ap.types.info.Item?
	getItemInOffHand = function() end,

	---Returns the next free slot in the player's inventory. Returns -1 if there is no free slot.
	---@return number free_slot
	getFreeSlot = function() end,

	---Returns whether space is available in the player's inventory.
	---@return boolean space_available
	isSpaceAvailable = function() end,

	---Returns the number of empty slots in the player's inventory.
	---@return number empty_slot_count
	getEmptySpace = function() end,
}
