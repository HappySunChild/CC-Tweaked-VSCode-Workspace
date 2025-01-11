---@meta

---@class Canvas.Rotatable3D
local rotatable3d = {}

---Get the rotation for this object, or nil if it faces the player.
---@return number x?
---@return number y?
---@return number z?
function rotatable3d.getRotation() end

---Set the rotation for this object, passing nothing if it should face the player.
---@param x? number
---@param y? number
---@param z? number
function rotatable3d.setRotation(x, y, z) end