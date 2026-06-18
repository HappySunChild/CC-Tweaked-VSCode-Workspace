---@meta

---@class create.peripheral.StockTicker
local StockerTicker = {
	---Gets detailed information about an item in the network stock.
	---@param slot integer
	---@return cc.peripheral.InventoryItem?
	getStockItemDetail = function(slot) end,

	---Lists all items in the stock. This returns a table, with an entry for each item.
	---@param detailed? boolean
	---@return cc.peripheral.InventoryItem[]
	stock = function(detailed) end,

	---Requests for a package in the network with the given `address` attached.
	---@param address string
	---@param ... create.logistics.SurfaceFilter
	---@return integer requested Number of items requested with the given filter.
	requestFiltered = function(address, ...) end,

	---Get detailed information about an item in the payment inventory.
	---@param slot integer
	---@return cc.peripheral.InventoryItem?
	getItemDetail = function(slot) end,

	---List all items in the payment inventory. This returns a table, with an entry for each slot.
	---@return cc.peripheral.InventoryItem[]
	list = function() end,
}
