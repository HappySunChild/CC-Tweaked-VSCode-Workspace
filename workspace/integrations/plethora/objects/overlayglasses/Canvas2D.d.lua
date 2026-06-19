---@meta

---@class plethora.Canvas2D.Group : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Positional2D, plethora.Canvas2D
---@class plethora.Canvas2D.Item : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Scalable, plethora.overlayglasses.components.Positional2D, plethora.overlayglasses.components.ItemRenderer
---@class plethora.Canvas2D.Text : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.Scalable, plethora.overlayglasses.components.Positional2D, plethora.overlayglasses.components.TextRenderer
---@class plethora.Canvas2D.Dot : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.Scalable, plethora.overlayglasses.components.Positional2D
---@class plethora.Canvas2D.Lines : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.DynamicMultipoint2D, plethora.overlayglasses.components.Scalable
---@class plethora.Canvas2D.Polygon : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.DynamicMultipoint2D
---@class plethora.Canvas2D.Line : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.Multipoint2D
---@class plethora.Canvas2D.Triangle : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.Multipoint2D
---@class plethora.Canvas2D.Rectangle : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.Positional2D, plethora.overlayglasses.components.Resizable2D

---@class plethora.Canvas2D : plethora.Documented
local Canvas2D = {
	---Removes all objects.
	clear = function() end,

	---Returns the size of this canvas.
	---@return number width
	---@return number height
	getSize = function() end,

	---Creates a new object group.
	---@param position plethora.common.Position2D
	---@return plethora.Canvas2D.Group
	addGroup = function(position) end,

	---Creates a new line loop, composed of many points.
	---@vararg plethora.common.Position2D | number
	---@return plethora.Canvas2D.Lines
	addLines = function(...) end,

	---Creates a new line.
	---@param start plethora.common.Position2D
	---@param finish plethora.common.Position2D
	---@param color? integer
	---@param thickness? number
	---@return plethora.Canvas2D.Line
	addLine = function(start, finish, color, thickness) end,

	---Creates a new dot.
	---@param position plethora.common.Position2D
	---@param color? integer
	---@param size? number
	---@return plethora.Canvas2D.Dot
	addDot = function(position, color, size) end,

	---Creates a new rectangle.
	---@param x number
	---@param y number
	---@param width number
	---@param height number
	---@param color? integer
	---@return plethora.Canvas2D.Rectangle
	addRectangle = function(x, y, width, height, color) end,

	---Creates a new text object.
	---@param position plethora.common.Position2D
	---@param text string
	---@param color? integer
	---@param size? number
	---@return plethora.Canvas2D.Text
	addText = function(position, text, color, size) end,

	---Creates a new triangle.
	---@param p1 plethora.common.Position2D
	---@param p2 plethora.common.Position2D
	---@param p3 plethora.common.Position2D
	---@param color? integer
	---@return plethora.Canvas2D.Triangle
	addTriangle = function(p1, p2, p3, color) end,

	---Creates a item icon.
	---@param position plethora.common.Position2D
	---@param item string
	---@param damage? integer
	---@param scale? number
	---@return plethora.Canvas2D.Item
	addItem = function(position, item, damage, scale) end,

	---Creates a new polygon, composed of many points.
	---@vararg plethora.common.Position2D | number
	---@return plethora.Canvas2D.Polygon
	addPolygon = function(...) end,
}
