---@meta

---Emulates Lua's standard io library.
---
---<h2 align="center"><a href="https://tweaked.cc/module/io.html">Official Documentation</a></h2>
---@class io
io = {}


---A file handle representing the "standard input". Reading from this file will prompt the user for input.
---@type io.Handle
io.stdin = nil

---A file handle representing the "standard output". Writing to this file will display the written text to the screen.
---@type io.Handle
io.stdout = nil

---A file handle representing the "standard error" stream.
---
---One may use this to display error messages, writing to it will display them on the terminal.
---@type io.Handle
io.stderr = nil





---Closes the provided file handle.
---@param file? io.Handle The file handle to close, defaults to the current output file.
function io.close(file) end


---Flushes the current output file.
function io.flush() end


---Read from the currently opened input file.
---
---This is equivalent to `io.input():read(...)`.
---@param ... io.readFormat The formats to read, defaulting to a whole line.
---@return string? data The data read, or nil if nothing can be read.
function io.read(...) end


---Write to the currently opened output file.
---
---This is equivalent to `io.output():write(...)`.
---@param ... string The strings to write
function io.write(...) end


---Checks whether handle is a given file handle, and determine if it is open or not.
---@param obj any The value to check.
---@return "file"|"closed file"|nil type
function io.type(obj) end


---Get or set the current input file.
---@param file io.Handle|string The new input file, either as a file path or pre-existing handle.
---@return io.Handle handle The current input file.
function io.input(file) end


---Get or set the current output file.
---@param file io.Handle|string The new output file, either as a file path or pre-existing handle.
---@return io.Handle handle The current output file.
function io.output(file) end


---Opens the given file name in read mode and returns an iterator that, each time it is called, returns a new line from the file.
---This can be used in a for loop to iterate over all lines of a file.
---Once the end of the file has been reached, nil will be returned. The file is automatically closed.
---If no file name is given, the current input will be used instead. In this case, the handle is not used.
---@param filename string The name of the file to extract lines from.
---@param readFormat io.readFormat The formats to use.
function io.lines(filename, readFormat) end


---Open a file with the given mode, either returning a new file handle or nil, plus an error message.
---@param path string The name of the file to open.
---@param mode fs.fileMode The mode to open the file with. This defaults to r.
---@return io.Handle handle The opened file.
---@return string reason The reason the file could not be opened.
function io.open(path, mode) end