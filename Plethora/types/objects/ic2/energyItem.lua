---@meta

---@class IC2.EnergyItem
local ic2Item = {}

---The maximum amount of EU that can be stored.
---@return number capacity
function ic2Item.getEuCapacity() end

---The amount of EU currently stored.
---@return number stored
function ic2Item.getEuStored() end