---@meta

---Component for all objects capable of being individually removed.
---@class plethora.overlayglasses.components.Removable
local Removable = {
	---Removes this object from the canvas.
	remove = function() end,
}

---Component for objects capable of being recolored
---@class plethora.overlayglasses.components.Colorable
local Colorable = {
	---Sets the alpha for this object.
	---@param alpha integer
	setAlpha = function(alpha) end,

	---Returns the alpha for this object.
	---@return integer alpha
	getAlpha = function() end,

	---Sets the color for this object.
	---@param color integer
	---@return number
	---@overload fun(r: number, g: number, b: number)
	setColor = function(color) end,

	---Returns the color for this object.
	---@return integer color
	getColor = function() end,
}

---Component for objects capable of being scaled.
---@class plethora.overlayglasses.components.Scalable
local Scalable = {
	---Sets the scale of this object.
	---@param scale number
	setScale = function(scale) end,

	---Returns the scale of this object.
	---@return number scale
	getScale = function() end,
}

---Component for objects capable of rendering text.
---@class plethora.overlayglasses.components.TextRenderer
local TextRenderer = {
	---Returns the text for this object.
	---@return string text
	getText = function() end,

	---Sets the text for this object.
	---@param text string
	setText = function(text) end,

	---Sets the shadow for this object.
	---@param shadow boolean
	setShadow = function(shadow) end,

	---Returns whether the object has a shadow.
	---@return boolean hasShadow
	hasShadow = function() end,

	---Returns the line height for this object.
	---@return integer line_height
	getLineHeight = function() end,

	---Sets the line height for this object.
	---@param line_height integer
	setLineHeight = function(line_height) end,
}

---Component for objects capable of rendering items.
---@class plethora.overlayglasses.components.ItemRenderer
local ItemRenderer = {
	---Sets the item and damage value used for rendering this object.
	---@param item_id string
	---@param damage integer
	setItem = function(item_id, damage) end,

	---Returns the set item id for this object.
	---@return string item_id
	getItem = function() end,
}

---Component for objects capable of being resized in 2D.
---@class plethora.overlayglasses.components.Resizable2D
local Resizable2D = {
	---Sets the width and height of this object.
	---@param width number
	---@param height number
	setSize = function(width, height) end,

	---Returns the width and height of this object.
	---@return number width
	---@return number height
	getSize = function() end,
}

---Component for objects capable of being repositioned in 2D.
---@class plethora.overlayglasses.components.Positional2D
local Positional2D = {
	---Sets the position of this object.
	---@param x number
	---@param y number
	setPosition = function(x, y) end,

	---Returns the position for this object.
	---@return number x
	---@return number y
	getPosition = function() end,
}

---Component for objects composed of multiple points in 2D.
---@class plethora.overlayglasses.components.Multipoint2D
local Multipoint2D = {
	---Sets the position of the vertex at the specified index.
	---@param index integer
	---@param x number
	---@param y number
	setPoint = function(index, x, y) end,

	---Returns the position of the vertex at the specified index.
	---@param index integer
	---@return number x
	---@return number y
	getPoint = function(index) end,
}

---Component for objects composed of a dynamic amount of points in 2D.
---@class plethora.overlayglasses.components.DynamicMultipoint2D : plethora.overlayglasses.components.Multipoint2D
local DynamicMultipoint2D = {
	---Adds a vertex to this object.
	---@param index integer
	---@param x number
	---@param y number
	---@overload fun(x: number, y: number)
	insertPoint = function(index, x, y) end,

	---Removes the vertex at the specified index from this object.
	---@param index integer
	removePoint = function(index) end,

	---Returns the number of vertices in this object.
	---@return integer vertex_count
	getPointCount = function() end,
}

---Component for objects capable of enabling/disabling depth testing.
---@class plethora.overlayglasses.components.DepthTestable
local DepthTestable = {
	---Sets whether depth testing is enabled for this object.
	---@param enabled boolean
	setDepthTested = function(enabled) end,

	---Returns whether depth testing is enabled for this object.
	---@return boolean enabled
	isDepthTested = function() end,
}

---Component for objects capable of being resized in 3D.
---@class plethora.overlayglasses.components.Resizable3D
local Resizable3D = {
	---Sets the size of this object.
	---@param width number
	---@param height number
	---@param depth number
	setSize = function(width, height, depth) end,

	---Returns the size of this object.
	---@return number width
	---@return number height
	---@return number depth
	getSize = function() end,
}

---Component for objects capable of being repositioned in 3D.
---@class plethora.overlayglasses.components.Positional3D
local Positional3D = {
	---Sets the position for this object.
	---@param x number
	---@param y number
	---@param z number
	setPosition = function(x, y, z) end,

	---Returns the position for this object.
	---@return number x
	---@return number y
	---@return number z
	getPosition = function() end,
}

---Component for objects capable of being rotated in 3D.
---@class plethora.overlayglasses.components.Rotatable3D
local Rotatable3D = {
	---Sets the rotation for this object. If nil is passed in it will face towards the player instead.
	---@param x number?
	---@param y number?
	---@param z number?
	setRotation = function(x, y, z) end,

	---Returns the rotation for this object, or nil if it is facing towards the player.
	---@return number? x
	---@return number? y
	---@return number? z
	getRotation = function() end,
}

---Component for objects composed of multiple points in 3D.
---@class plethora.overlayglasses.components.Multipoint3D
local Multipoint3D = {
	---Sets the position of the vertex at the specified index.
	---@param index integer
	---@param x number
	---@param y number
	---@param z number
	setPoint = function(index, x, y, z) end,

	---Returns the position of the vertex at the specified index.
	---@param index integer
	---@return number x
	---@return number y
	---@return number z
	getPoint = function(index) end,
}
