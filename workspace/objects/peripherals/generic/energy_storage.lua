---@meta

---Methods for interacting with blocks which store energy.
---@class peripheral.EnergyStorage
local EnergyStorage = {}


---Get the energy of this block.
---@return number FE The energy stored in this block, in FE.
function EnergyStorage.getEnergy() end


---Get the maximum amount of energy this block can store.
---@return number FE The energy capacity of this block.
function EnergyStorage.getEnergyCapacity() end