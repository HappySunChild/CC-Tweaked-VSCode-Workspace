---@meta

---This peripheral allows you to interact with command blocks.
---@class Peripheral.Command
local command = {}

---Get the command this command block will run.
---@return string command
function command.getCommand() end

---Set the command block's command.
---@param command string
function command.setCommand(command) end

---Execute the command block once.
---@return boolean success
---@return string? message
function command.runCommand() end