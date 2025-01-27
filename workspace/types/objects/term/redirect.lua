---@meta

---@class term.Redirect
local Redirect = {}


---Write text at the current cursor position, moving the cursor to the end of the text.
---
---Unlike functions like write and print, this does not wrap the text - it simply copies the text to the current terminal line.
---@param text string The text to write.
function Redirect.write(text) end


---Move all positions up (or down) by y pixels.
---
---Every pixel in the terminal will be replaced by the line y pixels below it. If y is negative, it will copy pixels from above instead.
---@param y number The number of lines to move up by. This may be a negative number.
function Redirect.scroll(y) end


---Get the position of the cursor.
---@return number x The x position of the cursor.
---@return number y The y position of the cursor.
function Redirect.getCursorPos() end


---Set the position of the cursor. terminal writes will begin from this position.
---@param x number The new x position of the cursor.
---@param y number The new y position of the cursor.
function Redirect.setCursorPos(x, y) end


---Checks if the cursor is currently blinking.
---@return boolean blinking If the cursor is blinking.
function Redirect.getCursorBlink() end


---Sets whether the cursor should be visible (and blinking) at the current cursor position.
---@param blink boolean Whether the cursor should blink.
function Redirect.setCursorBlink(blink) end


---Get the size of the terminal.
---@return number width The terminal's width.
---@return number height The terminal's height.
function Redirect.getSize() end


---Clears the terminal, filling it with the current background color.
function Redirect.clear() end


---Clears the line the cursor is currently on, filling it with the current background color.
function Redirect.clearLine() end


---Return the color that new text will be written as.
---@return colors.color color The current text color.
function Redirect.getTextColor() end


---Set the color that new text will be written as.
---@param color colors.color
function Redirect.setTextColor(color) end


---Return the current background color. This is used when writing text and clearing the terminal.
---@return colors.color color The current background color.
function Redirect.getBackgroundColor() end


---Set the current background color. This is used when writing text and clearing the terminal.
---@param color colors.color The new background color.
function Redirect.setBackgroundColor(color) end


---Determine if this terminal supports color.
---
---Terminals which do not support color will still allow writing colored text/backgrounds, but it will be displayed in greyscale.
---@return boolean isColor Whether this terminal supports color.
function Redirect.isColor() end


---Writes text to the terminal with the specific foreground and background colors.
---
---`textColor` and `backgroundColor` must both be strings the same length as `text`.
---All characters represent a single hexadecimal digit, which is converted to one of CC's colors.
---For instance, `"a"` corresponds to purple.
---@param text string The text to write.
---@param textColor string The corresponding text colors.
---@param backgroundColor string The corresponding background colors.
function Redirect.blit(text, textColor, backgroundColor) end


---Set the palette for a specific color.
---
---ComputerCraft's palette system allows you to change how a specific color should be displayed.
---For instance, you can make `colors.red` more red by setting its palette to `#FF0000`.
---This does now allow you to draw more colors - you are still limited to 16 on the screen at one time - but you can change which colors are used.
---@param index colors.color  The color whose palette should be changed.
---@param color number A 24-bit integer representing the RGB value of the color. For instance the integer 0xFF0000 corresponds to the color #FF0000.
function Redirect.setPaletteColor(index, color) end


---Set the palette for a specific color.
---
---ComputerCraft's palette system allows you to change how a specific color should be displayed.
---For instance, you can make `colors.red` more red by setting its palette to `#FF0000`.
---This does now allow you to draw more colors - you are still limited to 16 on the screen at one time - but you can change which colors are used.
---@param index colors.color  The color whose palette should be changed.
---@param r number The intensity of the red channel, between 0 and 1.
---@param g number The intensity of the green channel, between 0 and 1.
---@param b number The intensity of the blue channel, between 0 and 1.
function Redirect.setPaletteColor(index, r, g, b) end


---Get the current palette for a specific color.
---@param index colors.color The color whose palette should be fetched.
---@return number r The red channel, will be between 0 and 1.
---@return number b The green channel, will be between 0 and 1.
---@return number g The blue channel, will be between 0 and 1.
function Redirect.getPaletteColor(index) end