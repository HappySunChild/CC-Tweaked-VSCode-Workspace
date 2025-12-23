---@meta

---@class create.peripheral.TableCloth
local TableCloth = {
	---Gets the Table Cloth's address.
	---@return string address
	getAddress = function() end,

	---Sets the Table Cloth's address to the given variable.
	---
	---If the address arg is nil, it'll unset the address.
	---@param address? string
	setAddress = function(address) end,

	---Gets the Table Cloth's Pricetag item count.
	---@return integer count
	getPriceTagCount = function() end,
	---Sets the Table Cloth's Pricetag item count.
	---@param count? integer Defaults to 1
	setPriceTagCount = function(count) end,

	---Gets the Item used for the Table Cloth's price tag.
	---@return peripheral.InventoryItem
	getPriceTagItem = function() end,
	---Sets the Item used for the Table Cloth's price tag.
	---@param item? string
	setPriceTagItem = function(item) end,

	---Gets the list of items requested on purchase.
	---@return peripheral.InventoryItem[]
	getWares = function() end,
	---Sets the Table Cloth's wares that get requested on purchase.
	---@param ... peripheral.InventoryItem
	setWares = function(...) end,

	---Returns whether the Table Cloth is a shop or not.
	---@return boolean
	isShop = function() end,
}
