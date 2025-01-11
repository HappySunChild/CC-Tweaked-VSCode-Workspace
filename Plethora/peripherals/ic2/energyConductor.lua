---@meta

---@class Peripheral.IC2.EnergyConductor
local ic2Conductor = {}

---The EU loss for this conductor.
---@return number loss
function ic2Conductor.getConductionLoss() end

---Amount of EU the insulation can handle before shocking players.
---@return number absorption
function ic2Conductor.getInsulationEnergyAbsorption() end

---Amount of EU the insulation will handle before it is destroyed.
---@return number breakdown
function ic2Conductor.getInsulationBreakdownEnergy() end

---Amount of EU the the conductor will handle before it melts.
---@return number breakdown
function ic2Conductor.getConductorBreakdownEnergy() end