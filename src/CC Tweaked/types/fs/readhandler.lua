---@meta

---@class fs.ReadHandler
local ReadHandle = {}

---Read a number of bytes from this file.
---@param count? integer
---@return string|number|nil any
function ReadHandle.read(count) end

---Read the remainder of the file.
---@return string content
function ReadHandle.readAll() end

---Read a line from the file.
---@param withTrailing? boolean
---@return string? line
function ReadHandle.readLine(withTrailing) end

---Close this file, freeing any resources it uses
---Once a file is closed it may no longer be read or written to.
function ReadHandle.close() end