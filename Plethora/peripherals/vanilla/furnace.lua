---@meta

---@class Peripheral.Furnace : Inventory
local furnace = {}

---Number of ticks the current item has cooked for.
---@return integer ticks
function furnace.getCookTime() end

---Number of ticks of burning the current fuel provides.
---@return integer ticks
function furnace.getBurnTime() end

---Number of ticks of fuel left.
---@return integer ticks
function furnace.getRemainingBurnTime() end