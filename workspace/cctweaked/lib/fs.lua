---@meta

---Interact with the computer's files and filesystem, allowing you
---to manipulate files, directories and paths.
---
---All functions in the API work on absolute paths, and do not take
---the current directory into account. You can use `shell.resolve` to
---convert a relative path into an absolute one.
---
---While a computer can only have one hard drive and filesystem, other
---filesystems may be "mounted" inside it. For instance, the drive
---peripheral mounts its disk's contents at `"disk/"`, `"disk1/"`, etc.
---
---<h2 align="center"><a href="https://tweaked.cc/module/fs.html">Official Documentation</a></h2>
---@class fslib
local fs = {
	---Provides completion for a file or directory name, suitable for use with _G.read.
	---When a directory is a possible candidate for completion, two entries are included -
	---one with a trailing slash (indicating that entries within this directory exist)
	---and one without it (meaning this entry is an immediate completion candidate).
	---include_dirs can be set to false to only include those with a trailing slash.
	---
	---@param path string The path to complete.
	---@param location string The location where paths are resolved from.
	---@param include_files? boolean When false, only directories will be included in the returned list.
	---@param include_dirs? boolean When false, "raw" directories will not be included in the returned list.
	---@return string[] candidates A list of possible completion candidates.
	complete = function(path, location, include_files, include_dirs) end,

	---Searches for files matching a string with wildcards.
	---This string looks like a normal path string, but can include wildcards, which can match multiple paths:
	--- - "?" matches any single character in a file name.
	--- - "*" matches any number of characters.
	---@param path string The wildcard-qualified path to search for.
	---@return string[] paths A list of paths that match the search string.
	find = function(path) end,

	---Returns true if a path is mounted to the parent filesystem.
	---The root filesystem "/" is considered a mount, along with disk folders and the rom folder.
	---@param path string The path to check.
	---@return boolean isMounted If the path is mounted, rather than a normal file/folder.
	isDriveRoot = function(path) end,

	---Returns a list of files in a directory.
	---@param path string The path to list.
	---@return string[] files A table with a list of files in the directory.
	list = function(path) end,

	---Combines several parts of a path into one full path, adding separators as needed.
	---@param path string
	---@param ... string
	---@return string path The new path, with separators added between parts as needed.
	combine = function(path, ...) end,

	---Returns the file name portion of a path.
	---@param path string The path to get the name from.
	---@return string name The final part of the path (the file name).
	getName = function(path) end,

	---Returns the parent directory portion of a path.
	---@param path string The path to get the directory from.
	---@return string directory The path with the final part removed (the parent directory).
	getDir = function(path) end,

	---Returns the size of the specified file in bytes.
	---@param path string The file to get the file size of.
	---@return number size The size of the file, in bytes.
	getSize = function(path) end,

	---Returns whether the specified path exists.
	---@param path string The path to check the existence of.
	---@return boolean exists Whether the path exists.
	exists = function(path) end,

	---Returns whether the specified path is a directory.
	---@param path string The path to check.
	---@return boolean isDirectory Whether the path is a directory.
	isDir = function(path) end,

	---Returns whether a path is read-only.
	---@param path string The path to check.
	---@return boolean isReadOnly Whether the path cannot be written to.
	isReadOnly = function(path) end,

	---Creates a directory, and any missing parents, at the specified path.
	---@param path string The path to the directory to create.
	makeDir = function(path) end,

	---Moves a file or directory from one path to another.
	---Any parent directories are created as needed.
	---@param path string The current file or directory to move from.
	---@param dest string The destination path for the file or directory.
	move = function(path, dest) end,

	---Copies a file or directory to a new path.
	---Any parent directories are created as needed.
	---@param path string The file or directory to copy.
	---@param dest string The path to the destination file or directory.
	copy = function(path, dest) end,

	---Deletes a file or directory.
	---If the path points to a directory, all of the enclosed files and subdirectories are also deleted.
	---@param path string The path to the file or directory to delete.
	delete = function(path) end,

	---Opens a file for reading or writing at a path.
	---
	---The mode string can be any of the following:
	--- - "r": Read mode.
	--- - "w": Write mode.
	--- - "a": Append mode.
	--- - "r+": Update mode (allows reading and writing), all data is preserved.
	--- - "w+": Update mode, all data is erased.
	---
	---The mode may also have a "b" at the end, which opens the file in "binary mode".
	---This changes `fs.ReadHandle.read` and `fs.WriteHandle.write` to read/write single
	---**bytes as numbers** rather than strings.
	---@param path string The path to the file to open.
	---@param mode fs.FileMode The mode to open the file with.
	---@return fs.ReadHandle | fs.WriteHandle handle A file handle object for the file.
	open = function(path, mode) end,

	---Returns the name of the mount that the specified path is located on.
	---@param path string The path to get the drive of.
	---@return string? name The name of the drive that the file is on; e.g. `hdd` for local files, or `rom` for ROM files.
	getDrive = function(path) end,

	---Returns the amount of free space available on the drive the path is located on.
	---@param path string The path to check the free space for.
	---@return number|"unlimited" freeSpace The amount of free space available, in bytes, or "unlimited".
	getFreeSpace = function(path) end,

	---Returns the capacity of the drive the path is located on.
	---@param path string The path of the drive to get.
	---@return number? capacity This drive's capacity. This will be nil for "read-only" drives, such as the ROM or treasure disks.
	getCapacity = function(path) end,

	---Get attributes about a specific file or folder.
	---
	---The returned attributes table contains information about the size of the file,
	---whether it is a directory, when it was created and last modified, and whether it is read only.
	---
	---The creation and modification times are given as the number of milliseconds
	---since the UNIX epoch. This may be given to `os.date` in order to convert it
	---to more usable form.
	---@param path string The path to get attributes for.
	---@return fs.Attributes attributes The resulting attributes.
	attributes = function(path) end,
}
