---@meta

---A terminal redirect occupying a smaller area of an existing terminal.
---This allows for easy definition of spaces within the display that can be
---written/drawn to, then later redrawn/repositioned/etc as need be.
---
---The API itself contains only one function, `window.create`, which returns the windows themselves.
---
---<h2 align="center"><a href="https://tweaked.cc/modules/window.html">Official Documentation</a></h2>
---@class window
window = {}


---Returns a terminal object that is a space within the specified parent terminal object.
---This can then be used (or even redirected to) in the same manner as eg a wrapped monitor.
---Refer to the `term` API for a list of functions available to it.
---
---`term` itself may not be passed as the parent, though `term.native` is acceptable.
---Generally, `term.current` or a wrapped monitor will be most suitable, though
---windows may even have other windows assigned as their parents.
---@param parent term.Redirect The parent terminal redirect to draw to.
---@param nx number The x coordinate this window is drawn at in the parent terminal.
---@param ny number The y coordinate this window is drawn at in the parent terminal.
---@param nWidth number The width of this window.
---@param nHeight number The height of this window.
---@param bStartVisible? boolean Whether this window is visible by default. Defaults to `true`.
---@return window.Window window The constructed window.
function window.create(parent, nx, ny, nWidth, nHeight, bStartVisible) end