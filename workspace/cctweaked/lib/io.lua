---@meta

---@alias io.ReadFormat
---| '"l"'
---| '"L"'
---| '"a"'

---Emulates Lua's standard io library.
---
---<h2 align="center"><a href="https://tweaked.cc/module/io.html">Official Documentation</a></h2>
---@class iolib
local io = {
	---A file handle representing the "standard input". Reading from this file will prompt the user for input.
	---@type io.Handle
	stdin = nil,

	---A file handle representing the "standard output". Writing to this file will display the written text to the screen.
	---@type io.Handle
	stdout = nil,

	---A file handle representing the "standard error" stream.
	---
	---One may use this to display error messages, writing to it will display them on the terminal.
	---@type io.Handle
	stderr = nil,

	---Closes the provided file handle.
	---@param file? io.Handle The file handle to close, defaults to the current output file.
	close = function(file) end,

	---Flushes the current output file.
	flush = function() end,

	---Read from the currently opened input file.
	---
	---This is equivalent to `io.input():read(...)`.
	---@param ... io.ReadFormat The formats to read, defaulting to a whole line.
	---@return string? data The data read, or nil if nothing can be read.
	read = function(...) end,

	---Write to the currently opened output file.
	---
	---This is equivalent to `io.output():write(...)`.
	---@param ... string The strings to write
	write = function(...) end,

	---Checks whether handle is a given file handle, and determine if it is open or not.
	---@param obj any The value to check.
	---@return "file"|"closed file"|nil type
	type = function(obj) end,

	---Get or set the current input file.
	---@param file io.Handle|string The new input file, either as a file path or pre-existing handle.
	---@return io.Handle handle The current input file.
	input = function(file) end,

	---Get or set the current output file.
	---@param file io.Handle|string The new output file, either as a file path or pre-existing handle.
	---@return io.Handle handle The current output file.
	output = function(file) end,

	---Opens the given file name in read mode and returns an iterator that, each time it is called, returns a new line from the file.
	---This can be used in a for loop to iterate over all lines of a file.
	---Once the end of the file has been reached, nil will be returned. The file is automatically closed.
	---If no file name is given, the current input will be used instead. In this case, the handle is not used.
	---@param filename string The name of the file to extract lines from.
	---@param ReadFormat io.ReadFormat The formats to use.
	lines = function(filename, ReadFormat) end,

	---Open a file with the given mode, either returning a new file handle or nil, plus an error message.
	---@param path string The name of the file to open.
	---@param mode fs.FileMode The mode to open the file with. This defaults to r.
	---@return io.Handle handle The opened file.
	---@return string reason The reason the file could not be opened.
	open = function(path, mode) end,
}
