---@meta

---@class plethora.module.BlockScanner
local BlockScanner = {
	---Scan all blocks in the vicinity.
	---@return plethora.blocks.BlockData[] scanned
	scan = function() end,

	---Get metadata about a nearby block.
	---@param x integer
	---@param y integer
	---@param z integer
	---@return plethora.blocks.BlockMetadata metadata
	getBlockMeta = function(x, y, z) end,
}
