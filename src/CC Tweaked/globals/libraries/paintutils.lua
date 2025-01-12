---@meta

---@class Libraries.paintutils
paintutils = {}

---Parses an image from a multi-line string
---@param image string
---@return table imageData
function paintutils.parseImage(image) end

---Loads an image from a file.
---@param path string
---@return table? imageData
function paintutils.loadImage(path) end

---Draws a single pixel to the current term at the specified position.
---@param xPos integer
---@param yPos integer
---@param color? integer
function paintutils.drawPixel(xPos, yPos, color) end

---Draws a straight line from the start to end position.
---@param startX integer
---@param startY integer
---@param endX integer
---@param endY integer
---@param color? integer
function paintutils.drawLine(startX, startY, endX, endY, color) end

---Draws the outline of a box on the current term from the specified start position to the specified end position.
---@param startX integer
---@param startY integer
---@param endX integer
---@param endY integer
---@param color? integer
function paintutils.drawBox(startX, startY, endX, endY, color) end

---Draws a filled box on the current term from the specified start position to the specified end position.
---@param startX integer
---@param startY integer
---@param endX integer
---@param endY integer
---@param color? integer
function paintutils.drawFilledBox(startX, startY, endX, endY, color) end

---Draw an image loaded by `paintutils.parseImage` or `paintutils.loadImage`.
---@param imageData table
---@param xPos integer
---@param yPos integer
function paintutils.drawImage(imageData, xPos, yPos) end