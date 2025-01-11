---@meta

---@class Modules.Introspection
local introspection = {}

---Get this player's ender chest.
---@return Inventory enderChest
function introspection.getEnder() end

---Get this entity's held item and armor.
---@return Inventory equipment
function introspection.getEquipment() end

---Get this entity's UUID.
---@return string UUID
function introspection.getID() end

---Get this player's inventory.
---@return Inventory inventory
function introspection.getInventory() end

---Get this entity's name.
---@return string Name
function introspection.getName() end

---Get this player's progress in Astral Sorcery.
---@return Introspection.AstralProgress progress
function introspection.getAstralProgress() end

---Get this player's baubles inventory.
---@return Inventory baubles
function introspection.getBaubles() end