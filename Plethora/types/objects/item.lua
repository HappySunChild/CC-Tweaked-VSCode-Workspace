---@meta

---@class Inventory.Item : DocumentObject
local item = {}

---Get metadata about this object.
---@return Inventory.ItemMetadata metadata
function item.getMetadata() end

---Drop an item on the ground. Returns the number of items dropped.
---@param limit? integer
---@param direction? string
---@return integer dropped
function item.drop(limit, direction) end

---Consume one item from this stack
---**This can only be used on items that are edible.**
function item.consume() end

---Set whether these elytra are active or not.
---**This can only be used on elytras that are equipped.**
---@param active boolean
function item.setActive(active) end