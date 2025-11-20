---@meta

---Interact with a computer's terminal or monitors, writing text and drawing ASCII graphics.
---
---<h2 align="center"><a href="https://tweaked.cc/modules/term.html">Official Documentation</a></h2>
---@class term : term.Redirect
term = {}

---Get the native terminal object of the current computer.
---
---It is recommended you do not use this function unless you absolutely have to.
---In a multitasked environment, term.native will not be the current terminal object,
---and so drawing may interfere with other programs.
---@return term.Redirect native The native terminal redirect.
function term.native() end

---Returns the current terminal object of the computer.
---@return term.Redirect current The current terminal redirect.
function term.current() end

---Redirects terminal output to a monitor, a `window`, or any other custom terminal object.
---Once the redirect is performed, any calls to a "term" function - or to a function that
---makes use of a term function, such as `print` - will instead operate with the new terminal object.
---
---A "terminal object" is simply a table that contains functions with the same names - and general
---features - as those found in the term table. For example, a wrapped monitor is suitable.
---
---The redirect can be undone by pointing back to the previous terminal object (which this function returns whenever you switch).
---@param target term.Redirect The terminal redirect the term API will draw to.
---@return term.Redirect previous The previous redirect object, as returned by `term.current`.
function term.redirect(target) end

---Get the default palette value for a color.
---@param color integer The color whose palette should be fetched.
---@return number r The red channel, will be between 0 and 1.
---@return number g The green channel, will be between 0 and 1.
---@return number b The blue channel, will be between 0 and 1.
function term.nativePaletteColor(color) end
