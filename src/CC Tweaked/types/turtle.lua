---@meta

---@alias turtle.ToolSide 'left'|'right'

---@class turtle.InspectInfo
---@field name string
---@field state table<string, any>
---@field tags table<string, boolean>

---@class turtle.SlotInfo
---@field name string
---@field count integer

---@class turtle.SlotInfoDetailed : turtle.SlotInfo
---@field maxCount integer
---@field displayName string
---@field tags table<string, boolean>