---@meta

---@class tom.BaseGPU
local BaseGPU = {
	---Returns the [Window bounds](lua://tom.Rect) of the current context.
	---@return tom.Rect bounds
	getBounds = function() end,

	---Draws the window buffer into the parent context.
	sync = function() end,
}
