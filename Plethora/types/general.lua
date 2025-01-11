---@meta

---@class Position2D
---@field x number
---@field y number

---@class Position3D: Position2D
---@field z number

---@class Inventory.ItemData
---@field name string
---@field count integer
---@field damage integer

---@class Inventory.ItemMetadata
---@field name string
---@field rawName string
---@field displayName string
---@field count integer
---@field maxCount integer
---@field damage? integer
---@field maxDamage? integer
---@field heal? number
---@field saturation? number
---@field ores? table<string, boolean>