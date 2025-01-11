---@meta

---@class Window: Redirect
local Window = {}


---Get the buffered contents of a line in this window.
---@param y integer
---@return string text
---@return string txBlit
---@return string bgBlit
function Window.getLine(y) end

---Set whether this window is visible. Invisible windows will not be drawn to the screen until they are made visible again.
---@param visible boolean
function Window.setVisible(visible) end

---Get whether this window is visible. Invisible windows will not be drawn to the screen until they are made visible again.
---@return boolean isVisible
function Window.isVisible() end

---Draw this window. **This does nothing if the window is not visible**.
function Window.redraw() end

---Set the current terminal's cursor to where this window's cursor is. This does nothing if the window is not visible.
function Window.restoreCursor() end

---Get the position of the top left corner of this window.
---@return number x
---@return number y
function Window.getPosition() end

---Reposition or resize the given window.
---@param x number
---@param y number
---@param width? number
---@param height? number
---@param parent? Redirect
function Window.reposition(x, y, width, height, parent) end