---@meta

---A base class for all objects which interact with a terminal. Namely the term and monitors.
---@class Redirect
local redirect = {}

---Write `text` at the current cursor position, moving the cursor to the end of the text.
---@param text string
function redirect.write(text) end

---Move all positions up (or down) by y pixels.
---@param y number
function redirect.scroll(y) end

---Get the position of the cursor.
---@return number x
---@return number y
function redirect.getCursorPos() end

---Set the position of the cursor. terminal writes will begin from this position.
---@param x number
---@param y number
function redirect.setCursorPos(x, y) end

---Checks if the cursor is currently blinking.
---@return boolean blink
function redirect.getCursorBlink() end

---Sets whether the cursor should be visible (and blinking) at the current cursor position.
---@param blink boolean
function redirect.setCursorBlink(blink) end

---Get the size of the terminal.
---@return number width
---@return number height
function redirect.getSize() end

---Clears the terminal, filling it with the **current background colour**.
function redirect.clear() end

---Clears the line the cursor is currently on, filling it with the **current background colour**.
function redirect.clearLine() end

---Return the color that new text will be written as.
---@return integer color
function redirect.getTextColor() end

---Set the color that new text will be written as.
---@param color integer
function redirect.setTextColor(color) end

---Return the current background color. This is used when **writing text** and **clearing** the terminal.
---@return integer color
function redirect.getBackgroundColor() end

---Set the current background colour. This is used when **writing text** and **clearing** the terminal.
---@param color integer
function redirect.setBackgroundColor(color) end

---Determine if this terminal supports color.
---@return boolean isColor
function redirect.isColor() end

---Writes text to the terminal with the specific foreground and background colours.
---@param text string
---@param textColor string
---@param backgroundColor string
function redirect.blit(text, textColor, backgroundColor) end

---Set the palette for a specific colour.
---@param index integer
---@param color integer
function redirect.setPaletteColor(index, color) end

---Set the palette for a specific colour.
---@param index integer
---@param r number
---@param g number
---@param b number
function redirect.setPaletteColor(index, r, g, b) end

---Get the current palette for a specific colour.
---@param index integer
---@return number r
---@return number g
---@return number b
function redirect.getPaletteColor(index) end