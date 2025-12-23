---@meta

---The printer peripheral allows printing text onto pages. These pages can then be crafted together into printed pages or books.
---@class peripheral.Printer
local Printer = {
	---Writes text to the current page.
	---@param text string The value to write to the page.
	write = function(text) end,

	---Returns the current position of the cursor on the page.
	---@return number x The X position of the cursor.
	---@return number y The Y position of the cursor.
	getCursorPos = function() end,

	---Sets the position of the cursor on the page.
	---@param x number The X coordinate to set the cursor at.
	---@param y number The Y coordinate to set the cursor at.
	setCursorPos = function(x, y) end,

	---Returns the size of the current page.
	---@return number width The width of the page.
	---@return number height The height of the page.
	getPageSize = function() end,

	---Starts printing a new page.
	---@return boolean success Whether a new page could be started.
	newPage = function() end,

	---Finalizes printing of the current page and outputs it to the tray.
	---@return boolean success Whether the page could be successfully finished.
	endPage = function() end,

	---Sets the title of the current page.
	---@param title? string
	setPageTitle = function(title) end,

	---Returns the amount of ink left in the printer.
	---@return number ink The amount of ink available to print with.
	getInkLevel = function() end,

	---Returns the amount of paper left in the printer.
	---@return number paper The amount of paper available to print with.
	getPaperLevel = function() end,
}
