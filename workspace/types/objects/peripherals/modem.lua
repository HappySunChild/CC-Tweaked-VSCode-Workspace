---@meta

---Modems allow you to send messages between computers over long distances.
---@class peripheral.Modem
local Modem = {}


---Check if a channel is open.
---@param channel number The channel to check.
---@return boolean isOpen Whether the channel is open.
function Modem.isOpen(channel) end


---Open a channel on a modem. A channel must be open in order to receive messages. Modems can have up to 128 channels open at one time.
---@param channel number The channel to open. This must be a number between 0 and 65535.
function Modem.open(channel) end


---Close an open channel, meaning it will no longer receive messages.
---@param channel number The channel to close.
function Modem.close(channel) end


---Close all open channels.
function Modem.closeAll() end


---Sends a modem message on a certain channel.
---Modems listening on the channel will queue a `modem_message` event on adjacent computers.
---@param channel number The channel to send messages on.
---@param replyChannel number The channel that responses to this message should be sent on. This can be the same as channel or entirely different. The channel must have been opened on the sending computer in order to receive the replies.
---@param payload rednet.transmittable The object to send. This can be any primitive type (boolean, number, string) as well as tables. Other types (like functions), as well as metatables, will not be transmitted.
function Modem.transmit(channel, replyChannel, payload) end


---Determine if this is a wired or wireless modem.
---@return boolean isWireless If this is a wireless modem.
function Modem.isWireless() end


---List all remote peripherals on the wired network.
---
---If this computer is attached to the network, it will not be included in this list.
---@return string[] Remote peripheral names on the network.
function Modem.getNamesRemote() end


---Determine if a peripheral is available on this wired network.
---@param name string The peripheral's name.
---@return boolean isPresent If a peripheral is present with the given name.
function Modem.isPresentRemote(name) end


---Get the type of a peripheral is available on this wired network.
---@param name string The peripheral's name.
---@return string? type The peripheral's type, or nil if it is not present.
function Modem.getTypeRemote(name) end


---Check a peripheral is of a particular type.
---@param name string The peripheral's name.
---@param type string The type to check.
---@return boolean hasType If a peripheral has a particular type, or nil if it is not present.
function Modem.hasTypeRemote(name, type) end


---Get all available methods for the remote peripheral with the given name.
---@param name string The peripheral's name.
---@return string[] methods A list of methods provided by this peripheral, or nil if it is not present.
function Modem.getMethodsRemote(name) end


---Call a method on a peripheral on this wired network.
---@param remoteName string The name of the peripheral to invoke the method on.
---@param method string The name of the method.
---@param ... any Additional arguments to pass to the method.
---@return any ... The return values of the peripheral method.
function Modem.callRemote(remoteName, method, ...) end


---Returns the network name of the current computer, if the modem is on. This may be used by other computers on the network to wrap this computer as a peripheral.
---@return string? name The current computer's name on the wired network.
function Modem.getNameLocal() end