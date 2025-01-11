---@meta

---The printer peripheral allows printing text onto pages. These pages can then be crafted together into printed pages or books.
---@class Peripheral.Printer
local printer = {}

---Writes text to the current page.
---@param text string
function printer.write(text) end

---Returns the current position of the cursor on the page.
---@return number x
---@return number y
function printer.getCursorPos() end

---Sets the position of the cursor on the page.
---@param x number
---@param y number
function printer.setCursorPos(x, y) end

---Returns the size of the current page.
---@return number width
---@return number height
function printer.getPageSize() end

---Starts printing a new page.
---@return boolean success
function printer.newPage() end

---Finalizes printing of the current page and outputs it to the tray.
---@return boolean success
function printer.endPage() end

---Sets the title of the current page.
---@param title? string
function printer.setPageTitle(title) end

---Returns the amount of ink left in the printer.
---@return number inkLevel
function printer.getInkLevel() end

---Returns the amount of paper left in the printer.
---@return number paperLevel
function printer.getPaperLevel() end