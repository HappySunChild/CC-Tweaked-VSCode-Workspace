---@meta

---@class create.peripheral.Sticker
local Sticker = {
	---Returns whether the sticker is extended.
	---@return boolean extended
	isExtended = function() end,

	---Returns whether the stick is sticking to a block.
	---@return boolean attached
	isAttachedToBlock = function() end,

	---Extends the sticker.
	---@return boolean success Whether the sticker actually extended.
	extend = function() end,

	---Retracts the sticker.
	---@return boolean success Whether the sticker actually retracted.
	retract = function() end,

	---Toggles between the sticker being retracted and extended, regardless of it's previous state
	---@return boolean success Whether the sticker was able to toggle it's state.
	toggle = function() end,
}
