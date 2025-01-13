---@meta

---A collection of helper methods for working with input completion,
---such as that require by `_G.read`.
---
---<h2 align="center"><a href="https://tweaked.cc/library/cc.completion.html">Official Documentation</a></h2>
---@class cc.completion
local completion = {}


---Complete from a choice of one or more strings.
---@param text string The input string to complete.
---@param choices string[] The list of choices to complete from.
---@param add_space? boolean Whether to add a space after the completed item.
---@return string[] matches A list of suffixes of matching strings.
function completion.choice(text, choices, add_space) end


---Complete the name of a currently attached peripheral.
---@param text string The input string to complete.
---@param add_space? boolean Whether to add a space after the completed name.
---@return string[] matches A list of suffixes of matching strings.
function completion.peripheral(text, add_space) end


---Complete the side of a computer.
---@param text string The input string to complete.
---@param add_space? boolean Whether to add a space after the completed name.
---@return string[] matches A list of suffixes of matching strings.
function completion.side(text, add_space) end


---Complete a setting.
---@param text string The input string to complete.
---@param add_space? boolean Whether to add a space after the completed name.
---@return string[] matches A list of suffixes of matching strings.
function completion.setting(text, add_space) end


---Complete the name of a Minecraft command.
---@param text string The input string to complete.
---@param add_space? boolean Whether to add a space after the completed name.
---@return string[] matches A list of suffixes of matching strings.
function completion.command(text, add_space) end