---@meta

---@class Libraries.rednet
rednet = {}
rednet.CHANNEL_BROADCAST = 65535
rednet.CHANNEL_REPEAT = 65533
rednet.MAX_ID_CHANNELS = 65500

---Opens a modem with the given peripheral name, allowing it to send and receive messages over rednet.
---@param modem peripheral.Name
function rednet.open(modem) end

---Close a modem with the given peripheral name, meaning it can no longer send and receive rednet messages.
---@param modem peripheral.Name
function rednet.close(modem) end

---Determine if rednet is currently open.
---@param modem peripheral.Name
---@return boolean isOpen
function rednet.isOpen(modem) end

---Allows a computer or turtle with an attached modem to send a message intended for a sycomputer with a specific ID. At least one such modem must first be opened before sending is possible.
---@param recipient number
---@param message any
---@param protocol? string
---@return boolean didSend
function rednet.send(recipient, message, protocol) end

---Broadcasts a string message over the predefined CHANNEL_BROADCAST channel. The message will be received by every device listening to rednet.
---@param message any
---@param protocol? string
function rednet.broadcast(message, protocol) end

---Wait for a rednet message to be received, or until nTimeout seconds have elapsed.
---@param protocol? string
---@param timout? number
---@return number id
---@return any message
---@return string? protocol
function rednet.receive(protocol, timout) end

---Register the system as "hosting" the desired protocol under the specified name. If a rednet lookup is performed for that protocol (and maybe name) on the same network, the registered system will automatically respond via a background process, hence providing the system performing the lookup with its ID number.
---@param protocol string
---@param hostname string
function rednet.host(protocol, hostname) end

---Stop hosting a specific protocol, meaning it will no longer respond to rednet.lookup requests.
---@param protocol string
function rednet.unhost(protocol) end

---Search the local rednet network for systems hosting the desired protocol and returns any computer IDs that respond as "registered" against it.
---@param protocol string
---@param hostname? string
---@return number? ...
function rednet.lookup(protocol, hostname) end

---Listen for modem messages and converts them into rednet messages, which may then be received.
---
---This is automatically started in the background on computer startup, and should **not** be called manually.
function rednet.run() end