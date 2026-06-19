---@meta

---Watch Dog Timer restarts the computer if the internal timer reaches the limit.
---@class tom.peripheral.WatchDogTimer
local WatchDogTimer = {
	---Enables or disables the Watch Dog Timer.
	---@param enabled boolean
	setEnabled = function(enabled) end,

	---Returns whether the timer is currently running.
	---@return boolean enabled
	isEnabled = function() end,

	---Sets the time limit.
	---@param timeout number
	setTimeout = function(timeout) end,

	---Returns the time limit set by [setTimeout](lua://tom.peripheral.WatchDogTimer.setTimeout)
	---@return number timeout
	getTimeout = function() end,

	---Restarts the timer.
	reset = function() end,
}
