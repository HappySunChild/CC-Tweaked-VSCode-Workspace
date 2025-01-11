---@meta

---Methods for interacting with blocks which store energy.
---@class Peripheral.EnergyStorage
local energystorage = {}

---Get the energy of this block.
---@return number FE
function energystorage.getEnergy() end

---Get the maximum amount of energy this block can store.
---@return number FE
function energystorage.getEnergyCapacity() end