---@meta

---@class Libraries.term : Redirect
term = {}

---Get the default palette value for a colour.
---@param color integer
---@return number r
---@return number g
---@return number b
function term.nativePaletteColor(color) end

---Redirects terminal output to a monitor, a window, or any other custom terminal object. Once the redirect is performed, any calls to a "term" function - or to a function that makes use of a term function, as print - will instead operate with the new terminal object.
---@param target Redirect
---@return Redirect previous
function term.redirect(target) end

---Returns the current terminal object of the computer.
---@return Redirect current
function term.current() end

---Get the native terminal object of the current computer.
---@return Redirect native
function term.native() end