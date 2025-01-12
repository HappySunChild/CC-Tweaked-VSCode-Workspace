---@meta

---@class Libraries.commands
commands = {}
commands.native = {}
commands.async = {}

---@class BlockInfo
---@field name string
---@field count integer

---Execute a specific command.
---@param command string
---@return boolean success
---@return string[] output
---@return number? affected
function commands.exec(command) end

---Asynchronously execute a command.
---@param command string
---@return number taskId
function commands.execAsync(command) end

---List all available commands which the computer has permission to execute.
---@param command? string
---@return string[] commands
function commands.list(command) end

---Get the position of the current command computer.
---@return number x
---@return number y
---@return number z
function commands.getBlockPosition() end

---Get information about a range of blocks.
---@param minX number
---@param minY number
---@param minZ number
---@param maxX number
---@param maxY number
---@param maxZ number
---@param dimension? string
---@return BlockInfo[] details
function commands.getBlockInfos(minX, minY, minZ, maxX, maxY, maxZ, dimension) end

---Get some basic information about a block.
---@param x number
---@param y number
---@param z number
---@param dimension? string
---@return BlockInfo
function commands.getBlockInfo(x, y, z, dimension) end