---@meta

---@class Modules.KineticAugment
local kineticAugment = {}

---Left click with this item.
---@return boolean success
---@return string? message
function kineticAugment.swing() end

---Launch the entity in a set direction.
---@param yaw number
---@param pitch number
---@param power number
function kineticAugment.launch(yaw, pitch, power) end

---Make the entity look in a set direction.
---@param yaw number
---@param pitch number
function kineticAugment.look(yaw, pitch) end

---Right click with this item.
---**The duration is in ticks, or 1/20th of a second (ie. 20 is one second)**
---@param durationTicks? integer
---@param hand? "left"|"right"
---@return boolean success
---@return string? message
function kineticAugment.use(durationTicks, hand) end

---Disable the AI of this entity. Their neural pathways will be inhibited preventing them thinking for themselves
---**This can only be used on entities.**
function kineticAugment.disableAI() end

---Enable the AI of this entity.
---**This can only be used on entities.**
function kineticAugment.enableAI() end

---Returns whether the entity is currently walking somewhere.
---**This can only be used on entities.**
---@return boolean isWalking
function kineticAugment.isWalking() end

---Walk to a coordinate.
---**This can only be used on entities.**
---@param x number
---@param y number
---@param z number
---@return boolean success
---@return string? message
function kineticAugment.walk(x, y, z) end

---Teleport to a position relative to the current one.
---**This can only be used on endermen.**
---@param x number
---@param y number
---@param z number
function kineticAugment.teleport(x, y, z) end

---Explode this creeper.
---**This can only be used on creepers.**
function kineticAugment.explode() end

---Propel this minecart in along the track.
---**This can only be used on minecarts.**
function kineticAugment.propel(velocity) end




---Fire an arrow in the direction the skeleton is looking
---@param potency number
function kineticAugment.shoot(potency) end

---Fire a fireball in the specified direction.
---@param yaw number
---@param pitch number
function kineticAugment.shoot(yaw, pitch) end