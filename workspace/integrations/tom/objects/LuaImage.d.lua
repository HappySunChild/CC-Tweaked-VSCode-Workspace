---@meta

---@class tom.LuaImage
local LuaImage = {
	---Returns the width of the image in pixels.
	---@return number width
	getWidth = function() end,

	---Returns the height of the image in pixels.
	---@return number height
	getHeight = function() end,

	---Samples the image at the specified coordinates (`x`, `y`) and returns the color of the pixel at that location.
	---@param x number
	---@param y number
	---@return number rgb_color
	getRGB = function(x, y) end,

	---Sets the color of the pixel at the specified coordinates (`x`, `y`) to the specified RGB color.
	---@param x number
	---@param y number
	---@param color number
	setRGB = function(x, y, color) end,

	---Returns the image as a tuple of unpacked ARGB numbers.
	---@return number ...
	getAsBuffer = function() end,

	---Saves the image into a [LuaByteBuffer](lua://tom.LuaByteBuffer) and returns it.
	---@return tom.LuaByteBuffer
	saveImage = function() end,

	---Returns a [2D GPU context](lua://tom.GPU2DContext) where the output is drawn onto this image.
	---@return tom.GPU2DContext
	gpuDraw = function() end,

	---Removes the image from the used VRAM amount and marks the image as invalid.
	free = function() end,

	---Returns a string reference to the image. The reference is only usuable on the same peripheral.
	---@return string reference
	ref = function() end,
}
