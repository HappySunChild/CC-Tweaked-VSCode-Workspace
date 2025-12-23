---@meta

---@class fs.FileHandle
local FileHandle = {
	---Seek to a new position within the file, changing where bytes are written to.
	---The new position is an offset given by `offset`, relative to a start position determined by `whence`:
	--- - "set": offset is relative to the beginning of the file.
	--- - "cur": Relative to the current position. This is the default.
	--- - "end": Relative to the end of the file.
	---
	---In case of success, seek returns the new file position from the beginning of the file.
	---@param whence? fs.SeekWhence Where the offset is relative to.
	---@param offset? number The offset to seek to.
	---@return number? position The new position.
	---@return string? failReason The reason seeking failed.
	seek = function(whence, offset) end,

	---Close this file, freeing any resources it uses.
	---Once a file is closed it may no longer be read or written to.
	close = function() end,
}
