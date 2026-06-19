---@meta

---@class plethora.module.NoteBlock
local NoteBlock = {
	---Plays a note block note.
	---@param instrument string | number
	---@param pitch number
	---@param volume number?
	playNote = function(instrument, pitch, volume) end,

	---Plays a sound.
	---@param sound string
	---@param pitch number?
	---@param volume number?
	playSound = function(sound, pitch, volume) end,
}
