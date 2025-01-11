---@meta

---@class Canvas.MultipointResizable2D: Canvas.Multipoint2D
local multipointResizable2d = {} -- these class names are getting rediculous

---Get the number of verticies on this object.
---@return integer count
function multipointResizable2d.getPointCount() end

---Remove the specified vertex of this object.
---@param index integer
function multipointResizable2d.removePoint(index) end

---Add a specified vertex to this object.
---@param index integer
---@param x number
---@param y number
---@overload fun(x: number, y: number)
function multipointResizable2d.insertPoint(index, x, y) end