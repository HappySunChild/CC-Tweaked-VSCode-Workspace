---@meta

---@alias turtle.Side
---| '"left"'
---| '"right"'

---@class turtle.BlockInfo
---@field name string
---@field state table<string, any>
---@field tags table<string, true>

---Turtles are a robotic device, which can break and place blocks,
---attack mobs, and move about the world. They have an internal
---inventory of 16 slots, allowing them to store blocks they have
---broken or would like to place.
---
---<h2 align="center"><a href="https://tweaked.cc/modules/turtle.html">Official Documentation</a></h2>
---@class turtlelib
local turtle = {
	---The builtin turtle API, without any generated helper functions.
	---
	---Historically this table behaved differently to the main turtle API,
	---but this is no longer the case. You should not need to use it.
	---@deprecated
	---@type turtlelib
	native = turtle,

	---Craft a recipe based on the turtle's inventory.
	---The turtle's inventory should set up like a crafting grid.
	---For instance, to craft sticks, slots 1 and 5 should contain planks.
	---All other slots should be empty, including those outside the crafting "grid".
	---@param limit? number The maximum number of crafting steps to run, defaults to 64.
	---@return boolean success Whether the turtle could successfully craft.
	---@return string? reason The reason the turtle could not craft.
	craft = function(limit) end,

	---Move the turtle forward one block.
	---@return boolean success Whether the turtle could successfully move.
	---@return string? reason The reason the turtle could not move.
	forward = function() end,

	---Move the turtle backward one block.
	---@return boolean success Whether the turtle could successfully move.
	---@return string? reason The reason the turtle could not move.
	back = function() end,

	---Move the turtle up one block.
	---@return boolean success Whether the turtle could successfully move.
	---@return string? reason The reason the turtle could not move.
	up = function() end,

	---Move the turtle down one block.
	---@return boolean success Whether the turtle could successfully move.
	---@return string? reason The reason the turtle could not move.
	down = function() end,

	---Rotate the turtle 90 degrees to the left.
	---@return boolean success Whether the turtle could successfully turn.
	---@return string? reason The reason the turtle could not turn.
	turnLeft = function() end,

	---Rotate the turtle 90 degrees to the right.
	---@return boolean success Whether the turtle could successfully turn.
	---@return string? reason The reason the turtle could not turn.
	turnRight = function() end,

	---Attempt to break the block in front of the turtle.
	---@param side? turtle.Side The specific tool to use. Should be "left" or "right".
	---@return boolean success Whether a block was broken.
	---@return string? reason The reason no block was broken.
	dig = function(side) end,

	---Attempt to break the block above the turtle.
	---@param side? turtle.Side The specific tool to use. Should be "left" or "right".
	---@return boolean success Whether a block was broken.
	---@return string? reason The reason no block was broken.
	digUp = function(side) end,

	---Attempt to break the block below the turtle.
	---@param side? turtle.Side The specific tool to use. Should be "left" or "right".
	---@return boolean success Whether a block was broken.
	---@return string? reason The reason no block was broken.
	digDown = function(side) end,

	---Place a block or item into the world in front of the turtle.
	---@param text? string When placing a sign, set its contents to this text.
	---@return boolean success Whether the block could be placed.
	---@return string? reason The reason the block was not placed.
	place = function(text) end,

	---Place a block or item into the world above the turtle.
	---@param text? string When placing a sign, set its contents to this text.
	---@return boolean success Whether the block could be placed.
	---@return string? reason The reason the block was not placed.
	placeUp = function(text) end,

	---Place a block or item into the world below the turtle.
	---@param text? string When placing a sign, set its contents to this text.
	---@return boolean success Whether the block could be placed.
	---@return string? reason The reason the block was not placed.
	placeDown = function(text) end,

	---Drop the currently selected stack into the inventory in front of the turtle,
	---or as an item into the world if there is no inventory.
	---@param count number The number of items to drop. If not given, the entire stack will be dropped.
	---@return boolean success Whether items were dropped.
	---@return string? reason The reason the no items were dropped.
	drop = function(count) end,

	---Drop the currently selected stack into the inventory above the turtle,
	---or as an item into the world if there is no inventory.
	---@param count number The number of items to drop. If not given, the entire stack will be dropped.
	---@return boolean success Whether items were dropped.
	---@return string? reason The reason the no items were dropped.
	dropUp = function(count) end,

	---Drop the currently selected stack into the inventory below the turtle,
	---or as an item into the world if there is no inventory.
	---@param count number The number of items to drop. If not given, the entire stack will be dropped.
	---@return boolean success Whether items were dropped.
	---@return string? reason The reason the no items were dropped.
	dropDown = function(count) end,

	---Change the currently selected slot.
	---@param slot number The slot to select.
	---@return boolean success When the slot has been selected.
	select = function(slot) end,

	---Get the number of items in the given slot.
	---@param slot number The slot we wish to check. Defaults to the selected slot.
	---@return number count The number of items in this slot.
	getItemCount = function(slot) end,

	---Get the remaining number of items which may be stored in this stack.
	---@param slot number The slot we wish to check. Defaults to the selected slot.
	---@return number space The space left in this slot.
	getItemSpace = function(slot) end,

	---Check if there is a solid block in front of the turtle. In this case, solid refers to any non-air or liquid block.
	---@return boolean exists If there is a solid block in front of the turtle.
	detect = function() end,

	---Check if there is a solid block above the turtle. In this case, solid refers to any non-air or liquid block.
	---@return boolean exists If there is a solid block above the turtle.
	detectUp = function() end,

	---Check if there is a solid block below the turtle. In this case, solid refers to any non-air or liquid block.
	---@return boolean exists If there is a solid block below the turtle.
	detectDown = function() end,

	---Check if the block in front of the turtle is equal to the item in the currently selected slot.
	---@return boolean equal If the block and item are equal.
	compare = function() end,

	---Check if the block above the turtle is equal to the item in the currently selected slot.
	---@return boolean equal If the block and item are equal.
	compareUp = function() end,

	---Check if the block below the turtle is equal to the item in the currently selected slot.
	---@return boolean equal If the block and item are equal.
	compareDown = function() end,

	---Attack the entity in front of the turtle.
	---@param side turtle.Side The specific tool to use.
	---@return boolean didHit Whether an entity was attacked.
	---@return string? reason The reason nothing was attacked.
	attack = function(side) end,

	---Attack the entity above the turtle.
	---@param side turtle.Side The specific tool to use.
	---@return boolean didHit Whether an entity was attacked.
	---@return string? reason The reason nothing was attacked.
	attackUp = function(side) end,

	---Attack the entity below the turtle.
	---@param side turtle.Side The specific tool to use.
	---@return boolean didHit Whether an entity was attacked.
	---@return string? reason The reason nothing was attacked.
	attackDown = function(side) end,

	---Suck an item from the inventory in front of the turtle, or from an item floating in the world.
	---
	---This will pull items into the first acceptable slot, starting at the currently selected one.
	---@param count? number The number of items to suck. If not given, up to a stack of items will be picked up.
	---@return boolean success Whether items were picked up.
	---@return string? reason The reason the no items were picked up.
	suck = function(count) end,

	---Suck an item from the inventory above the turtle, or from an item floating in the world.
	---
	---This will pull items into the first acceptable slot, starting at the currently selected one.
	---@param count? number The number of items to suck. If not given, up to a stack of items will be picked up.
	---@return boolean success Whether items were picked up.
	---@return string? reason The reason the no items were picked up.
	suckUp = function(count) end,

	---Suck an item from the inventory below the turtle, or from an item floating in the world.
	---
	---This will pull items into the first acceptable slot, starting at the currently selected one.
	---@param count? number The number of items to suck. If not given, up to a stack of items will be picked up.
	---@return boolean success Whether items were picked up.
	---@return string? reason The reason the no items were picked up.
	suckDown = function(count) end,

	---Get the maximum amount of fuel this turtle currently holds.
	---@return number|'"unlimited"' fuelLevel The current amount of fuel a turtle this turtle has, or `"unlimited"` if turtles do not consume fuel when moving.
	getFuelLevel = function() end,

	---Refuel this turtle.
	---
	---While most actions a turtle can perform (such as digging or placing blocks) are free,
	---moving consumes fuel from the turtle's internal buffer. If a turtle has no fuel, it will not move.
	---
	---`refuel` refuels the turtle, consuming fuel items (such as coal or lava buckets) from
	---the currently selected slot and converting them into energy. This finishes once the turtle
	---is fully refuelled or all items have been consumed.
	---@param count number The maximum number of items to consume. One can pass 0 to check if an item is combustable or not.
	---@return boolean success If the turtle was refuelled.
	---@return string? reason The reason the turtle was not refuelled.
	refuel = function(count) end,

	---Compare the item in the currently selected slot to the item in another slot.
	---@param slot number The slot to compare to.
	---@return boolean equal If the two items are equal.
	compareTo = function(slot) end,

	---Move an item from the selected slot to another one.
	---@param slot number The slot to move this item to.
	---@param count? number The maximum number of items to move.
	---@return boolean success If some items were successfully moved.
	transferTo = function(slot, count) end,

	---Get the currently selected slot.
	---@return number selectedSlot The currently selected slot.
	getSelectedSlot = function() end,

	---Get the maximum amount of fuel this turtle can hold.
	---
	---By default, normal turtles have a limit of 20,000 and advanced turtles of 100,000.
	---@return number|'"unlimited"' limit The maximum amount of fuel a turtle can hold, or `"unlimited"` if turtles do not consume fuel when moving.
	getFuelLimit = function() end,

	---Equip (or unequip) an item on the left side of this turtle.
	---@return boolean success If the item was equipped.
	---@return string? reason The reason equipping this item failed.
	equipLeft = function() end,

	---Equip (or unequip) an item on the right side of this turtle.
	---@return boolean success If the item was equipped.
	---@return string? reason The reason equipping this item failed.
	equipRight = function() end,

	---Get information about the block in front of the turtle.
	---@return boolean exists Whether there is a block in front of the turtle.
	---@return turtle.BlockInfo|string info Information about the block in front, or a message explaining that there is no block.
	inspect = function() end,

	---Get information about the block above the turtle.
	---@return boolean exists Whether there is a block in front of the turtle.
	---@return turtle.BlockInfo|string info Information about the block in front, or a message explaining that there is no block.
	inspectUp = function() end,

	---Get information about the block below the turtle.
	---@return boolean exists Whether there is a block in front of the turtle.
	---@return turtle.BlockInfo|string info Information about the block in front, or a message explaining that there is no block.
	inspectDown = function() end,

	---Get detailed information about the items in the given slot.
	---@param slot? number The slot to get information about. Defaults to the selected slot.
	---@return peripheral.InventoryItem? info Information about the given slot, or nil if it is empty.
	getItemDetail = function(slot) end,

	---Get detailed information about the items in the given slot.
	---@param slot? number The slot to get information about. Defaults to the selected slot.
	---@param detailed boolean Whether to include "detailed" information. When `true` the method will contain much more information about the item at the cost of taking longer to run.
	---@return peripheral.DetailedInventoryItem? info Information about the given slot, or nil if it is empty.
	getItemDetail = function(slot, detailed) end,
}
