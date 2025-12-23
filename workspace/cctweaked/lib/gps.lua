---@meta

---Use modems to locate the position of the current turtle or computers.
---
---It broadcasts a `PING` message over rednet and waits for responses.
---In order for this system to work, there must be at least 4 computers
---used as gps hosts which will respond and allow trilateration. Three
---of these hosts should be in a plane, and the fourth should be either
---above or below the other three.
---
---You can set up hosts using the `gps` program.
---
---You may choose which axes `x`, `y`, or `z` refer to.
---
---<h2 align="center"><a href="https://tweaked.cc/module/gps.html">Official Documentation</a></h2>
---@class gpslib
local gps = {
	---The channel which GPS requests and responses are broadcast on.
	CHANNEL_GPS = 65534,

	---Tries to retrieve the computer or turtles own location.
	---@param timeout? number The maximum time in seconds taken to establish our position.
	---@param debug? boolean Print debugging messages.
	---@return number x This computer's `x` position.
	---@return number y This computer's `y` position.
	---@return number z This computer's `z` position.
	locate = function(timeout, debug) end,
}
