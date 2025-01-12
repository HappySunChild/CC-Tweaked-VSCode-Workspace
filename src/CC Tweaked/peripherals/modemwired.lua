---@meta

---Modems allow you to send messages between computers over long distances.
---@class Peripheral.WiredModem : Peripheral.Modem
local wiredmodem = {}

---List all remote peripherals on the wired network.
---@return string[] names
function wiredmodem.getNamesRemote() end

---Determine if a peripheral is available on this wired network.
---@param name string
---@return boolean isPresent
function wiredmodem.isPresentRemote(name) end

---Get the type of a peripheral is available on this wired network.
---@param name string
---@return peripheral.Type? type
function wiredmodem.getTypeRemote(name) end

---Check a peripheral is of a particular type.
---@param name string
---@param type peripheral.Type
---@return boolean? hasType
function wiredmodem.hasTypeRemote(name, type) end

---Get all available methods for the remote peripheral with the given name.
---@param name string
---@return string[] methods
function wiredmodem.getMethodsRemote(name) end

---Call a method on a peripheral on this wired network.
---@param name string
---@param method string
---@vararg any
---@return string values
function wiredmodem.callRemote(name, method, ...) end

---Returns the network name of the current computer, if the modem is on. This may be used by other computers on the network to wrap this computer as a peripheral.
---@return string? name
function wiredmodem.getNameLocal() end