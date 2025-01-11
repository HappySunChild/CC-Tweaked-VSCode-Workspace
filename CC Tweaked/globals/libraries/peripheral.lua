---@meta

---@class Libraries.peripheral
peripheral = {}

---Provides a list of all peripherals available.
---@return string[] peripherals
function peripheral.getNames() end

---Determines if a peripheral is present with the given name.
---@param name string
---@return boolean isPresent
function peripheral.isPresent(name) end

---Get the types of a named or wrapped peripheral.
---@param peripheral string|peripheral.WrappedPeripheral
---@return string ...
function peripheral.getType(peripheral) end

---Check if a peripheral is of a particular type.
---@param peripheral string|peripheral.WrappedPeripheral
---@param type string
---@return boolean? hasType
function peripheral.hasType(peripheral, type) end

---Get all available methods for the peripheral with the given name.
---@param name string
---@return string[] methods
function peripheral.getMethods(name) end

---Get the name of a peripheral wrapped with `peripheral.wrap`.
---@param peripheral peripheral.WrappedPeripheral
---@return string name
function peripheral.getName(peripheral) end

---Call a method on the peripheral with the given name.
---@param name string
---@param method string
---@param ... string
---@return any ...
function peripheral.call(name, method, ...) end

---Get a table containing all functions available on a peripheral. These can then be called instead of using `peripheral.call` every time.
---@param name string
---@return peripheral.WrappedPeripheral? peripheral
function peripheral.wrap(name) end

---Find all peripherals of a specific type, and return the wrapped peripherals.
---@param type string
---@param filter? fun(name: string, peripheral: peripheral.WrappedPeripheral): boolean
---@return peripheral.WrappedPeripheral[] peripherals
function peripheral.find(type, filter) end