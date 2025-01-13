---@meta

---A file handle which can be read or written to.
---@class io.Handle : fs.BaseHandle
local Handle = {}


---Flush any buffered output, forcing it to be written to the file
function Handle.flush() end


---Returns an iterator that, each time it is called, returns a new line from the file.
---This can be used in a for loop to iterate over all lines of a file
---Once the end of the file has been reached, nil will be returned. The file is not automatically closed
---@param ... any The argument to pass to Handle:read for each line.
---@return fun(): string? The line iterator.
function Handle.lines(...) end


---Reads data from the file, using the specified formats.
---For each format provided, the function returns either the
---data read, or nil if no data could be read.
---
---The following formats are available:
--- - l: Returns the next line (without a newline on the end).
--- - L: Returns the next line (with a newline on the end).
--- - a: Returns the entire rest of the file.
--- - n: Returns a number (not implemented in CC).
---@param ... io.readFormat The formats to use.
---@return string? data The data read from the file.
function Handle.read(...) end


---Write one or more values to the file
---@param ... string|number The values to write.
---@return self? Handle The current file, allowing chained calls or nil if the file could not be written to.
---@return string message The error message which occurred while writing.
function Handle.write(...) end