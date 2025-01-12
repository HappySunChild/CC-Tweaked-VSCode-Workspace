---@meta

-- Monitors act as terminal redirects and so expose the same methods, as well as several additional ones, which are documented below.
---@class Peripheral.Monitor : Redirect
local monitor = {}

---Set the scale of this monitor.
---@param scale number
function monitor.setTextScale(scale) end

---Get the monitor's current text scale.
---@return number scale
function monitor.getTextScale() end