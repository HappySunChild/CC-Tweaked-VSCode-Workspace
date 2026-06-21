---@meta

---@class create.peripheral.StockTicker
local StockerTicker = {
	---Gets detailed information about an item in the network stock.
	---@param slot integer
	---@return cc.types.items.ItemStackDetails?
	getStockItemDetail = function(slot) end,

	---Lists all items in the stock. This returns a table, with an entry for each item.
	---@param detailed? boolean
	---@return cc.types.items.ItemStackDetails[]
	stock = function(detailed) end,

	---Requests for a package in the network with the given `address` attached.
	---@param address string
	---@param ... create.types.logistics.SurfaceFilter
	---@return integer requested Number of items requested with the given filter.
	requestFiltered = function(address, ...) end,

	---Get detailed information about an item in the payment inventory.
	---@param slot integer
	---@return cc.types.items.ItemStackDetails?
	getItemDetail = function(slot) end,

	---List all items in the payment inventory. This returns a table, with an entry for each slot.
	---@return cc.types.items.ItemStackDetails[]
	list = function() end,
}
