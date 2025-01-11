---@meta

---@class Peripheral.AE2.Grid
local grid = {}

---Get the energy usage of this AE node
---@return number
function grid.getNodeEnergyUsage() end

---Search for an item in the network. You can specify the item as a string, with or without the damage value ('minecraft:stone' or 'minecraft:stone@0') or as a table with 'name', 'damage' and 'nbthash' fields. You must specify the 'name', but you can leave the other fields empty.
---@param item string|table
---@return table
function grid.findItem(item) end

---Search all items in the network. You can specify the item as a string, with or without the damage value ('minecraft:stone' or 'minecraft:stone@0') or as a table with 'name', 'damage' and 'nbthash' fields. You must specify the 'name', but you can leave the other fields empty.
---@param item string|table
---@return table
function grid.findItems(item) end

---List all items which are stored in the network
---@return table
function grid.listAvailableItems() end

---Get the energy usage of this AE network
---@return number
function grid.getNetworkEnergyUsage() end

---List all crafting cpus in the network
---@return table
function grid.getCraftingCPUs() end

---Get the energy stored usage in this AE network
---@return integer
function grid.getNetworkEnergyStored() end