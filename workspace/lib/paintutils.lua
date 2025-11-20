---@meta

---Utilities for drawing more complex graphics, such as pixels, lines and images.
---
---<h2 align="center"><a href="https://tweaked.cc/module/paintutils.html">Official Documentation</a></h2>
---@class paintuils
paintutils = {}

---Parses an image from a multi-line string
---@param image string The string containing the raw-image data.
---@return paintuils.ParsedImage image The parsed image data, suitable for use with paintutils.drawImage.
function paintutils.parseImage(image) end

---Loads an image from a file.
---
---You can create a file suitable for being loaded using the `paint` program.
---@param path string The file to load.
---@return paintuils.ParsedImage image The parsed image data, suitable for use with paintutils.drawImage, or nil if the file does not exist.
function paintutils.loadImage(path) end

---Draws a single pixel to the current term at the specified position.
---@param x number The x position to draw at, where 1 is the far left.
---@param y number The y position to draw at, where 1 is the very top.
---@param color? integer The color of this pixel. This will be the current background color if not specified.
function paintutils.drawPixel(x, y, color) end

---Draws a straight line from the start to end position.
---@param startX number The starting x position of the line.
---@param startY number The starting y position of the line.
---@param endX number The end x position of the line.
---@param endY number The end y position of the line.
---@param color? integer The color of this line. This will be the current background color if not specified.
function paintutils.drawLine(startX, startY, endX, endY, color) end

---Draws the outline of a box on the current term from the specified start position to the specified end position.
---@param startX number The starting x position of the box.
---@param startY number The starting y position of the box.
---@param endX number The end x position of the box.
---@param endY number The end y position of the box.
---@param color? integer The color of this box. This will be the current background color if not specified.
function paintutils.drawBox(startX, startY, endX, endY, color) end

---Draws a filled box on the current term from the specified start position to the specified end position.
---@param startX number The starting x position of the box.
---@param startY number The starting y position of the box.
---@param endX number The end x position of the box.
---@param endY number The end y position of the box.
---@param color? integer The color of this box. This will be the current background color if not specified.
function paintutils.drawFilledBox(startX, startY, endX, endY, color) end

---Draw an image loaded by `paintutils.parseImage` or `paintutils.loadImage`.
---@param image paintuils.ParsedImage The parsed image data.
---@param x number The x position to start drawing at.
---@param y number The y position to start drawing at.
function paintutils.drawImage(image, x, y) end
