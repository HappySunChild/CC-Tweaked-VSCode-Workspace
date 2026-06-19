---@meta

---@class tom.peripheral.GPU : tom.GPU2DContext
local GPU = {
	---Detects and reloads all of the connected screens. Recommended to call at the start of the program.
	refreshSize = function() end,

	---Sets the **resolution** for all of the individual screen blocks. Must be between 16 and 64.
	---
	---A value of 16 means that each screen block has 16x16 pixels on it, 64 would have 64x64.
	---@param resolution number
	setSize = function(resolution) end,

	---Returns the screen size in pixels, blocks, and the set resolution of the GPU.
	---@return number width_pixels
	---@return number height_pixels
	---@return number width_blocks
	---@return number height_blocks
	---@return number resolution
	getSize = function() end,
}
