---@meta

---@class ModuleContainer
local container = {}

---Checks whether a module is available
---@param name string
---@return boolean hasModule
function container.hasModule(name) end

---Gets the methods which require these modules
---@vararg string
---@return table
function container.filterModules(...) end

---Lists all modules available
---@return string[]
function container.listModules() end