---@meta

---@class http.Websocket
local Websocket = {}

---Wait for a message from the server.
---@param timeout? number
---@return string? message
---@return boolean? binary
function Websocket.receive(timeout) end

---Send a websocket message to the connected server.
---@param message string
---@param binary? boolean
function Websocket.send(message, binary) end

---Close this websocket. This will terminate the connection, meaning messages can no longer be sent or received along it.
function Websocket.close() end