---@meta

---@class Libraries.turtle
turtle = {}

---Craft a recipe based on the turtle's inventory. The turtle's inventory should set up like a crafting grid. For instance, to craft sticks, slots 1 and 5 should contain planks. All other slots should be empty, including those outside the crafting "grid".
---@param limit? integer
---@return boolean success
---@return string? errorMessage
function turtle.craft(limit) end

---Move the turtle forward one block.
---@return boolean success
---@return string? errorMessage
function turtle.forward() end

---Move the turtle backwards one block.
---@return boolean success
---@return string? errorMessage
function turtle.back() end

---Move the turtle up one block.
---@return boolean success
---@return string? errorMessage
function turtle.up() end

---Move the turtle down one block.
---@return boolean success
---@return string? errorMessage
function turtle.down() end

---Rotate the turtle 90 degrees to the left.
---@return boolean success
---@return string? errorMessage
function turtle.turnLeft() end

---Rotate the turtle 90 degrees to the right.
---@return boolean success
---@return string? errorMessage
function turtle.turnRight() end

---Attempt to break the block in front of the turtle.
---@param side turtle.ToolSide
---@return boolean success
---@return string? errorMessage
function turtle.dig(side) end

---Attempt to break the block above the turtle.
---@param side turtle.ToolSide
---@return boolean success
---@return string? errorMessage
function turtle.digUp(side) end

---Attempt to break the block below the turtle.
---@param side turtle.ToolSide
---@return boolean success
---@return string? errorMessage
function turtle.digDown(side) end

---Place a block or item into the world in front of the turtle.
---@param text? string
---@return boolean success
---@return string? errorMessage
function turtle.place(text) end

---Place a block or item into the world above the turtle.
---@param text? string
---@return boolean success
---@return string? errorMessage
function turtle.placeUp(text) end

---Place a block or item into the world below the turtle.
---@param text? string
---@return boolean success
---@return string? errorMessage
function turtle.placeDown(text) end

---Drop the currently selected stack into the inventory in front of the turtle, or as an item into the world if there is no inventory.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.drop(count) end

---Drop the currently selected stack into the inventory above the turtle, or as an item into the world if there is no inventory.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.dropUp(count) end

---Drop the currently selected stack into the inventory below the turtle, or as an item into the world if there is no inventory.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.dropDown(count) end

---Change the currently selected slot.
---@param slot integer
---@return boolean success
function turtle.select(slot) end

---Get the number of items in the given slot.
---@param slot? integer
---@return integer count
function turtle.getItemCount(slot) end

---Get the remaining number of items which may be stored in this stack.
---@param slot? integer
---@return integer spaceLeft
function turtle.getItemSpace(slot) end

---Check if there is a solid block in front of the turtle. In this case, solid refers to any non-air or liquid block.
---@return boolean detected
function turtle.detect() end

---Check if there is a solid block above the turtle. In this case, solid refers to any non-air or liquid block.
---@return boolean detected
function turtle.detectUp() end

---Check if there is a solid block below the turtle. In this case, solid refers to any non-air or liquid block.
---@return boolean detected
function turtle.detectDown() end

---Check if the block in front of the turtle is equal to the item in the currently selected slot.
---@return boolean areSame
function turtle.compare() end

---Check if the block above the turtle is equal to the item in the currently selected slot.
---@return boolean areSame
function turtle.compareUp() end

---Check if the block below the turtle is equal to the item in the currently selected slot.
---@return boolean areSame
function turtle.compareDown() end

---Attack the entity in front of the turtle.
---@param side turtle.ToolSide
---@return boolean success
---@return string? errorMessage
function turtle.attack(side) end

---Attack the entity above the turtle.
---@param side turtle.ToolSide
---@return boolean success
---@return string? errorMessage
function turtle.attackUp(side) end

---Attack the entity below the turtle.
---@param side turtle.ToolSide
---@return boolean success
---@return string? errorMessage
function turtle.attackDown(side) end

---Suck an item from the inventory in front of the turtle, or from an item floating in the world.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.suck(count) end

---Suck an item from the inventory above the turtle, or from an item floating in the world.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.suckUp(count) end

---Suck an item from the inventory below the turtle, or from an item floating in the world.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.suckDown(count) end

---Get the maximum amount of fuel this turtle currently holds.
---@return number|'unlimited' amount
function turtle.getFuelLevel() end

---Refuel this turtle.
---@param count? integer
---@return boolean success
---@return string? errorMessage
function turtle.refuel(count) end

---Compare the item in the currently selected slot to the item in another slot.
---@param slot integer
---@return boolean areSame
function turtle.compareTo(slot) end

---Move an item from the selected slot to another one.
---@param slot integer
---@param count? integer
---@return boolean success
function turtle.transferTo(slot, count) end

---Get the currently selected slot.
---@return integer slot
function turtle.getSelectedSlot() end

---Get the maximum amount of fuel this turtle can hold.
---@return number|'unlimited'
function turtle.getFuelLimit() end

---Equip (or unequip) an item on the left side of this turtle.
---@return boolean success
---@return string? errorMessage
function turtle.equipLeft() end

---Equip (or unequip) an item on the right side of this turtle.
---@return boolean success
---@return string? errorMessage
function turtle.equipRight() end

---Get information about the block in front of the turtle.
---@return boolean blockPresent
---@return turtle.InspectInfo|string info
function turtle.inspect() end

---Get information about the block above the turtle.
---@return boolean blockPresent
---@return turtle.InspectInfo|string info
function turtle.inspectUp() end

---Get information about the block below the turtle.
---@return boolean blockPresent
---@return turtle.InspectInfo|string info
function turtle.inspectDown() end

---Get detailed information about the items in the given slot.
---@param slot? integer
---@param detailed? boolean
---@return turtle.SlotInfoDetailed|turtle.SlotInfo? info
function turtle.getItemDetail(slot, detailed) end