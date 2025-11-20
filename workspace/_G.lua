---@meta

---Stores the current ComputerCraft and Minecraft versions.
---@type string
_HOST = nil

---The default computer settings as defined in the ComputerCraft configuration.
---
---This is a comma-separated list of settings pairs defined by the mod configuration or server owner. By default, it is empty.
---@type string
_CC_DEFAULT_SETTINGS = nil

---Pauses execution for the specified number of seconds.
---
---As it waits for a fixed amount of world ticks, time will
---automatically be rounded up to the nearest multiple of 0.05 seconds.
---
---If you are using coroutines or the `parallel API`, it will only pause execution
---of the current thread, not the whole program.
---@param time number The number of seconds to sleep for, rounded up to the nearest multiple of 0.05.
function sleep(time) end

---Writes a line of text to the screen without a newline at the end,
---wrapping text if necessary.
---@param text string The text to write to the string.
---@return integer lines The number of lines written.
function write(text) end

---Prints the specified values to the screen separated by spaces,
---wrapping if necessary. After printing, the cursor is moved to
---the next line.
---@param ... any The values to print on the screen.
---@return integer lines The number of lines written.
function print(...) end

---Prints the specified values to the screen in red, separated by
---spaces, wrapping if necessary. After printing, the cursor is
---moved to the next line.
---@param ... any The values to print on the screen.
function printError(...) end

---Reads user input from the terminal. This automatically handles
---arrow keys, pasting, character replacement, history scrollback,
---auto-completion, and default values.
---@param replaceChar? string
---@param history? string[]
---@param completeFn? fun(partial: string): string[]
---@param default? string
---@return string text
function read(replaceChar, history, completeFn, default) end
