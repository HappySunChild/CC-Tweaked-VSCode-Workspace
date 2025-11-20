---@meta

---@class window.Window : term.Redirect
local Window = {}

---Get the buffered contents of a line in this window.
---@param y number The y position of the line to get.
---@return string text The textual content of this line.
---@return string textColor The text colours of this line, suitable for use with `term.blit`.
---@return string backgroundColor The background colours of this line, suitable for use with `term.blit`.
function Window.getLine(y) end

---Set whether this window is visible. Invisible windows will not be drawn to the screen until they are made visible again.
---
---Making an invisible window visible will immediately draw it.
---@param visible boolean Whether this window is visible.
function Window.setVisible(visible) end

---Get whether this window is visible. Invisible windows will not be drawn to the screen until they are made visible again.
---@return boolean visible Whether this window is visible.
function Window.isVisible() end

---Draw this window. This does nothing if the window is not visible.
function Window.redraw() end

---Set the current terminal's cursor to where this window's cursor is. This does nothing if the window is not visible.
function Window.restoreCursor() end

---Get the position of the top left corner of this window.
---@return number x
---@return number y
function Window.getPosition() end

---Reposition or resize the given window.
---
---This function also accepts arguments to change the size of this window.
---It is recommended that you fire a `term_resize` event after changing a window's, to allow programs to adjust their sizing.
---@param nx number The new x position of this window.
---@param ny number The new y position of this window.
---@param nWidth? number The new width of this window.
---@param nHeight? number The new height of this window.
---@param nParent? term.Redirect The new redirect object this window should draw to.
function Window.reposition(nx, ny, nWidth, nHeight, nParent) end
