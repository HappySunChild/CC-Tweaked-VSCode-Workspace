---@meta

---The AR Controller is used to control your [AR Goggles](https://docs.advanced-peripherals.de/latest/items/ar_goggles/) wirelessly.
---You can draw anything you wish into an overlay that will be visible as long as you're wearing the goggles.
---@class ap.peripheral.ARController
local ARController = {
	---Clears the entire canvas.
	clear = function() end,

	---Clears the element with the given id.
	---@param id string The id of the element to clear.
	clearElement = function(id) end,

	---Draws a horizontal line in the given color from `min_x` to `max_x` at vertical `y`.
	---@param min_x number
	---@param max_x number
	---@param y number
	---@param color number
	horizontalLine = function(min_x, max_x, y, color) end,

	---Draws a horizontal line in the given color from `min_x` to `max_x` at vertical `y` with the specified id.
	---@see ap.peripheral.ARController.horizontalLine
	---@param id string
	---@param min_x number
	---@param max_x number
	---@param y number
	---@param color number
	horizontalLineWithId = function(id, min_x, max_x, y, color) end,

	---Draws a vertical line the given color from `min_y` to `max_y` at horizontal `x`.
	---@param x number
	---@param min_y number
	---@param max_y number
	---@param color number
	verticalLine = function(x, min_y, max_y, color) end,

	---Draws a vertical line the given color from `min_y` to `max_y` at horizontal `x` with the specified id.
	---@param id string
	---@param x number
	---@param min_y number
	---@param max_y number
	---@param color number
	verticalLineWithId = function(id, x, min_y, max_y, color) end,

	---Draws the given string at (`x`, `y`) with the specified text color.
	---@param text string
	---@param x number
	---@param y number
	---@param color number
	drawString = function(text, x, y, color) end,

	---Draws the given string at (`x`, `y`) with the specified text color and id.
	---@param id string
	---@param text string
	---@param x number
	---@param y number
	---@param color number
	drawStringWithId = function(id, text, x, y, color) end,

	---Draws the given string centered at (`x`, `y`) with the specified text color.
	---@see ap.peripheral.ARController.drawString
	---@param text string
	---@param x number
	---@param y number
	---@param color number
	drawCenteredString = function(text, x, y, color) end,

	---Draws the given string centered at (`x`, `y`) with the specified text color and id.
	---@see ap.peripheral.ARController.drawStringWithId
	---@param id string
	---@param text string
	---@param x number
	---@param y number
	---@param color number
	drawCenteredStringWithId = function(id, text, x, y, color) end,

	---Draws the given string to the right of (`x`, `y`) with the specified text color.
	---@see ap.peripheral.ARController.drawString
	---@param text string
	---@param x number
	---@param y number
	---@param color number
	drawRightboundString = function(text, x, y, color) end,

	---Draws the given string to the right of (`x`, `y`) with the specified text color and id.
	---@see ap.peripheral.ARController.drawStringWithId
	---@param id string
	---@param text string
	---@param x number
	---@param y number
	---@param color number
	drawRightboundStringWithId = function(id, text, x, y, color) end,

	---Draws the given item at (`x`, `y`).
	---@param item_id string
	---@param x number
	---@param y number
	drawItemIcon = function(item_id, x, y) end,

	---Draws the given item at (`x`, `y`) with the specified id.
	---@param id string
	---@param item_id string
	---@param x number
	---@param y number
	drawItemIconWithId = function(id, item_id, x, y) end,

	---Draws an unfilled circle at (`x`, `y`) with the specified radius and color.
	---@param x number
	---@param y number
	---@param radius number
	---@param color number
	drawCircle = function(x, y, radius, color) end,

	---Draws an unfilled circle at (`x`, `y`) with the specified radius, color and id.
	---@param id string
	---@param x number
	---@param y number
	---@param radius number
	---@param color number
	drawCircleWithId = function(id, x, y, radius, color) end,

	---Draws a filled rectangle from (`min_x`, `min_y`) to (`max_x`, `max_y`) with the specified color.
	---@param min_x number
	---@param min_y number
	---@param max_x number
	---@param max_y number
	---@param color number
	fill = function(min_x, min_y, max_x, max_y, color) end,

	---Draws a filled rectangle from (`min_x`, `min_y`) to (`max_x`, `max_y`) with the specified color and id.
	---@param id string
	---@param min_x number
	---@param min_y number
	---@param max_x number
	---@param max_y number
	---@param color number
	fillWithId = function(id, min_x, min_y, max_x, max_y, color) end,

	---Draws a filled circle at (`x`, `y`) with the specified radius and color.
	---@param x number
	---@param y number
	---@param radius number
	---@param color number
	fillCircle = function(x, y, radius, color) end,

	---Draws a filled circle at (`x`, `y`) with the specified radius, color and id.
	---@param id string
	---@param x number
	---@param y number
	---@param radius number
	---@param color number
	fillCircleWithId = function(id, x, y, radius, color) end,

	---Draws a rectangular gradient from `color_from` to `color_to` with the specified corners.
	---@param min_x number
	---@param min_y number
	---@param max_x number
	---@param max_y number
	---@param color_from number
	---@param color_to number
	fillGradient = function(min_x, min_y, max_x, max_y, color_from, color_to) end,

	---Draws a rectangular gradient from `color_from` to `color_to` with the specified corners and id.
	---@param id string
	---@param min_x number
	---@param min_y number
	---@param max_x number
	---@param max_y number
	---@param color_from number
	---@param color_to number
	fillGradientWithId = function(id, min_x, min_y, max_x, max_y, color_from, color_to) end,

	---Returns whether relative mode is enabled or not. Also returns the screen size if it is.
	---@return boolean enabled
	---@return number? width
	---@return number? height
	isRelativeMode = function() end,

	---Sets whether relative mode is enabled or not. If `enabled` is true then the screen dimensions must be specified.
	---@param enabled boolean
	---@param virtual_screen_width number?
	---@param virtual_screen_height number?
	setRelativeMode = function(enabled, virtual_screen_width, virtual_screen_height) end,
}
