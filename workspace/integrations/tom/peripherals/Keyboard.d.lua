---@meta

---@class tom.peripheral.Keyboard
local Keyboard = {
	---The value is computer specific, and it is false by default.
	---If it is `false` all events are prefixed with `tm_keyboard_` and the first parameter is the peripheral name.
	---If it is true it matches the default terminal events, works with the builtin monitor program.
	---@param enabled boolean
	setFireNativeEvents = function(enabled) end,
}
