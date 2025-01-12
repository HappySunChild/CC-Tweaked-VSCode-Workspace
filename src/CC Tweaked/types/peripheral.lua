---@meta

---@alias peripheral.Side
---| 'top'
---| 'bottom'
---| 'right'
---| 'left'
---| 'front'
---| 'back'

---@alias peripheral.Name peripheral.Side|string

---@alias peripheral.Type
---| 'command'
---| 'computer'
---| 'drive'
---| 'modem'
---| 'monitor'
---| 'printer'
---| 'speaker'
---| 'inventory'
---| string

---@alias peripheral.WrappedPeripheral any

---@class peripheral.FluidTank
---@field name string
---@field amount integer

---@class peripheral.InventoryItem
---@field name string
---@field count integer
---@field nbt string?

---@class peripheral.DetailedInventoryItem : peripheral.InventoryItem
---@field displayName string