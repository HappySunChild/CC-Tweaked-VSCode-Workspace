---@meta

---@class peripheral.inventoryItem
---@field name string
---@field count integer
---@field nbt string?

---@class peripheral.detailedInventoryItem : peripheral.inventoryItem
---@field displayName string
---@field maxCount integer
---@field tags? table<string, true>
---@field damage? integer
---@field maxDamage? integer
---@field durability? integer

---@class peripheral.fluidTankInfo
---@field amount integer
---@field name string

---@alias peripheral.speaker.instrument
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

---@alias peripheral.side
---| '"top"'
---| '"bottom"'
---| '"left"'
---| '"right"'
---| '"front"'
---| '"back"'

---@alias peripheral.wrappedPeripheral any