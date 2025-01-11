---@meta

---@class OverlayGlasses.Canvas3d.Canvas:  DocumentObject, OverlayGlasses.Canvas, Canvas.BaseObject
local canvas = {}

---Create a item model.
---@param position Position3D
---@param item string
---@param damage? integer
---@param scale? number
---@return OverlayGlasses.Canvas3d.Item
function canvas.addItem(position, item, damage, scale) end

---Create a new box.
---@param x number
---@param y number
---@param z number
---@param width? number
---@param height? number
---@param depth? number
---@param color? integer
---@return OverlayGlasses.Canvas3d.Box
function canvas.addBox(x, y, z, width, height, depth, color) end

---Create a new line.
---@param start Position3D
---@param finish Position3D
---@param thickness? number
---@param color? integer
---@return OverlayGlasses.Canvas3d.Line
function canvas.addLine(start, finish, thickness, color) end

---Create a new frame to put 2d objects in.
---@param position Position3D
---@return OverlayGlasses.Canvas3d.Frame
function canvas.addFrame(position) end

---Recenter this canvas relative to the current position.
---@param offset? Position3D
function canvas.recenter(offset) end