---@meta

---The Geo Scanner provides information about blocks around it and the chunk of that it is in.
---@class ap.peripheral.GeoScanner
local GeoScanner = {
	---Returns the maximum amount of possible stored fuel.
	---@return number max_fuel
	getMaxFuelLevel = function() end,

	---Returns the cost in FE for a scan with the given radius.
	---@param radius number
	---@return number fe_cost
	cost = function(radius) end,

	---Returns a list of data about all blocks in the radius.
	---@param radius number
	---@return ap.info.Block[]? blocks
	---@return string? err_reason
	scan = function(radius) end,

	---Returns a list of data about how many of each ore type is in the Geo Scanner's chunk.
	---@return table? ore_data
	---@return string? err_reason
	chunkAnalyze = function() end,
}
