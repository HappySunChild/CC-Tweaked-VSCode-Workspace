---@meta

---This peripheral allows you to interact with command blocks.
---
---Command blocks are only wrapped as peripherals if the `enable_command_block` option is true within the config.
---
---This API is not the same as the commands API, which is exposed on command computers.
---@class peripheral.CommandBlock
local CommandBlock = {
	---Get the command this command block will run.
	---@return string command The current command.
	getCommand = function() end,

	---Set the command block's command.
	---@param command string The new command.
	setCommand = function(command) end,

	---Execute the command block once.
	---@return boolean success If the command completed successfully.
	---@return string reason A failure message.
	runCommand = function() end,
}
