---@meta

---@class Canvas.Textual
local textual = {}

---Get the text for this object.
---@return string text
function textual.getText() end

---Set the text for this object.
---@param text string
function textual.setText(text) end

---Set the shadow for this object.
---@param shadow boolean
function textual.setShadow(shadow) end

---Get if the object has a shadow.
---@return boolean hasShadow
function textual.hasShadow() end

---Get the line height for this object.
---@return integer lineHeight
function textual.getLineHeight() end

---Set the line height for this object.
---@param lineHeight integer
function textual.setLineHeight(lineHeight) end