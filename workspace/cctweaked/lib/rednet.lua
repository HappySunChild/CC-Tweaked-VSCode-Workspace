---@meta

---@alias rednet.Transmittable string | boolean | number | table

---Communicate with other computers by using modems.
---rednet provides a layer of abstraction on top of the main modem peripheral,
---making it slightly easier to use.
---
---<h2 align="center"><a href="https://tweaked.cc/module/rednet.html">Official Documentation</a></h2>
---@class rednetlib
local rednet = {
	CHANNEL_BROADCAST = 65535, ---The channel used by the Rednet API to broadcast messages.
	CHANNEL_REPEAT = 65533, ---The channel used by the Rednet API to repeat messages.
	MAX_ID_CHANNELS = 65500, ---The number of channels rednet reserves for computer IDs. Computers with IDs greater or equal to this limit wrap around to 0.

	---Opens a modem with the given peripheral name, allowing it to send and receive messages over rednet.
	---
	---This will open the modem on two channels: one which has the same ID as the computer, and another on the broadcast channel.
	---@param modem string The name of the modem to open.
	open = function(modem) end,

	---Close a modem with the given peripheral name, meaning it can no longer send and receive rednet messages.
	---@param modem? string The side the modem exists on. If not given, all open modems will be closed
	close = function(modem) end,

	---Determine if rednet is currently open.
	---@param modem string Which modem to check. If not given, all connected modems will be checked.
	---@return boolean isOpen  If the given modem is open.
	isOpen = function(modem) end,

	---Allows a computer or turtle with an attached modem to send a message
	---intended for a computer with a specific ID. At least one such modem
	---must first be opened before sending is possible.
	---
	---Assuming the target was in range and also had a correctly opened modem,
	---the target computer may then use rednet.receive to collect the message.
	---@param recipient number The ID of the receiving computer.
	---@param message rednet.Transmittable The message to send. Like with `modem.transmit`, this can contain any primitive type (numbers, booleans and strings) as well as tables. Other types (like functions), as well as metatables, will not be transmitted.
	---@param protocol? string The "protocol" to send this message under. When using rednet.receive one can filter to only receive messages sent under a particular protocol.
	---@return boolean sent If this message was successfully sent (i.e. if rednet is currently open). Note, this does not guarantee the message was actually received.
	send = function(recipient, message, protocol) end,

	---Broadcasts a string message over the predefined CHANNEL_BROADCAST channel.
	---The message will be received by every device listening to rednet.
	---@param message rednet.Transmittable The message to broadcast. Like with `modem.transmit`, this can contain any primitive type (numbers, booleans and strings) as well as tables. Other types (like functions), as well as metatables, will not be transmitted.
	---@param protocol string The "protocol" to send this message under. When using rednet.receive one can filter to only receive messages sent under a particular protocol.
	broadcast = function(message, protocol) end,

	---Wait for a rednet message to be received, or until `timeout` seconds have elapsed.
	---@param protocol_filter? string The protocol the received message must be sent with. If specified, any messages not sent under this protocol will be discarded.
	---@param timeout? number The number of seconds to wait if no message is received.
	---@return number id The computer which sent this message.
	---@return rednet.Transmittable message The received message.
	---@return string? protocol The protocol this message was sent under.
	receive = function(protocol_filter, timeout) end,

	---Register the system as "hosting" the desired protocol under the specified name.
	---If a `rednet.lookup` is performed for that protocol (and maybe name) on the same network,
	---the registered system will automatically respond via a background process,
	---hence providing the system performing the lookup with its ID number.
	---@param protocol string The protocol this computer provides.
	---@param hostname string The name this computer exposes for the given protocol.
	host = function(protocol, hostname) end,

	---Stop hosting a specific protocol, meaning it will no longer respond to `rednet.lookup` requests.
	---@param protocol string The protocol to unregister your self from.
	unhost = function(protocol) end,

	---Search the local rednet network for systems hosting the desired
	---protocol and returns any computer IDs that respond as "registered" against it.
	---
	---If a hostname is specified, only one ID will be returned (assuming an exact match is found).
	---@param protocol string The protocol to search for.
	---@param hostname? string The hostname to search for.
	---@return number? ... A list of computer IDs hosting the given protocol.
	lookup = function(protocol, hostname) end,

	---Listen for modem messages and converts them into rednet messages, which may then be received.
	---
	---**This is automatically started in the background on computer startup, and should not be called manually.**
	---@deprecated
	run = function() end,
}
