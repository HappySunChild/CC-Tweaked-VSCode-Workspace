---@meta

---Methods for interacting with inventories.
---@class Peripheral.Inventory
local inventory = {}

---Get the size of this inventory.
---@return number slots
function inventory.size() end

---List all items in this inventory. This returns a table, with an entry for each slot.
---@return table<integer, peripheral.InventoryItem?>
function inventory.list() end

---Get detailed information about an item.
---@param slot integer
---@return peripheral.DetailedInventoryItem?
function inventory.getItemDetail(slot) end

---Get the maximum number of items which can be stored in this slot.
---@param slot integer
---@return number limit
function inventory.getItemLimit(slot) end

---Push items from one inventory to another connected one.
---@param toName string
---@param fromSlot number
---@param limit? number
---@param toSlot? number
---@return number transferred
function inventory.pushItems(toName, fromSlot, limit, toSlot) end

---Pull items from a connected inventory into this one.
---@param fromName string
---@param fromSlot number
---@param limit? number
---@param toSlot? number
---@return number transferred
function inventory.pullItems(fromName, fromSlot, limit, toSlot) end