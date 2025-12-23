---@meta

---Methods for interacting with tanks and other fluid storage blocks.
---@class peripheral.FluidStorage
local FluidStorage = {
	---Get all "tanks" in this fluid storage.
	---
	---Each tank either contains some amount of fluid or is empty.
	---Tanks with fluids inside will return some basic information about the fluid, including its name and amount.
	---@return peripheral.FluidTankInfo[]
	tanks = function() end,

	---Move a fluid from one fluid container to another connected one.
	---
	---This allows you to push fluid in the current container to another container *on the same wired network*.
	---**Both inventories must be attached to wired modems which are connected via a cable.**
	---@param toName string The name of the peripheral/container to push to. This is the string given to `peripheral.wrap`, and displayed by the wired modem.
	---@param limit? number The maximum amount of fluid to move.
	---@param fluidName? string The fluid to move. If not given, an arbitrary fluid will be chosen.
	---@return number transferred The amount of moved fluid.
	pushFluid = function(toName, limit, fluidName) end,

	---Move a fluid from a connected fluid container into this one.
	---
	---This allows you to pull fluid in from another container *on the same wired network*.
	---**Both inventories must be attached to wired modems which are connected via a cable.**
	---@param fromName string The name of the peripheral/container to push to. This is the string given to `peripheral.wrap`, and displayed by the wired modem.
	---@param limit? number The maximum amount of fluid to move.
	---@param fluidName? string The fluid to move. If not given, an arbitrary fluid will be chosen.
	---@return number transferred The amount of moved fluid.
	pullFluid = function(fromName, limit, fluidName) end,
}
