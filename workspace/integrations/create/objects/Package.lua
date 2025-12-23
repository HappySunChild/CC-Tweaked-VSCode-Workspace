---@meta

---Package Objects are snapshots of the package in the moment.
---
---You can get your packageObject by either using `.getItemDetail()` on a package
---(it'll expose a package field, which is this object), or by using a packager/re-packager's `getPackage()`.
---
---If by any means the package has its data changed, be
---it by an addon or by another computer using the `setAddress()`
---function, the snapshot will not be notified, and it'll be outdated.
---
---When a package is held within a packager/re-packager,
---if you call it using `getPackage()` or pull it with `package_created`,
---it's `isEditable` function should return true until it leaves the (re)packager.
---You can change it's address with `setAddress()` while it remains there.
---
---@class create.Package
local Package = {
	---Gets the package's address.
	---@return string
	getAddress = function() end,

	---Sets the package's address to the given value if it `isEditable()`.
	---@param address string
	setAddress = function(address) end,

	---Gets the `OrderData` object of the package if it's an encoded package.
	---@return create.OrderData
	getOrderData = function() end,

	---Returns whether the package is sitting inside the packager/repackager you received this `Package` from.
	---@return boolean
	isEditable = function() end,

	---Gets detailed information about an item in the package.
	---@param slot integer
	---@return peripheral.InventoryItem?
	getItemDetail = function(slot) end,

	---List all items inside the package. This returns a table, with an entry for each slot.
	---@return peripheral.InventoryItem[]
	list = function() end,
}
