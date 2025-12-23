---@meta

---@class commands.BlockInfo: turtle.BlockInfo
---@field nbt? table<string, any>

---Execute [Minecraft commands](https://minecraft.wiki/w/Commands)
---using a command computer
---
---This API is only available on Command computers. It is not accessible
---to normal players.
---
---<h2 align="center"><a href="https://tweaked.cc/module/commands.html">Official Documentation</a></h2>
---@class commandslib
---@field native commandslib
local commands = {
	---Execute a specific command.
	---@param command string The command to execute.
	---@return boolean success Whether the command executed successfully.
	---@return string[] output The output of this command, as a list of lines.
	---@return number? affected The number of "affected" objects, or nil if the command failed.
	exec = function(command) end,

	---Asynchronously execute a command.
	---Unlike exec, this will immediately return, instead of waiting for the command to execute. This allows you to run multiple commands at the same time.
	---When this command has finished executing, it will queue a task_complete event containing the result of executing this command (what exec would return).
	---@async
	---@param command string The command to execute.
	---@return number taskId The "task id". When this command has been executed, it will queue a task_complete event with a matching id.
	execAsync = function(command) end,

	---List all available commands which the computer has permission to execute.
	---@param ... string The sub-command to complete.
	---@return string[] commands A list of all available commands
	list = function(...) end,

	---Get the position of the current command computer.
	---@return number x This computer's x position.
	---@return number y This computer's y position.
	---@return number z This computer's z position.
	getBlockPosition = function() end,

	---Get information about a range of blocks.
	---This returns the same information as getBlockInfo, just for multiple blocks at once.
	---Blocks are traversed by ascending y level, followed by z and x - the returned table may be indexed using `x + z*width + y*width*depth + 1`.
	---@param minX number The start x coordinate of the range to query.
	---@param minY number The start y coordinate of the range to query.
	---@param minZ number The start z coordinate of the range to query.
	---@param maxX number The end x coordinate of the range to query.
	---@param maxY number The end y coordinate of the range to query.
	---@param maxZ number The end z coordinate of the range to query.
	---@param dimension? string The dimension to query (e.g. "minecraft:overworld"). Defaults to the current dimension.
	---@return commands.BlockInfo[] blocks A list of information about each block.
	getBlockInfos = function(minX, minY, minZ, maxX, maxY, maxZ, dimension) end,

	---Get some basic information about a block.
	---The returned table contains the current name, metadata and block state (as with turtle.inspect). If there is a block entity for that block, its NBT will also be returned.
	---@param x number The x position of the block to query.
	---@param y number The y position of the block to query.
	---@param z number The z position of the block to query.
	---@param dimension? string The dimension to query (e.g. "minecraft:overworld"). Defaults to the current dimension.
	---@return commands.BlockInfo
	getBlockInfo = function(x, y, z, dimension) end,
}
