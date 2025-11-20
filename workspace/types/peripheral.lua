---@meta

---@class peripheral.InventoryItem
---@field name string
---@field count integer
---@field nbt string?

---@class peripheral.DetailedInventoryItem : peripheral.InventoryItem
---@field displayName string
---@field maxCount integer
---@field tags? table<string, true>
---@field damage? integer
---@field maxDamage? integer
---@field durability? integer

---@class peripheral.FluidTankInfo
---@field amount integer
---@field name string

---@alias peripheral.Speaker.Instrument
---| '"harp"'
---| '"basedrum"'
---| '"snare"'
---| '"hat"'
---| '"bass"'
---| '"flute"'
---| '"bell"'
---| '"guitar"'
---| '"chime"'
---| '"xylophone"'
---| '"iron_xylophone"'
---| '"cow_bell"'
---| '"didgeridoo"'
---| '"bit"'
---| '"banjo"'
---| '"pling"'

---@alias peripheral.Side
---| '"top"'
---| '"bottom"'
---| '"left"'
---| '"right"'
---| '"front"'
---| '"back"'

---@alias peripheral.WrappedPeripheral any
