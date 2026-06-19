---@meta

---@class plethora.Documented
local Documented = {
	---Get the documentation for all functions or the function specified. Errors if the function cannot be found.
	---@return table<string, string>
	---@overload fun(name: string): string
	getDocs = function() end,
}
