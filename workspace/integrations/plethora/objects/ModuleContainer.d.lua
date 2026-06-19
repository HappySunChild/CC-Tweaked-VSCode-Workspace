---@meta

---@class plethora.ModuleContainer
local ModuleContainer = {
	---Returns the methods which require the specified modules. Returns `nil` if no methods could be found.
	---@param ... string
	---@return table<string, function>?
	filterModules = function(...) end,

	---Returns whether a module is available.
	---@param module string
	---@return boolean is_available
	hasModule = function(module) end,

	---Returns a list of modules which are available.
	---@return string[] modules
	listModules = function() end,
}
