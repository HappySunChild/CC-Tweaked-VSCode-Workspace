---@meta

---Methods for interacting with tanks and other fluid storage blocks.
---@class Peripheral.FluidStorage
local fluidstorage = {}

---Get all "tanks" in this fluid storage.
---@return table<integer, peripheral.FluidTank>
function fluidstorage.tanks() end

---Move a fluid from one fluid container to another connected one.
---@param toName string
---@param limit? number
---@param fluidName? string
---@return number transferred
function fluidstorage.pushFluid(toName, limit, fluidName) end

---Move a fluid from a connected fluid container into this oneone.
---@param fromName string
---@param limit? number
---@param fluidName? string
---@return number transferred
function fluidstorage.pullFluid(fromName, limit, fluidName) end