---@meta

---@class Libraries.window
window = {}

---Returns a terminal object that is a space within the specified parent terminal object. This can then be used (or even redirected to) in the same manner as eg a wrapped monitor. Refer to the term API for a list of functions available to it.
---@param parent Redirect
---@param x number
---@param y number
---@param width number
---@param height number
---@param startVisible? boolean
---@return Window
function window.create(parent, x, y, width, height, startVisible) end