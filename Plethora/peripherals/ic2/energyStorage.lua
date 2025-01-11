---@meta

---@class Peripheral.IC2.EnergyStorage
local ic2Storage = {}

---The amount of EU currently stored.
---@return integer stored
function ic2Storage.getEUStored() end

---The maximum EU output per tick.
---@return number output
function ic2Storage.getEUOutput() end

---The maximum amount of EU that can be stored
---@return integer capacity
function ic2Storage.getEUCapacity() end