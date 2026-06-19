---@meta

---@class plethora.module.KineticAugment
local KineticAugment = {
	---Left click with this item.
	---@return boolean success
	---@return string? message
	swing = function() end,

	---Launch the entity in a set direction.
	---@param yaw number
	---@param pitch number
	---@param power number
	launch = function(yaw, pitch, power) end,

	---Make the entity look in a set direction.
	---@param yaw number
	---@param pitch number
	look = function(yaw, pitch) end,

	---Right click with this item.
	---**The duration is in ticks, or 1/20th of a second (ie. 20 is one second)**
	---@param duration_ticks? integer
	---@param hand? "left"|"right"
	---@return boolean success
	---@return string? message
	use = function(duration_ticks, hand) end,
}

---Functions that are only available on certain entities.
---@class plethora.module.KineticAugmentEntity
local KineticAugmentEntity = {
	---Disable the AI of this entity. Their neural pathways will be inhibited preventing them thinking for themselves
	---**This can only be used on entities.**
	disableAI = function() end,

	---Enable the AI of this entity.
	---**This can only be used on entities.**
	enableAI = function() end,

	---Returns whether the entity is currently walking somewhere.
	---**This can only be used on entities.**
	---@return boolean is_walking
	isWalking = function() end,

	---Walk to a coordinate.
	---**This can only be used on entities.**
	---@param x number
	---@param y number
	---@param z number
	---@return boolean success
	---@return string? message
	walk = function(x, y, z) end,

	---Teleport to a position relative to the current one.
	---**This can only be used on endermen.**
	---@param x number
	---@param y number
	---@param z number
	teleport = function(x, y, z) end,

	---Explode this creeper.
	---**This can only be used on creepers.**
	explode = function() end,

	---Propel this minecart in along the track.
	---**This can only be used on minecarts.**
	propel = function(velocity) end,

	---Fire an arrow in the direction the skeleton is looking
	---@param potency number
	shoot = function(potency) end,

	---Fire a fireball in the specified direction.
	---@param yaw number
	---@param pitch number
	shoot = function(yaw, pitch) end,
}
