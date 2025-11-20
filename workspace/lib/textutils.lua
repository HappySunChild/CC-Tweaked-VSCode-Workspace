---@meta

---Helpful utilities for formatting and manipulating strings.
---
---<h2 align="center"><a href="https://tweaked.cc/modules/textutils.html">Official Documentation</a></h2>
---@class textutils
textutils = {}

---A table representing an empty JSON array, in order to distinguish it from an empty JSON object.
---@type textutils.EmptyJsonArray
textutils.empty_json_array = nil

---A table representing the JSON null value.
---@type textutils.JsonNull
textutils.json_null = nil

---Slowly writes string text at current cursor position, character-by-character.
---@param text string The text to write to the screen.
---@param rate? number The number of characters to write each second, defaults to 20.
function textutils.slowWrite(text, rate) end

---Slowly prints string text at current cursor position, character-by-character.
---@param text string The text to write to the screen.
---@param rate? number The number of characters to write each second, defaults to 20.
function textutils.slowPrint(text, rate) end

---Prints a given string to the display.
---
---If the action can be completed without scrolling, it acts much the same as print;
---otherwise, it will throw up a "Press any key to continue" prompt at the bottom of
---the display. Each press will cause it to scroll down and write a single line more
---before prompting again, if need be.
---@param text string The text to print to the screen.
---@param free_lines? number The number of lines which will be automatically scrolled before the first prompt appears (meaning free_lines + 1 lines will be printed). This can be set to the cursor's y position - 2 to always try to fill the screen. Defaults to 0, meaning only one line is displayed before prompting.
function textutils.pagedPrint(text, free_lines) end

---Prints tables in a structured form.
---
---This accepts multiple arguments, either a table or a number. When encountering a table,
---this will be treated as a table row, with each column width being auto-adjusted.
---
---When encountering a number, this sets the text color of the subsequent rows to it.
---@param ... string[]|integer
function textutils.tabulate(...) end

---Prints tables in a structured form, stopping and prompting for input should the result not fit on the terminal.
---
---This functions identically to `textutils.tabulate`, but will prompt for user input should the whole output not fit on the display.
---@param ... string[]|integer
function textutils.pagedTabulate(...) end

---Convert a Lua object into a textual representation, suitable for saving in a file or pretty-printing.
---@param obj any The object to serialize.
---@param options? textutils.SerializeOptions Options for serialization.
---@return string serialized The serialized representation.
function textutils.serialize(obj, options) end

---Converts a serialized string back into a reassembled Lua object.
---@param serialized string  The serialized string to deserialize.
---@return any? deserialized The deserialised object, or nil if the object could not be deserialized.
function textutils.unserialize(serialized) end

---Returns a JSON representation of the given data.
---
---This is largely intended for interacting with various functions from the `commands` API,
---though may also be used in making `http` requests.
---@param obj any The value to serialize.
---@param options? boolean|textutils.JsonSerializeOptions Options for serialization, or `true` for NBT-style JSON (non-quoted keys) instead of standard JSON.
---@return string serialized The serialized object.
function textutils.serializeJSON(obj, options) end

---Converts a serialised JSON string back into a reassembled Lua object.
---@param serialized string The serialised string to deserialise.
---@param options? textutils.JsonUnserializeOptions Options which control how this JSON object is parsed.
---@return any? deserialized The deserialised object, or `nil` if the object could not be deserialized.
---@return string reason A message describing why the JSON string is invalid.
function textutils.unserializeJSON(serialized, options) end

---Replaces certain characters in a string to make it safe for use in URLs or POST data.
---@param str string The string to encode
---@return string encoded The encoded string.
function textutils.urlEncode(str) end

---Takes input time and formats it in a more readable format such as `6:30 PM`.
---@param time number The time to format, as provided by `os.time`.
---@param twentyFourHour? boolean Whether to format this as a 24-hour clock (`18:30`) rather than a 12-hour one (`6:30 AM`).
---@return string formatted The formatted time.
function textutils.formatTime(time, twentyFourHour) end

---Provides a list of possible completions for a partial Lua expression.
---
---If the completed element is a table, suggestions will have `.` appended to them.
---Similarly, functions have `(` appended to them.
---@param searchText string The partial expression to complete, such as a variable name or table index.
---@param searchTable table The table to find variables in, defaulting to the global environment (`_G`). The function also searches the "parent" environment via the `__index` metatable field.
---@return string[] completions The (possibly empty) list of completions
function textutils.complete(searchText, searchTable) end
