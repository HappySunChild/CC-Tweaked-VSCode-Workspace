---@meta

---@class Modules.EntitySensor
local entitySensor = {}

---Scan for entities in the vicinity.
---@return EntitySensor.EntityData[] scanned
function entitySensor.sense() end

---Find a nearby entity by UUID.
---@param id string
---@return EntitySensor.EntityMetadata metadata
function entitySensor.getMetaByID(id) end

---Find a nearby entity by name.
---@param name string
---@return EntitySensor.EntityMetadata metadata
function entitySensor.getMetaByName(name) end
