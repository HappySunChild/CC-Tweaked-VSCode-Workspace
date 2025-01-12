---@meta

---@class Libraries.help
help = {}

---Returns a colon-separated list of directories where help files are searched for. All directories are absolute.
---@return string path
function help.path() end

---Sets the colon-separated list of directories where help files are searched for to `newPath`.
---@param newPath string
function help.setPath(newPath) end

---Returns the location of the help file for the given topic.
---@param topic string
---@return string? topic
function help.lookup(topic) end

---Returns a list of topics that can be looked up and/or displayed.
---@return string[] topics
function help.topics() end

---Returns a list of topic endings that match the prefix. Can be used with `read` to allow input of a help topic.
---@param prefix string
---@return string[] topics
function help.completeTopic(prefix) end