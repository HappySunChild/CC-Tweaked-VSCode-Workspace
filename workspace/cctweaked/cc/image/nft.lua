---@meta

---Read and draw nft ("Nitrogen Fingers Text") images.
---
---nft ("Nitrogen Fingers Text") is a file format for drawing basic images. Unlike the images that paintutils.parseImage uses, nft supports coloured text as well as simple coloured pixels.
local nft = {
	---Parse an nft image from a string.
	---@param image string The image contents.
	---@return table image The parsed image.
	parse = function(image) end,

	---Load an nft image from a file.
	---@param path string The file to load.
	---@return table? image The parsed image, or nil if the file does not exist or could not be read.
	---@return string? err An error message explaining why the file could not be loaded.
	load = function(path) end,

	---Draw an nft image to the screen.
	---@param image table An image, as returned from load or parse.
	---@param x_pos number The x position to start drawing at.
	---@param y_pos number The y position to start drawing at.
	---@param target cc.term.Redirect? The terminal redirect to draw to. Defaults to the current terminal.
	draw = function(image, x_pos, y_pos, target) end,
}

return nft
