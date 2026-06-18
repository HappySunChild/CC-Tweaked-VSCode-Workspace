---@meta

---Allows reading and writing of NBT data to the block for later use.
---@class ap.peripheral.NBTStorage
local NBTStorage = {
	---Returns the NBT data stored in the block.
	---@return table nbt
	read = function() end,

	---Writes the json as NBT data into the block.
	---@param json string
	---@return boolean? success Whether the data was successfully written.
	---@return string? message An error message.
	writeJson = function(json) end,

	---Writes NBT data into the block.
	---@param nbt table
	---@return boolean? success Whether the data was successfully written.
	---@return string? message An error message.
	writeTable = function(nbt) end,
}
