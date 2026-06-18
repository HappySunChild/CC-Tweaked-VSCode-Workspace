---@meta

---@class create.peripheral.DisplayLink
local DisplayLink = {
	---Sets the cursor position.
	---@param x integer
	---@param y integer
	setCursorPos = function(x, y) end,

	---Returns the current cursor position.
	---@return integer x
	---@return integer y
	getCursorPos = function() end,

	---Returns the stize of the connected display target.
	---@return integer width
	---@return integer height
	getSize = function() end,

	---Returns whether the connected display target supports color.
	---@return boolean colorful
	isColor = function() end,

	---Returns whether the connected display target supports colour.
	---@return boolean colourful
	isColour = function() end,

	---Writes text at the current cursor position, moving the cursor to the end of the text.
	---@param text string
	write = function(text) end,

	---Writes bytes at the current cursor position, moving the cursor to the end of the text.
	---@param bytes integer
	writeBytes = function(bytes) end,

	---Clears the line at the current cursor position.
	clearLine = function() end,

	---Clears the whole display.
	clear = function() end,

	---Pushes any changes to the connected display target.
	update = function() end,
}
