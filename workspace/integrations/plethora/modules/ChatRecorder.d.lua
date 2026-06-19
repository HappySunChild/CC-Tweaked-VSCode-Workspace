---@meta

---Methods for the ChatRecorder (`plethora:chat`) when it's in a NeuralInterface
---@class plethora.module.ChatRecorderNeural
local ChatRecorderNeural = {
	---Adds a listener that captures all chat messages matching a Lua pattern, preventing them from being said.
	---@param pattern string
	capture = function(pattern) end,

	---Removes a listener added by [capture](lua://plethora.module.ChatRecorder.Neural.capture).
	---@param pattern string
	uncapture = function(pattern) end,

	---Remove all listeners added by [capture](lua://plethora.module.ChatRecorder.Neural.capture).
	clearCaptures = function() end,

	---Send a message to everyone.
	---@param message string
	say = function(message) end,

	---Send a message to yourself.
	---@param message string
	tell = function(message) end,
}
