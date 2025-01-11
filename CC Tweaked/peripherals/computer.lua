---@meta

---A computer or turtle wrapped as a peripheral.
---@class Peripheral.Computer
local computer = {}

---Turn the other computer on.
function computer.turnOn() end

---Shutdown the other computer.
function computer.shutdown() end

---Reboot or turn on the other computer.
function computer.reboot() end

---Get the other computer's ID.
---@return number id
function computer.getID() end

---Determine if the other computer is on.
---@return boolean isOn
function computer.isOn() end

---Get the other computer's label.
---@return string? label
function computer.getLabel() end