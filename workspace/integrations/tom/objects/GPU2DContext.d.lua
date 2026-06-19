---@meta

---@class tom.GPU2DContext : tom.BaseGPU
local GPU2DContext = {
	---Creates a window in a 2D GPU context.
	---@param x number
	---@param y number
	---@param width number
	---@param height number
	---@return tom.GPU2DContext
	createWindow = function(x, y, width, height) end,

	---Creates a window in a 3D GPU context.
	---@param x number
	---@param y number
	---@param width number
	---@param height number
	---@return tom.GPU3DContext
	createWindow3D = function(x, y, width, height) end,

	---Returns the number of bytes being used by the GPU's VRAM.
	---@return number used_memory_bytes
	getUsedMemory = function() end,

	---Returns the maximum number of bytes that can be used by a GPU's VRAM.
	---@return number max_memory_bytes
	getMaxMemory = function() end,

	---Creates a new [LuaImage](lua://tom.LuaImage) with the specified dimension (`width`, `height`) in pixels.
	---@param width number
	---@param height number
	---@return tom.LuaImage new_image
	newImage = function(width, height) end,

	---Creates a new [LuaByteBuffer](lua://tom.LuaByteBuffer) with the specified initial size, or 32 bytes if not specified.
	---@param initial_size number Defaults to 32.
	---@return tom.LuaByteBuffer new_buffer
	newBuffer = function(initial_size) end,

	---Creates a new [LuaImage](lua://tom.LuaImage) from an unpacked `ARGB` pixels buffer with the specified `width`.
	---@param width number
	---@param ... number
	---@return tom.LuaImage new_image
	imageFromBuffer = function(width, ...) end,

	---Creates a new [LuaImage](lua://tom.LuaImage) from a list of unpacked numbers or buffer references.
	---@param ... number
	---@return tom.LuaImage new_image
	decodeImage = function(...) end,

	---Returns the dimensions of this context in pixels.
	---@return number width
	---@return number height
	getSize = function() end,

	---Draws a filled rectangle with the top-left corner position at (`x`, `y`), with dimensions (`width`, `height`) and color `color`.
	---@param x number top-left x
	---@param y number top-left y
	---@param width number
	---@param height number
	---@param color number
	filledRectangle = function(x, y, width, height, color) end,

	---Draws an outline of a rectangle with the top-left corner at (`x`, `y`), with dimensions (`width`, `height`) and color `color`.
	---@param x number top-left x
	---@param y number top-left y
	---@param width number
	---@param height number
	---@param color number
	rectangle = function(x, y, width, height, color) end,

	---Draws a smooth line from (`start_x`, `start_y`) to (`finish_x`, `finish_y`) with the specified color.
	---@param start_x number
	---@param start_y number
	---@param finish_x number
	---@param finish_y number
	---@param color number
	lineS = function(start_x, start_y, finish_x, finish_y, color) end,

	---Draws a line from (`start_x`, `start_y`) to (`finish_x`, `finish_y`) with the specified color.
	---@param start_x number
	---@param start_y number
	---@param finish_x number
	---@param finish_y number
	---@param color number
	line = function(start_x, start_y, finish_x, finish_y, color) end,

	---Fills the whole window with a single color. Defaults to black.
	---@param color number?
	fill = function(color) end,

	---Draws a line of text to the screen.
	---@param x number
	---@param y number
	---@param text string
	---@param text_color number?
	---@param bg_color number?
	---@param size number?
	---@param padding number?
	drawText = function(x, y, text, text_color, bg_color, size, padding) end,

	---Draws a line of text to the screen... smartly?
	---@param x number
	---@param y number
	---@param text string
	---@param text_color number?
	---@param bg_color number?
	---@param force_unicode boolean?
	---@param size number?
	---@param padding number?
	drawTextSmart = function(x, y, text, text_color, bg_color, force_unicode, size, padding) end,

	---Returns the length, in pixels, of a line of text if it were drawn to the screen.
	---@param text string
	---@param size number?
	---@param padding number?
	---@return number length
	getTextLength = function(text, size, padding) end,

	---Returns the name of the currently set font, as well as if the font is mutable.
	---@return string name
	---@return boolean mutable
	getFont = function() end,

	---Sets the font to something idk there's no documentation for this shit
	---@param name string
	---@return boolean success
	setFont = function(name) end,

	freeChars = function() end,

	clearChars = function() end,

	---@param char number
	delChar = function(char) end,

	---@param char number
	---@param width number
	---@param ... number
	addNewChar = function(char, width, ...) end,

	getFontDefaultCharID = function() end,

	---@param id number
	setFontDefaultCharID = function(id) end,

	---Draws a single character to the window.
	---@param x number
	---@param y number
	---@param char number
	---@param text_color number?
	---@param bg_color number?
	---@param size number?
	drawChar = function(x, y, char, text_color, bg_color, size) end,

	---Draws a [LuaImage](lua://tom.LuaImage) to the screen.
	---@param x number
	---@param y number
	---@param image_ref string Reference string from [LuaImage.ref()](lua://tom.LuaImage.ref)
	drawImage = function(x, y, image_ref) end,

	---Draws a buffer to the screen.
	---@param x number
	---@param y number
	---@param image_width number
	---@param scale number
	---@param ... number ARGB Pixels
	drawBuffer = function(x, y, image_width, scale, ...) end,
}
