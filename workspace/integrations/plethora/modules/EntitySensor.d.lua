---@meta

---@class plethora.module.EntitySensor
local EntitySensor = {
	---Scan for entities in the vicinity.
	---@return plethora.types.entity.EntityData[] scanned
	sense = function() end,

	---Find a nearby entity by UUID.
	---@param id string
	---@return plethora.types.entity.EntityMetadata metadata
	getMetaByID = function(id) end,

	---Find a nearby entity by name.
	---@param name string
	---@return plethora.types.entity.EntityMetadata metadata
	getMetaByName = function(name) end,
}
