---@meta

---The Energy Detector can detect energy flow and acts as a resistor.
---You can define the max flow rate to use it as a resistor
---@class ap.peripheral.EnergyDetector
local EnergyDetector = {
	---Returns the current energy that is going through the Energy Detector.
	---@return integer transfer_rate
	getTransferRate = function() end,

	---Returns the max rate limit of energy through the Energy Detector which has been set using `setTransferRateLimit`
	---@return integer transfer_rate_limit
	getTransferRateLimit = function() end,

	---Sets the maximum energy rate that will go through the Energy Detector.
	---@param limit integer
	setTransferRateLimit = function(limit) end,
}
