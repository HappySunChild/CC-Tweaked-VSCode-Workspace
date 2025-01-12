---@meta

---@class Libraries.settings
settings = {}

---Define a new setting, optional specifying various properties about it.
---@param name string
---@param options? settings.SettingOptions
function settings.define(name, options) end

---Remove a definition of a setting.
---@param name string
function settings.undefine(name) end

---Set the value of a setting.
---@param name string
---@param value any
function settings.set(name, value) end

---Remove the value of a setting, setting it to the default.
---@param name string
function settings.unset(name) end

---Get the value of a setting.
---@param name string
---@param default? any
---@return any value
function settings.get(name, default) end

---Get details about a specific setting.
---@param name string
---@return settings.SettingDetails
function settings.getDetails(name) end

---Resets the value of all settings. Equivalent to calling settings.unset on every setting.
function settings.clear() end

---Get the names of all currently defined settings.
---@return string[]
function settings.getNames() end

---Load settings from the given file.
---@param path? string
---@return boolean success
function settings.load(path) end

---Save settings to the given file.
---@param path? string
---@return boolean success
function settings.save(path) end