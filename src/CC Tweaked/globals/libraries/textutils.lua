---@meta

textutils = {
	empty_json_array = {
		__tostring = function()
			return "[]"
		end,
	},
	json_null = {
		__tostring = function()
			return "null"
		end,
	}
}

---Slowly writes string text at current cursor position, character-by-character.
---@param text string
---@param rate number
function textutils.slowWrite(text, rate)end

---Slowly prints string text at current cursor position, character-by-character.
---@param text string
---@param rate number
function textutils.slowPrint(text, rate) end

---Takes input time and formats it in a more readable format such as `6:30 PM`.
---@param time number
---@param twentyFourHour? boolean
---@return string formattedTime
function textutils.formatTime(time, twentyFourHour) end

---Prints a given string to the display.
---@param text string
---@param freelines? number
---@return number numLines
function textutils.pagedPrint(text, freelines) end

---Prints tables in a structured form.
---@vararg string[]|integer
function textutils.tabulate(...) end

---Prints tables in a structured form, stopping and prompting for input should the result not fit on the terminal.
---@vararg string[]|number
function textutils.pagedTabulate(...) end

---Convert a Lua object into a textual representation, suitable for saving in a file or pretty-printing.
---@param object any
---@param options? textutils.SerializationOptions
---@return string serializedText
function textutils.serialize(object, options) end

---Converts a serialized string back into a reassembled Lua object.
---@param serializedText string
---@return any? deserializedObject
function textutils.unserialize(serializedText) end

---Returns a JSON representation of the given data.
---@param object any
---@param options? textutils.JSONSerializationOptions
---@return string serializedText
function textutils.serializeJSON(object, options) end

---Converts a serialized JSON string back into a reassembled Lua object.
---@param serializedText string
---@param options textutils.JSONSerializationOptions
---@return any deserializedObject
function textutils.unserializeJSON(serializedText, options) end

---Replaces certain characters in a string to make it safe for use in URLs or POST data.
---@param str string
---@return string encoded
function textutils.urlEncode(str) end

---Provides a list of possible completions for a partial Lua expression.
---@param text string
---@param list? table
---@return string[] completions
function textutils.complete(text, list) end