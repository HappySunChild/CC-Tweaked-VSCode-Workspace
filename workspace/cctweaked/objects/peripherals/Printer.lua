---@meta

---The printer peripheral allows printing text onto pages. These pages can then be crafted together into printed pages or books.
---@class peripheral.Printer
local Printer = {}

---Writes text to the current page.
---@param text string The value to write to the page.
function Printer.write(text) end

---Returns the current position of the cursor on the page.
---@return number x The X position of the cursor.
---@return number y The Y position of the cursor.
function Printer.getCursorPos() end

---Sets the position of the cursor on the page.
---@param x number The X coordinate to set the cursor at.
---@param y number The Y coordinate to set the cursor at.
function Printer.setCursorPos(x, y) end

---Returns the size of the current page.
---@return number width The width of the page.
---@return number height The height of the page.
function Printer.getPageSize() end

---Starts printing a new page.
---@return boolean success Whether a new page could be started.
function Printer.newPage() end

---Finalizes printing of the current page and outputs it to the tray.
---@return boolean success Whether the page could be successfully finished.
function Printer.endPage() end

---Sets the title of the current page.
---@param title? string
function Printer.setPageTitle(title) end

---Returns the amount of ink left in the printer.
---@return number ink The amount of ink available to print with.
function Printer.getInkLevel() end

---Returns the amount of paper left in the printer.
---@return number paper The amount of paper available to print with.
function Printer.getPaperLevel() end
