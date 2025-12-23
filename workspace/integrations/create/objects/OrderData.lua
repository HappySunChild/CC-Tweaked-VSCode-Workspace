---@meta

---Whenever you request a package in any way, other than
---by applying redstone signal to a packager, it will have `Order Data` attached.
---
---The Order Data features a couple values:
--- - Crafts – a list of crafting recipes the package will craft into on a 3x3 grid. This list can be empty (for example, from a redstone requester).
--- - Index - indicates the `n``th package that came from the same packager.
---    - If you request 10 stacks of diamonds from one barrel. the first package would have 9 stacks and `index = 1`, while the second would have 1 stack and `index = 2`
--- - Link Index - indicates the `n`'th packager that fulfills the order.
---    - If you request two stacks of diamonds, and you have a stack in each chest, the first packager's package's linkIndex would equal 1 and the second packager's package's linkIndex would equal 2.
--- - OrderID - the unique ID of the order, shared between all packages split accross indexes/link indexes.
--- - Item List - the list of items that make the full order.
---
---Packages can't tell how many more packages are ahead of them in Indexes/Link Indexes,
---but they know how many are before them, and can check if they're the final one (using `isFinal` or `isFinalLink`).
---
---This is the data repackagers use to reassemble packages, and can help you make
---your own package sorting system. The data provided is not mutable and never changes.
---
---@class create.OrderData
local OrderData = {
	---Gets the crafting recipes associated with the order.
	---@return create.logistics.craft[]
	getCrafts = function() end,

	---Gets the index of the package.
	---@return integer
	getIndex = function() end,

	---Gets the Link Index of the package.
	---@return integer
	getLinkIndex = function() end,

	---Gets the Order ID of the package.
	---@return integer
	getOrderID = function() end,

	---Indicates if this is the final package from the same packager.
	---@return boolean
	isFinal = function() end,

	---Indicates if this package is part of the last link in the order.
	---@return boolean
	isFinalLink = function() end,

	---Gets detailed information for a specific item stack in the order.
	---@param slot integer
	---@return peripheral.InventoryItem?
	getItemDetail = function(slot) end,

	---Lists basic information about all items in the complete order, even if they are not in the package.
	---@return peripheral.InventoryItem[]?
	list = function() end,
}
