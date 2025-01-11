---@meta

---@class Peripheral.TinkersConstruct.Smeltery : Inventory
local smeltery = {}

---Select which fluid will be extracted by drains in the smeltery. One can specify a fluid name or an index in list of molten fluids.
---@param fluid number|string
function smeltery.selectMolten(fluid) end

---Get a list of all molten fluids within the smeltery.
---@return string[] fluids
function smeltery.getMolten() end

---Get the internal temperature of this structure.
---@return number temperature
function smeltery.getTemperature() end

---Get a list of all fuels currently used by the seared-bricks multiblock.
---@return string[] fuels
function smeltery.getFuels() end