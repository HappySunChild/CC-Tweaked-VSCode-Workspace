---@meta

---Various utilities for working with strings and text.
---
---<h2 align="center"><a href="https://tweaked.cc/library/cc.strings.html">Official Documentation</a></h2>
local strings = {}


---Wraps a block of text, so that each line fits within the given width.
---
---This may be useful if you want to wrap text before displaying it to a monitor or printer without using print.
---@param text string The string to wrap.
---@param width? number The width to constrain to, defaults to the width of the terminal.
---@return string[] wrapped The wrapped input string as a list of lines.
function strings.wrap(text, width) end


---Makes the input string a fixed width. This either truncates it, or pads it with spaces.
---@param text string The string to normalise.
---@param width number The width to constrain to, defaults to the width of the terminal.
---@return string str The string with a specific width.
function strings.ensure_width(text, width) end


---Split a string into parts, each separated by a deliminator.
---@param str string The string to split.
---@param deliminator string The pattern to split this string on.
---@param plain? boolean Treat the deliminator as a plain string, rather than a pattern.
---@param limit? number The maximum number of elements in the returned list.
---@return string[] split The list of split strings.
function strings.split(str, deliminator, plain, limit) end



return strings