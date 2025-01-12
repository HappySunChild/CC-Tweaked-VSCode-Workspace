---@meta

colors = {
	white = 1,
	orange = 2,
	magenta = 4,
	lightBlue = 8,
	yellow = 16,
	lime = 32,
	pink = 64,
	gray = 128,
	lightGray = 256,
	cyan = 512,
	purple = 1024,
	blue = 2048,
	brown = 4096,
	green = 8192,
	red = 16384,
	black = 32768
}

---Combines a set of colors (or sets of colors) into a larger set. Useful for Bundled Cables.
---@vararg integer
---@return integer set
function colors.combine(...) end

---Removes one or more colors (or sets of colors) from an initial set. Useful for Bundled Cables.
---
---Each parameter beyond the first may be a single color or may be a set of colors (in the latter case, all colors in the set are removed from the original set).
---@param color integer
---@vararg integer
---@return integer set
function colors.subtract(color, ...) end

---Tests whether `color` is contained within `set`. Useful for Bundled Cables.
---@param set integer
---@param color integer
---@return boolean
function colors.test(set, color) end

---Combine a three-colour RGB value into one hexadecimal representation.
---@param r number
---@param g number
---@param b number
---@return integer hex
function colors.packRGB(r, g, b) end

---Separate a hexadecimal RGB colour into its three constituent channels.
---@param hex integer
---@return number r
---@return number g
---@return number b
function colors.unpackRGB(hex) end

---Converts the given color to a paint/blit hex character (0-9a-f).
---Values outside the range of a valid colors will error.
---@param color integer
---@return string blitHex
function colors.toBlit(color) end

---Converts the given paint/blit hex character (0-9a-f) to a color.
---@param blitHex string
---@return integer color
function colors.fromBlit(blitHex) end