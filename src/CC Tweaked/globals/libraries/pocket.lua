---@meta

---@class Libraries.pocket
pocket = {}

---Search the player's inventory for another upgrade, replacing the existing one with that item if found.
---@return boolean equipped
---@return string? message
function pocket.equipBack() end

---Remove the pocket computer's current upgrade.
---@return boolean unequipped
---@return string? message
function pocket.unequipBack() end