---@meta

--@alias Inventory.ItemMetadata table<string, any>

---@class Inventory : DocumentObject
local inventory = {}

---Suck an item from the ground
---@param slot? integer
---@param limit? integer
function inventory.suck(slot, limit) end

---Drop an item on the ground. Returns the number of items dropped
---@param slot integer
---@param limit? integer
---@param direction? string
function inventory.drop(slot, limit, direction) end

---The size of the inventory
---@return integer size
function inventory.size() end

---Get a list of all available objects which can be transferred to or from
---@param location? string
function inventory.getTransferLocations(location) end

---Get the item at the specified slot.
---@param slot integer
---@return Inventory.Item item
function inventory.getItem(slot) end

---Get the metadata of item at the specified slot.
---@param slot integer
---@return Inventory.ItemMetadata metadata
function inventory.getItemMeta(slot) end

---Pull items to this inventory from another inventory. Returns the amount transferred.
---@param fromName string
---@param fromSlot integer
---@param limit? integer
---@param toSlot? integer
function inventory.pullItems(fromName, fromSlot, limit, toSlot) end

---Push items from this inventory to another inventory. Returns the amount transferred.
---@param toName string
---@param fromSlot integer
---@param limit? integer
---@param toSlot ?integer
function inventory.pushItems(toName, fromSlot, limit, toSlot) end

---List all items in this inventory.
---@return table<integer, Inventory.ItemData> items
function inventory.list() end