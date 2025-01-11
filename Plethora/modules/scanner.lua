---@meta

---@class Modules.BlockScanner
local blockScanner = {}

---Scan all blocks in the vicinity.
---@return BlockScanner.BlockData[] scanned
function blockScanner.scan() end

---Get metadata about a nearby block.
---@param x integer
---@param y integer
---@param z integer
---@return BlockScanner.BlockMetadata metadata
function blockScanner.getBlockMeta(x, y, z) end