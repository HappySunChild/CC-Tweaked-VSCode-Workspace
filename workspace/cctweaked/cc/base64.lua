---@meta

---The `cc.base64` module provides functions for converting binary data to and from [Base64](https://en.wikipedia.org/wiki/Base64).
---
---<h2 align="center"><a href="https://tweaked.cc/library/cc.base64.html">Official Documentation</a></h2>
local base64 = {
	---Encode a binary string to Base64.
	---@param str string The binary data to encode.
	---@param alt_chars string? A string of length 2, used to encode the 62nd and 63rd bit.
	---@return string encoded The Base64 encoded data.
	encode = function(str, alt_chars) end,

	---Decode a Base64-encoded string back to its original state.
	---
	---This function requires the data to be valid Base64 with the trailing padding bytes.
	---@param str string The Base64-encoded data to decode.
	---@param alt_chars string? A string of length 2, used to encode the 62nd and 63rd bit.
	---@return string? decoded The decoded data, or nil if the data is not valid Base64, or is missing the trailing padding.
	---@return string? err The reason the data failed to decode.
	decode = function(str, alt_chars) end,
}

return base64
