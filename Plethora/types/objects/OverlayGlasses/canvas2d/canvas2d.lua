---@meta

---@class OverlayGlasses.Canvas2d: DocumentObject, OverlayGlasses.Canvas
local canvas2d = {}

---Get the size of this canvas.
---@return number x
---@return number y
function canvas2d.getSize() end

---Create a new line loop, composed of many points.
---@vararg Position2D|number
---@return OverlayGlasses.Canvas2d.Lines
function canvas2d.addLines(...) end

---Create a new object group.
---@param position Position2D
---@return OverlayGlasses.Canvas2d.Group
function canvas2d.addGroup(position) end

---Create a new line.
---@param start Position2D
---@param finish Position2D
---@param color? integer
---@param thickness? number
---@return OverlayGlasses.Canvas2d.Line
function canvas2d.addLine(start, finish, color, thickness) end

---Create a new dot.
---@param position Position2D
---@param color? integer
---@param size? number
---@return OverlayGlasses.Canvas2d.Dot
function canvas2d.addDot(position, color, size) end

---Create a new rectangle.
---@param x number
---@param y number
---@param width number
---@param height number
---@param color? integer
---@return OverlayGlasses.Canvas2d.Rectangle
function canvas2d.addRectangle(x, y, width, height, color) end

---Create a new text object.
---@param position Position2D
---@param text string
---@param color? integer
---@param size? number
---@return OverlayGlasses.Canvas2d.Text
function canvas2d.addText(position, text, color, size) end

---Create a new triangle, composed of three points.
---@param p1 Position2D
---@param p2 Position2D
---@param p3 Position2D
---@param color? integer
---@return OverlayGlasses.Canvas2d.Triangle
function canvas2d.addTriangle(p1, p2, p3, color) end

---Create a item icon.
---@param position Position2D
---@param item string
---@param damage? integer
---@param scale? number
---@return OverlayGlasses.Canvas2d.Item
function canvas2d.addItem(position, item, damage, scale) end

---Create a new polygon, composed of many points.
---@vararg Position2D|number
---@return OverlayGlasses.Canvas2d.Polygon
function canvas2d.addPolygon(...) end