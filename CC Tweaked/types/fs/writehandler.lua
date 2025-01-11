---@meta

---@class fs.WriteHandler
local WriteHandle = {}

---Write a value to the file.
---@param value any
function WriteHandle.write(value) end

---Write a string of characters to the file, following them with a new line character.
---@param value any
function WriteHandle.writeLine(value) end

---Save the current file without closing it.
function WriteHandle.flush() end

---Close this file, freeing any resources it uses
---Once a file is closed it may no longer be read or written to.
function WriteHandle.close() end