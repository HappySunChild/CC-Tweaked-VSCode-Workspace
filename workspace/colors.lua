---@meta

---Constants and functions for color values. Useful in conjunction 
---with Bundled Cables from mods like Project Red, and colors on
---Advanced Computers and Advanced Monitors.
---
---For the non-American English version just replace colors with colors.
---This alternative API is exactly the same, except the colors use
---British English (e.g. colors.gray is spelt colors.grey).
---
---On basic terminals, all the colors are converted to grayscale. This
---means you can still use all 16 colors on the screen, but they will
---appear as the nearest tint of gray. You can check if a terminal
---supports color by using the function `term.isColor`.
---
---Grayscale colors are calculated by taking the average of the three components, i.e. `(red + green + blue) / 3`.
---
---<h2 align="center"><a href="https://tweaked.cc/module/colors.html">Official Documentation</a></h2>
---@class colors
colors = {
	white 		= 1,		---@type colors.color
	orange 		= 2,		---@type colors.color
	magenta 	= 4,		---@type colors.color
	lightBlue 	= 8,		---@type colors.color
	yellow 		= 16,		---@type colors.color
	lime 		= 32,		---@type colors.color
	pink 		= 64,		---@type colors.color
	gray 		= 128,		---@type colors.color
	lightGray 	= 256,		---@type colors.color
	cyan 		= 512,		---@type colors.color
	purple 		= 1024,		---@type colors.color
	blue 		= 2048,		---@type colors.color
	brown 		= 4096,		---@type colors.color
	green 		= 8192,		---@type colors.color
	red 		= 16384,	---@type colors.color
	black 		= 32768		---@type colors.color
}

---Combines a set of colors (or sets of colors) into a larger set. Useful for Bundled Cables.
---@param ... colors.color The colors to combine.
---@return colors.colorSet set The union of the color sets given in `...`
function colors.combine(...) end


---Removes one or more colors (or sets of colors) from an initial set. Useful for Bundled Cables.
---Each parameter beyond the first may be a single color or may be a set of colors (in the latter case, all colors in the set are removed from the original set).
---@param set colors.colorSet The color from which to subtract.
---@param ... colors.color The colors to subtract.
---@return colors.colorSet set The resulting color.
function colors.subtract(set, ...) end


---Tests whether color is contained within colors. Useful for Bundled Cables.
---@param set colors.colorSet
---@param color colors.color
---@return boolean
function colors.test(set, color) end


---Combine a three-color RGB value into one hexadecimal representation.
---@param r number The red channel, should be between 0 and 1.
---@param g number The green channel, should be between 0 and 1.
---@param b number The blue channel, should be between 0 and 1.
---@return number hex The combined hexadecimal color.
function colors.packRGB(r, g, b) end


---Separate a hexadecimal RGB color into its three constituent channels.
---@param hex number The combined hexadecimal color.
---@return number r The red channel, will be between 0 and 1.
---@return number g The green channel, will be between 0 and 1.
---@return number b The blue channel, will be between 0 and 1.
function colors.unpackRGB(hex) end


---Converts the given color to a paint/blit hex character (0-9a-f).
---This is equivalent to converting `floor(log_2(color))` to hexadecimal.
---Values outside the range of a valid color will error.
---@param color colors.color The color to convert.
---@return string blit The blit hex code of the color.
function colors.toBlit(color) end


---Converts the given paint/blit hex character (0-9a-f) to a color.
---This is equivalent to converting the hex character to a number and then `2 ^ decimal`
---@param blit string  The paint/blit hex character to convert
---@return number color The color
function colors.fromBlit(blit) end