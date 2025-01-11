---@meta

---@class Peripheral.IC2.EnergySource
local ic2Source = {}

---EU output provided per tick.
---@return number
function ic2Source.getOfferedEnergy() end

---The tier of this EU source. 1 = LV, 2 = MV, 3 = HV, 4 = EV etc.
---@return integer tier
function ic2Source.getSourceTier() end