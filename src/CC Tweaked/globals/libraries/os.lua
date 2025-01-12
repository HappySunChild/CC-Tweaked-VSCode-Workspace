---@meta

---@class Libraries.os
os = {}

---Pause execution of the current thread and waits for any events matching filter.
---@param filter? string
---@return string eventName
---@return any ...
function os.pullEvent(filter) end

---Pause execution of the current thread and waits for events, including the `terminate` event.
---@param filter? string
---@return string eventName
---@return any ...
function os.pullEventRaw(filter) end

---Pauses execution for the specified number of seconds, alias of `_G.sleep`.
---@param time number
function os.sleep(time) end

---Get the current CraftOS version (for example, CraftOS 1.9).
---@return string version
function os.version() end

---Run the program at the given path with the specified environment and arguments.
---@param env table
---@param path string
---@vararg any
---@return boolean success
function os.run(env, path, ...) end

---Adds an event to the event queue. This event can later be pulled with os.pullEvent.
---@param name string
---@vararg any
function os.queueEvent(name, ...) end

---Starts a timer that will run for the specified number of seconds. Once the timer fires, a timer event will be added to the queue with the ID returned from this function as the first parameter.
---@param time number
---@return number id
function os.startTimer(time) end

---Cancels a timer previously started with startTimer. This will stop the timer from firing.
---@param id number
function os.cancelTimer(id) end

---Sets an alarm that will fire at the specified in-game time. When it fires, * an alarm event will be added to the event queue with the ID * returned from this function as the first parameter.
---@param time number
---@return number id
function os.setAlarm(time) end

---Cancels an alarm previously started with setAlarm. This will stop the alarm from firing.
---@param id number
function os.cancelAlarm(id) end

---Shuts down the computer immediately.
function os.shutdown() end

---Reboots the computer immediately.
function os.reboot() end

---Returns the ID of the computer.
---@return number id
function os.getComputerID() end

---Returns the ID of the computer.
---@return number id
function os.computerID() end

---Returns the label of the computer, or nil if none is set.
---@return string? label
function os.getComputerLabel() end

---Returns the label of the computer, or nil if none is set.
---@return string? label
function os.computerLabel() end

---Set the label of this computer.
---@param label? string
function os.setComputerLabel(label) end

---Returns the number of seconds that the computer has been running.
---@return number uptime
function os.clock() end

---Returns the current time depending on the string passed in. This will always be in the range [0.0, 24.0).
---@param locale? Locale|DateTable
---@return number time
function os.time(locale) end

---Returns the day depending on the locale specified.
---@param lacale? Locale
---@return number days
function os.day(lacale) end

---eturns the number of milliseconds since an epoch depending on the locale.
---@param locale? Locale
---@return number milliseconds
function os.epoch(locale) end

---Returns a date string (or table) using a specified format string and optional time to format.
---@param format? string
---@param epoch? number
---@return string|DateTable
function os.date(format, epoch) end