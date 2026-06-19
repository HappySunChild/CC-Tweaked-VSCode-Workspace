---@meta

---@class plethora.module.EntitySensor
local EntitySensor = {
	---Scan for entities in the vicinity.
	---@return plethora.entity.EntityData[] scanned
	sense = function() end,

	---Find a nearby entity by UUID.
	---@param id string
	---@return plethora.entity.EntityMetadata metadata
	getMetaByID = function(id) end,

	---Find a nearby entity by name.
	---@param name string
	---@return plethora.entity.EntityMetadata metadata
	getMetaByName = function(name) end,
}
