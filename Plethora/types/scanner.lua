---@meta

---@class BlockScanner.BlockData
---@field x integer
---@field y integer
---@field z integer
---@field name string
---@field state table<string, any>
---@field metadata integer

---@class BlockScanner.BlockMetadata : BlockScanner.BlockData
---@field x nil
---@field y nil
---@field z nil
---@field color integer
---@field translationKey string
---@field displayName string
---@field hardness number
---@field harvestTool string
---@field material table<string, boolean>