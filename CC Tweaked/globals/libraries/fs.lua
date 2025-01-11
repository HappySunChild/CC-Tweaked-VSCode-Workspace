---@meta

---@class Libraries.fs
fs = {}

---Provides completion for a file or directory name, suitable for use with `_G.read`.
---@param path string
---@param location string
---@param includeFiles? boolean
---@param includeDirectories? boolean
---@return string[]|table candidates
function fs.complete(path, location, includeFiles, includeDirectories) end

---Searches for files matching a string with wildcards.
---@param path string
---@return string[] matches
function fs.find(path) end

---Returns true if a path is mounted to the parent filesystem.
---@param path string
---@return boolean isMounted
function fs.isDriveRoot(path) end

---Returns a list of files in a directory.
---@param path string
---@return string[] files
function fs.list(path)end

---Combines several parts of a path into one full path, adding separators as needed.
---@param base string
---@vararg string
---@return string combined
function fs.combine(base, ...) end

---Returns the file name portion of a path.
---@param path string
---@return string name
function fs.getName(path) end

---Returns the parent directory portion of a path.
---@param path string
---@return string parentDirectory
function fs.getDir(path) end

---Returns the size of the specified file in bytes.
---@param path string
---@return integer bytes
function fs.getSize(path) end

---Returns whether the specified path exists.
---@param path string
---@return BlockInfo exists
function fs.exists(path) end

---Returns whether the specified path is a directory.
---@param path string
---@return boolean isDirectory
function fs.isDir(path) end

---Returns whether a path is read-only.
---@param path string
---@return boolean isReadOnly
function fs.isReadOnly(path) end

---Creates a directory, and any missing parents, at the specified path.
---@param path string
function fs.makeDir(path) end

---Moves a file or directory from one path to another.
---@param path string
---@param dest string
function fs.move(path, dest) end

---Copies a file or directory to a new path.
---@param path string
---@param dest string
function fs.copy(path, dest) end

---Deletes a file or driectory.
---@param path string
function fs.delete(path) end

---Opens a file for reading or writing at a path.
---@param path string
---@param mode fs.FileMode
---@return fs.WriteHandler|fs.ReadHandler file
---@return string? errorMessage
function fs.open(path, mode) end

---Returns the name of the mount that the specified path is located on.
---@param path string
---@return string driveName
function fs.getDrive(path) end

---Returns the amount of free space available on the drive the path is located on.
---@param path string
---@return number|'unlimited' bytes
function fs.getFreeSpace(path) end

---Returns the capacity of the drive the path is located on.
---@param path string
---@return integer? bytes
function fs.getCapacity(path) end

---Get attributes about a specific file or folder.
---@param path string
---@return fs.FileAttributes attributes
function fs.attributes(path) end