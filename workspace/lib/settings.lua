---@meta

---Read and write configuration options for CraftOS and your programs.
---
---When a computer starts, it reads the current value of settings from the /.settings file.
---These values then may be read or modified.
---
---<h2 align="center"><a href="https://tweaked.cc/modules/settings.html">Official Documentation</a></h2>
---@class settings
settings = {}

---Define a new setting, optional specifying various properties about it.
---
---While settings do not have to be added before being used, doing so allows you to provide defaults and additional metadata.
---@param name string
---@param options settings.SettingDetails
function settings.define(name, options) end

---Remove a definition of a setting.
---@param name string
function settings.undefine(name) end

---Set the value of a setting.
---@param name string The name of the setting to set
---@param value any The setting's value. This cannot be nil, and must be serialisable by textutils.serialize.
function settings.set(name, value) end

---Get the value of a setting.
---@param name string The name of the setting to get.
---@param default? any The value to use should there be pre-existing value for this setting. If not given, it will use the setting's default value if given, or `nil` otherwise.
---@return any value The setting's, or the default if the setting has not been changed.
function settings.get(name, default) end

---Get details about a specific setting.
---@param name string The name of the setting to get.
---@return settings.SettingDetails details Information about this setting. This includes all information from settings.define, as well as this setting's value.
function settings.getDetails(name) end

---Remove the value of a setting, setting it to the default.
---@param name string The name of the setting to unset.
function settings.unset(name) end

---Resets the value of all settings.
function settings.clear() end

---Get the names of all currently defined settings.
---@return string[] settings An alphabetically sorted list of all currently-defined settings.
function settings.getNames() end

---Load settings from the given file.
---
---Existing settings will be merged with any pre-existing ones.
---Conflicting entries will be overwritten, but any others will be preserved.
---@param path? string The file to load from, defaults to `".settings"`.
---@return boolean success Whether settings were successfully read from this file. Reasons for failure may include the file not existing or being corrupted.
function settings.load(path) end

---Save settings to the given file.
---
---This will entirely overwrite the pre-existing file.
---Settings defined in the file, but not currently loaded will be removed.
---@param path? string The file to save to, defaults to `".settings"`.
---@return boolean success If the settings were successfully saved.
function settings.save(path) end
