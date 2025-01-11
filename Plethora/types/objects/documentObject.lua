---@meta

---@class DocumentObject
local document = {}

---Get the documentation for all functions or the function specified. Errors if the function cannot be found.
---@param name? string
---@return string|table<string, string>
function document.getDocs(name) end