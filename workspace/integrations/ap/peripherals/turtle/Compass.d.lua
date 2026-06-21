---@meta

---@class ap.peripheral.turtle.Compass
local Compass = {
	getName = function() end,

	getConfiguration = function() end,

	---Returns the cardinal direction the turtle is currently facing (north, west, south, east).
	---@return "north" | "south" | "east" | "west" facing
	getFacing = function() end,
}
