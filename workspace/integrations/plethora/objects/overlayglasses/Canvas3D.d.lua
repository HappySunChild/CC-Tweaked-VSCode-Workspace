---@meta

---@class plethora.Canvas3D.Item : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Scalable, plethora.overlayglasses.components.DepthTestable, plethora.overlayglasses.components.Positional3D, plethora.overlayglasses.components.Rotatable3D, plethora.overlayglasses.components.ItemRenderer
---@class plethora.Canvas3D.Box : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.DepthTestable, plethora.overlayglasses.components.Positional3D, plethora.overlayglasses.components.Resizable3D
---@class plethora.Canvas3D.Line : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.Scalable, plethora.overlayglasses.components.Colorable, plethora.overlayglasses.components.DepthTestable, plethora.overlayglasses.components.Multipoint3D
---@class plethora.Canvas3D.Frame : plethora.overlayglasses.components.Removable, plethora.overlayglasses.components.DepthTestable, plethora.overlayglasses.components.Positional3D, plethora.overlayglasses.components.Rotatable3D, plethora.Canvas2D

---@class plethora.Canvas3D : plethora.Documented
local Canvas3D = {
	---Removes all objects.
	clear = function() end,

	---Creates a new 3D canvas centered relative to the current position.
	---@param offset plethora.common.Position3D?
	---@return plethora.Canvas3DHandle
	create = function(offset) end,
}

---@class plethora.Canvas3DHandle : plethora.Documented
local Canvas3DHandle = {
	---Removes all objects in this canvas.
	clear = function() end,

	---Creates an item model.
	---@param position plethora.common.Position3D
	---@param item string
	---@param damage? integer
	---@param scale? number
	---@return plethora.Canvas3D.Item
	addItem = function(position, item, damage, scale) end,

	---Creates a new box.
	---@param x number
	---@param y number
	---@param z number
	---@param width? number
	---@param height? number
	---@param depth? number
	---@param color? integer
	---@return plethora.Canvas3D.Box
	addBox = function(x, y, z, width, height, depth, color) end,

	---Creates a new line.
	---@param start plethora.common.Position3D
	---@param finish plethora.common.Position3D
	---@param thickness? number
	---@param color? integer
	---@return plethora.Canvas3D.Line
	addLine = function(start, finish, thickness, color) end,

	---Creates a new frame to put 2D objects in.
	---@param position plethora.common.Position3D
	---@return plethora.Canvas3D.Frame
	addFrame = function(position) end,

	---Recenters this canvas relative to the current position.
	---@param offset? plethora.common.Position3D
	recenter = function(offset) end,
}
