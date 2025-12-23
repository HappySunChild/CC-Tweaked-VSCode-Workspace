---@meta

---@alias create.peripheral.NixieTube.Color
---| '"red"'
---| '"orange"'
---| '"yellow"'
---| '"lime"'
---| '"green"'
---| '"cyan"'
---| '"light blue"'
---| '"blue"'
---| '"purple"'
---| '"magenta"'
---| '"pink"'
---| '"white"'
---| '"light gray"'
---| '"gray"'
---| '"black"'
---| string

---All the fields are optional, but also have no default values,
---so if you first set `{r=255}` and then `{b=255}`, the color will be purple.
---
---You'd have to set `{r=0, b=255}` to reset the red value.
---@class create.peripheral.NixieTube.Signal
---@field r? integer Red color value between 0 and 255
---@field g? integer Green color value between 0 and 255
---@field b? integer Blue color value between 0 and 255
---@field glowWidth? number Width of the glow shape between 1 and 4
---@field glowHeight? number Height of the glow shape between 1 and 4
---@field blinkPeriod? integer Time between blinks in ticks
---@field blinkOffTime? integer Downtime between blinks in ticks

---@class create.peripheral.NixieTube
local NixieTube = {
	---Sets the text on the nixie tubes.
	---@param text string
	---@param color? create.peripheral.NixieTube.Color Name of the color (dye) to display the text.
	setText = function(text, color) end,

	---Sets the nixie tube's color.
	---@param color create.peripheral.NixieTube.Color Name of the color (dye) to display the text.
	setTextColor = function(color) end,

	---Sets the nixie tube's color.
	---@param colour create.peripheral.NixieTube.Color Name of the colour (dye) to display the text.
	setTextColour = function(colour) end,

	---Sets a custom signal for the nixie tubes.
	---
	---This one is unique, as it only lets you control up to two nixie tubes at once, while the other functions let you control entire arrays.
	---@param first create.peripheral.NixieTube.Signal
	---@param second create.peripheral.NixieTube.Signal
	setSignal = function(first, second) end,
}
