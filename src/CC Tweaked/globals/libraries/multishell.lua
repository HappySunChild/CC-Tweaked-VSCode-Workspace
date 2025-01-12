---@meta

---@class Libraries.multishell
multishell = {}

---Get the currently visible process. This will be the one selected on the tab bar.
---@return integer index
function multishell.getFocus() end

---Change the currently visible process.
---@param index integer
---@return boolean success
function multishell.setFocus(index) end

---Get the title of the given tab.
---@param index integer
---@return string? title
function multishell.getTitle(index) end

---Set the title of the given process.
---@param index integer
---@param title string
function multishell.setTitle(index, title) end

---Get the index of the currently running process.
---@return integer index
function multishell.getCurrent() end

---comment
---@param env table
---@param path string
---@vararg any
---@return integer index
function multishell.launch(env, path, ...) end

---Get the number of processes within this multishell.
---@return integer count
function multishell.getCount() end