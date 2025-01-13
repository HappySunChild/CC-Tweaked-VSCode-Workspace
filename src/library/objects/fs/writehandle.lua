---@meta

---A file handle opened for writing by `fs.open`.
---@class fs.WriteHandle : fs.BaseHandle
local WriteHandle = {}


---Write a string or byte to the file.
---@param value string|number The string/byte to write.
function WriteHandle.write(value) end


---Write a string of characters to the file, following them with a new line character.
---@param text string The text to write to the file.
function WriteHandle.writeLine(text) end


---Save the current file without closing it.
function WriteHandle.flush() end
