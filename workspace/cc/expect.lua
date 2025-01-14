---@meta

---The cc.expect library provides helper functions for verifying
---that function arguments are well-formed and of the correct type.
---
---<h2 align="center"><a href="https://tweaked.cc/library/cc.expect.html">Official Documentation</a></h2>
local expect = {}


---Expect an argument to have a specific type.
---@generic T
---@param index number 	The 1-based argument index.
---@param value T 		The argument's value.
---@param ... string 	The allowed types of the argument.
---@return T value 		The given `value`.
function expect.expect(index, value, ...) end


---Expect an field to have a specific type.
---@param tbl table 	The table to index.
---@param index string 	The field name to check.
---@param ... string 	The allowed types of the argument.
---@return any field 	The contents of the given field.
function expect.field(tbl, index, ...) end


---Expect a number to be within a specific range.
---@param num number 	The value to check.
---@param min? number 	The minimum value, is `-math.huge` by default.
---@param max? number 	The maximum value, is `math.huge` by default.
---@return number num 	The given `num`.
function expect.range(num, min, max) end

return expect