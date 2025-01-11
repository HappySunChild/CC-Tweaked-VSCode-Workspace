---@meta

---@class Canvas.DepthTestable
local depthTestable = {}

---Determine whether depth testing is enabled for this object.
---@return boolean isDepthTested
function depthTestable.isDepthTested() end

---Set whether depth testing is enabled for this object.
---@param depthTest boolean
function depthTestable.setDepthTested(depthTest) end