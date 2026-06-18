---@meta

---A list of files that have been transferred to this computer.
---@class os.TransferredFiles
local TransferredFiles = {
	---All the files that are being transferred to this computer.
	---@return os.TransferredFile[]
	getFiles = function() end,
}

---A binary file handle that has been transferred to this computer.
---
---This inherits all methods of [binary file handles](https://tweaked.cc/module/fs.html#ty:ReadHandle), meaning you can use the standard read functions to access the contents of the file.
---@class os.TransferredFile : cc.fs.ReadHandle
local TransferredFile = {
	---Returns the name of this file being transferred.
	---@return string file_name
	getName = function() end,
}
