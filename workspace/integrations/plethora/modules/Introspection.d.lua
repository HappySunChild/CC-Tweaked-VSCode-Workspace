---@meta

---@class plethora.module.Introspection
local Introspection = {
	---Returns this player's ender chest.
	---@return plethora.Inventory enderChest
	getEnder = function() end,

	---Returns this entity's held item and armor.
	---@return plethora.Inventory equipment
	getEquipment = function() end,

	---Returns this entity's UUID.
	---@return string UUID
	getID = function() end,

	---Returns this player's inventory.
	---@return plethora.Inventory inventory
	getInventory = function() end,

	---Returns this entity's name.
	---@return string Name
	getName = function() end,
}
