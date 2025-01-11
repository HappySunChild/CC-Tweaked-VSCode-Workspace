---@meta

---@class Peripheral.IC2.EnergySink
local ic2Sink = {}

---The maximum amount of EU that can be received
---@return number
function ic2Sink.getDemandedEnergy() end

---The tier of this EU sink. 1 = LV, 2 = MV, 3 = HV, 4 = EV etc.
---@return integer
function ic2Sink.getSinkTier() end
