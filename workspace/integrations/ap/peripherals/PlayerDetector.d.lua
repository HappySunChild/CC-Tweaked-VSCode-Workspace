---@meta

---The Player Detector is a useful peripheral that allows you to detect players within a certain range, position and area.
---You can get a list of all online players and detect when a player clicks on the block.
---@class ap.peripheral.PlayerDetector
local PlayerDetector = {
	---Returns information about the player with the specified username.
	---@param username string
	---@return ap.info.Player info
	getPlayer = function(username) end,

	---Returns information about the player with the specified username.
	---@param username string
	---@return ap.info.Player info
	getPlayerPos = function(username) end,

	---Returns a list of all online players.
	---@return string[] players
	getOnlinePlayers = function() end,

	---Returns a list of players within the given range of the Player Detector.
	---@param range number
	---@return string[] players
	getPlayersInRange = function(range) end,

	---Returns a list of players within the bounding box defined by (`min.x`, `min.y`, `min.z`) and (`max.x`, `max.y`, `max.z`).
	---@param min {x: number, y: number, z: number}
	---@param max {x: number, y: number, z: number}
	---@return string[] players
	getPlayersInCoords = function(min, max) end,

	---Returns a list of players within a cuboid centered around the Player Detector, with dimensions (`width`, `height`, `depth`).
	---@param width number
	---@param height number
	---@param depth number
	---@return string[] players
	getPlayersInCubic = function(width, height, depth) end,

	---Returns whether the player with the specified username is within the given range of the Player Detector.
	---@param range number
	---@param username string
	---@return boolean in_range
	isPlayerInRange = function(range, username) end,

	---Returns whether the player with the specified username is within the bounding box defined by (`min.x`, `min.y`, `min.z`) and (`max.x`, `max.y`, `max.z`).
	---@param min {x: number, y: number, z: number}
	---@param max {x: number, y: number, z: number}
	---@param username string
	---@return boolean in_region
	isPlayerInCoords = function(min, max, username) end,

	---Returns whether the player with the specified username is within a cuboid centered around the Player Detector, with dimensions (`width`, `height`, `depth`).
	---@param width number
	---@param height number
	---@param depth number
	---@param username string
	---@return boolean in_cuboid
	isPlayerInCubic = function(width, height, depth, username) end,

	---Returns whether there is any player within the given range of the Player Detector.
	---@param range number
	---@return boolean is_player
	isPlayersInRange = function(range) end,

	---Returns whether there is any player within the bounding box defined by (`min.x`, `min.y`, `min.z`) and (`max.x`, `max.y`, `max.z`)
	---@param min number
	---@param max number
	---@return boolean is_player
	isPlayersInCoords = function(min, max) end,

	---Returns whether there is any player within a cuboid centered around the Player Detector, with dimensions (`width`, `height`, `depth`).
	---@param width number
	---@param height number
	---@param depth number
	---@return boolean is_player
	isPlayersInCubic = function(width, height, depth) end,
}
