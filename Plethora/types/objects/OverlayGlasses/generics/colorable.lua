---@meta

---@class Canvas.Colorable
local colorable = {}

---Set the alpha for this object.
---@param alpha integer
function colorable.setAlpha(alpha) end

---Get the alpha for this object.
---@return integer
function colorable.getAlpha() end

---Set the colour for this object.
---@param color integer
---@return number
---@overload fun(r: number, g: number, b: number)
function colorable.setColor(color) end

---Get the colour for this object.
---@return integer color
function colorable.getColor() end