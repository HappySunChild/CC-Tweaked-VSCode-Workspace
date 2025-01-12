---@meta

---@class Libraries.gps
gps = {}
gps.CHANNEL_GPS = 65534

---Tries to retrieve the computer or turtles own location.
---@param timeout? number
---@param debug? boolean
---@return number x
---@return number y
---@return number z
function gps.locate(timeout, debug) end