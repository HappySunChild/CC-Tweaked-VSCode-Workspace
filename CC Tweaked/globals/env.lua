---@meta

---Reads user input from the terminal. This automatically handles arrow keys, pasting, character replacement, history scrollback, auto-completion, and default values.
---@param replaceChar? string
---@param history? table
---@param completeFn? fun(partial: string): string[]?
---@param default? string
---@return string text
function read(replaceChar, history, completeFn, default) end

---Prints the specified values to the screen in red, separated by spaces, wrapping if necessary. After printing, the cursor is moved to the next line.
---@vararg any
function printError(...) end

---Prints the specified values to the screen separated by spaces, wrapping if necessary. After printing, the cursor is moved to the next line.
---@vararg any
---@return number lines
function print(...) end

---Writes a line of text to the screen without a newline at the end, wrapping text if necessary.
---@param text string
---@return number lines
function write(text) end

---Pauses execution for the specified number of seconds.
---@param time? number
function sleep(time) end