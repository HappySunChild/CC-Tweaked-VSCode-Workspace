---@meta

---A websocket, which can be used to send and receive messages with a web server.
---@class http.Websocket
local Websocket = {}

---Wait for a message from the server.
---@param timeout number The number of seconds to wait if no message is received.
---@return string? message The received message or `nil` if the websocket was closed while waiting, or if we timed out.
---@return boolean binary If this was a binary message.
function Websocket.receive(timeout) end

---Send a websocket message to the connected server.
---@param message string The message to send.
---@param binary? boolean Whether this message should be treated as binary.
function Websocket.send(message, binary) end

---Close this websocket. This will terminate the connection, meaning messages can no longer be sent or received along it.
function Websocket.close() end
