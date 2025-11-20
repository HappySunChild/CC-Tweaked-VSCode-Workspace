---@meta

---Find help files on the current computer.
---
---<h2 align="center"><a href="https://tweaked.cc/module/help.html">Official Documentation</a></h2>
---@class helplib
local help = {
	---Returns a colon-separated list of directories where help files are searched for. All directories are absolute.
	---@return string path The current help search path, separated by colons.
	path = function() end,

	---Sets the colon-separated list of directories where help files are searched for to `newPath`.
	---@param newPath string The new path to use.
	setPath = function(newPath) end,

	---Returns the location of the help file for the given topic.
	---@param topic string The topic to find.
	---@return string? path The path to the given topic's help file, or `nil` if it cannot be found.
	lookup = function(topic) end,

	---Returns a list of topics that can be looked up and/or displayed.
	---@return string[] topics A list of topics in alphabetical order.
	topics = function() end,

	---Returns a list of topic endings that match the prefix.
	---Can be used with read to allow input of a help topic.
	---@param prefix string The prefix to match.
	---@return string[] topics A list of matching topics.
	completeTopic = function(prefix) end,
}
