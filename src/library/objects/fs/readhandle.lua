---@meta

---A file handle opened for reading with `fs.open`.
---@class fs.ReadHandle : fs.BaseHandle
local ReadHandle = {}


---Read a number of bytes from this file.
---@param count? integer The number of bytes to read. This may be 0 to determine we are at the end of the file. When absent, a single byte will be read.
---@return string|number|nil value `nil` if we are at the end of the file, otherwise the value of the bytes read.
function ReadHandle.read(count) end


---Read the remainder of the file.
---@return string? content The remaining contents of the file, or nil in the event of an error.
function ReadHandle.readAll() end


---Read a line from the file.
---@param withTrailing? boolean Whether to include the newline characters with the returned string. Defaults to false.
---@return string? line The read line or nil if at the end of the file.
function ReadHandle.readLine(withTrailing) end
