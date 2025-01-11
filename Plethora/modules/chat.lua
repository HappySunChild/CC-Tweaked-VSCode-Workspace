---@meta

---@class Modules.ChatRecorder
local chatRecorder = {}

---Send a message to yourself.
---@param message string
function chatRecorder.tell(message) end

---Send a message to everyone.
---@param message string
function chatRecorder.say(message) end

---Capture all chat messages matching a Lua pattern, preventing them from being said.
---@param pattern string
function chatRecorder.capture(pattern) end

---Remove a capture added by capture(pattern).
---@param pattern string
function chatRecorder.uncapture(pattern) end

---Remove all listeners added by capture().
function chatRecorder.clearCaptures() end