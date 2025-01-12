---@meta

---Modems allow you to send messages between computers over long distances.
---@class Peripheral.Modem
local modem = {}

---Open a channel on a modem. A channel must be open in order to receive messages. Modems can have up to 128 channels open at one time.
---@param channel number
function modem.open(channel) end

---Check if a channel is open.
---@param channel number
---@return boolean isOpen
function modem.isOpen(channel) end

---Close an open channel, meaning it will no longer receive messages.
---@param channel number
function modem.close(channel) end

---Close all open channels.
function modem.closeAll() end

---Sends a modem message on a certain channel. Modems listening on the channel will queue a modem_message event on adjacent computers.
---@param channel number
---@param replyChannel number
---@param payload any
function modem.transmit(channel, replyChannel, payload) end

---Determine if this is a wired or wireless modem.
---@return boolean isWireless
function modem.isWireless() end