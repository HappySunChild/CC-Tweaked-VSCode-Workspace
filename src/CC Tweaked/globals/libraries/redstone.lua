---@meta

---@class Libraries.redstone
redstone = {}

---Returns a table containing the six sides of the computer.
---@return peripheral.Side[]
function redstone.getSides() end

---Turn the redstone signal of a specific side on or off.
---@param side peripheral.Side
---@param active boolean
function redstone.setOutput(side, active) end

---Get the current redstone output of a specific side.
---@param side peripheral.Side
---@return boolean active
function redstone.getOutput(side) end

---Get the current redstone input of a specific side.
---@param side peripheral.Side
---@return boolean active
function redstone.getInput(side) end

---Set the redstone signal strength for a specific side.
---@param side peripheral.Side
---@param strength integer
function redstone.setAnalogOutput(side, strength) end

---Get the redstone output signal strength for a specific side.
---@param side peripheral.Side
function redstone.getAnalogOutput(side) end

---Get the redstone input signal strength for a specific side.
---@param side peripheral.Side
---@return integer strength
function redstone.getAnalogInput(side) end

---Set the bundled cable output for a specific side.
---@param side peripheral.Side
---@param output integer
function redstone.setBundledOutput(side, output) end

---Get the bundled cable output for a specific side.
---@param side peripheral.Side
---@return integer color
function redstone.getBundledOutput(side) end

---Get the bundled cable input for a specific side.
---@param side peripheral.Side
---@return integer color
function redstone.getBundledInput(side) end

---Determine if a specific combination of colours are on for the given side.
---@param side string
---@param mask number
---@return boolean active
function redstone.testBundledInput(side, mask) end