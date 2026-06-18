---@meta

---This block is able to read data about any blocks or tile entities in front of it.
---@class ap.peripheral.BlockReader
local BlockReader = {
	---Returns the registry name of the block.
	---@return string block_name The registry name of the block.
	getBlockName = function() end,

	---Returns the block data of the block if it is a tile entity.
	---@return table? data The block data of the entity. Returns `nil` if it's not a tile entity.
	getBlockData = function() end,

	---Returns the properties of a block and it's state.
	---@return table? states
	getBlockStates = function() end,

	---Returns whether the block is a tile entity or not.
	---@return boolean is_tile_entity
	isTileEntity = function() end,
}
