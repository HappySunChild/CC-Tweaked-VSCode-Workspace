---@meta

---@alias cc.os.Locale
---| '"ingame"'
---| '"utc"'
---| '"local"'

---@class cc.os.TimestampTable
---@field sec integer
---@field min integer
---@field hour integer
---@field day integer
---@field month integer
---@field year integer
---@field wday integer
---@field yday integer
---@field isdst boolean

---@alias cc.os.Event
---The `alarm` event is fired when an alarm started with [os.setAlarm](https://tweaked.cc/module/os.html#v:setAlarm) completes.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The ID of the alarm that finish.
---| '"alarm"'
---The `char` event is fired when a character is typed on the keyboard.
---
---The `char` event is different to a key press.
---Sometimes multiple key presses may result in one character being typed (for instance, on some European keyboards).
---Similarly, some keys (e.g. Ctrl) do not have any corresponding character.
---The key should be used if you want to listen to key presses themselves.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The string representing the character that was pressed.
---| '"char"'
---The `computer_command` event is fired when the `/computercraft queue` command is run for the current command computer.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string`... - The arguments that were passed to the command.
---| '"computer_command"'
---The `disk` event is fired when a disk is inserted into an adjacent or networked disk drive.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side of the disk drive that had a disk inserted.
---| '"disk"'
---The `disk_eject` event is fired when a disk is removed from an adjacent or networked disk drive.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side of the disk drive that had a disk removed.
---| '"disk_eject"'
---The `file_transfer` event is queued when a user drags-and-drops a file on an open computer.
---
---This event contains a single argument of type `TransferredFiles`, which can be used to get the files to be transferred.
---Each file returned is a [binary file handle](https://tweaked.cc/module/fs.html#ty:ReadHandle) with an additional `getName` method.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `TransferredFiles` - The list of transferred files.
---| '"file_transfer"'
---The `http_check` event is fired when a URL check finishes.
---
---This event is normally handled inside [http.checkURL](https://tweaked.cc/module/http.html#v:checkURL), but it can still be seen when using [http.checkURLAsync](https://tweaked.cc/module/http.html#v:checkURLAsync).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URL requested to be checked.
--- 3. `boolean` - Whether the check succeeded.
--- 4. `string?` - A reason explaining why the check failed.
---| '"http_check"'
---The `http_failure` event is fired when an HTTP request fails.
---
---This event is normally handled inside [http.get](https://tweaked.cc/module/http.html#v:get) and [http.post](https://tweaked.cc/module/http.html#v:post), but it can still be seen when using [http.request](https://tweaked.cc/module/http.html#v:request).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URl of the site requested.
--- 3. `string` - An error describing the failure.
--- 4. `http.Response?` - A response handle if the connection succeeded, but the server's response indicated failure.
---| '"http_failure"'
---The `http_success` event is fired when an HTTP request returns successfully.
---
---This event is normally handled inside [http.get](https://tweaked.cc/module/http.html#v:get) and [http.post](https://tweaked.cc/module/http.html#v:post), but it can still be seen when using [http.request](https://tweaked.cc/module/http.html#v:request).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URL of the site requested.
--- 3. `http.Response` - The successful HTTP response.
---| '"http_success"'
---This event is fired when any key is pressed while the terminal is focused.
---
---This event returns a numerical "key code" (for instance, `F1` is 290). This value may vary between versions and so it is recommended to use the constants in the [keys](https://tweaked.cc/module/keys.html) API rather than hard coding numeric values.
---
---If the button pressed represented a printable character, then the key event will be followed immediately by a char event. If you are consuming text input, use a [char](https://tweaked.cc/event/char.html) event instead!
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The numerical key value of the key pressed.
--- 3. `boolean` - Whether the key event was generated while holding the key, rather than pressing it the first time.
---| '"key"'
---This event is fired whenever a key is released (or the terminal is closed while a key was being pressed).
---
---This event returns a numerical "key code" (for instance, `F1` is 290). This value may vary between versions and so it is recommended to use the constants in the [keys](https://tweaked.cc/module/keys.html) API rather than hard coding numeric values.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The numerical key value of the key pressed.
---| '"key_up"'
---The `modem_message` event is fired when a message is received on an open channel on any [modem](https://tweaked.cc/peripheral/modem.html).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side of the modem that received the message.
--- 3. `number` - The channel that the message was sent on.
--- 4. `number` - The reply channel set by the sender.
--- 5. `any` - The message as sent by the sender.
--- 6. `number?` - The distance between the sender and the receiver in block, or nil if the message was sent between dimensions.
---| '"modem_message"'
---The `monitor_resize` event is fired when an adjacent or networked [monitor's](https://tweaked.cc/peripheral/monitor.html) size is changed.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side or network ID of the monitor that was resized.
---| '"monitor_resize"'
---The `monitor_touch` event is fired when an adjacent or networked [Advanced Monitor](https://tweaked.cc/peripheral/monitor.html) is right-clicked.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side or network ID of the monitor that was touched.
--- 3. `number` - The X coordinate of the touch, in characters.
--- 3. `number` - The Y coordinate of the touch, in characters.
---| '"monitor_touch"'
---This event is fired when the terminal is clicked with a mouse. This event is only fired on advanced computers (including advanced turtles and pocket computers).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The mouse button that was clicked.
--- 3. `number` - The X coordinate of the mouse, in characters.
--- 4. `number` - The Y coordinate of the mouse, in characters.
---
---## Mouse Buttons
---Several mouse events contain a "mouse button" code.
---This takes a numerical value depending on which button on your mouse was last pressed when this event occurred.
--- - 1 = Left button
--- - 2 = Right button
--- - 3 = Middle button
---| '"mouse_click"'
---This event is fired every time the mouse is moved while a mouse button is being held.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The mouse button that is being pressed.
--- 3. `number` - The X coordinate of the mouse, in characters.
--- 4. `number` - The Y coordinate of the mouse, in characters.
---
---## Mouse Buttons
---Several mouse events contain a "mouse button" code.
---This takes a numerical value depending on which button on your mouse was last pressed when this event occurred.
--- - 1 = Left button
--- - 2 = Right button
--- - 3 = Middle button
---| '"mouse_drag"'
---This event is fired when a mouse wheel is scrolled in the terminal.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The direction of the scroll. (-1 = up, 1 = down)
--- 3. `number` - The X coordinate of the scroll, in characters.
--- 4. `number` - The Y coordinate of the scroll, in characters.
---| '"mouse_scroll"'
---This event is fired when a mouse button is released or a held mouse leaves the computer's terminal.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The mouse button that was released.
--- 3. `number` - The X coordinate of the mouse, in characters.
--- 4. `number` - The Y coordinate of the mouse, in characters.
---
---## Mouse Buttons
---Several mouse events contain a "mouse button" code.
---This takes a numerical value depending on which button on your mouse was last pressed when this event occurred.
--- - 1 = Left button
--- - 2 = Right button
--- - 3 = Middle button
---| '"mouse_up"'
---The `paste` event is fired when text is pasted into the computer through Ctrl-V (or ⌘V on Mac).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The text that was pasted.
---| '"paste"'
---The `peripheral` event is fired when a peripheral is attached on a side or to a modem.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side the peripheral was attached to.
---| '"peripheral"'
---The `peripheral_detach` event is fired when a peripheral is detached from a side or from a modem.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The side the peripheral was detached to.
---| '"peripheral_detach"'
---The `rednet_message` event is fired when a message is sent over Rednet.
---
---This event is usually handled by [rednet.receive](https://tweaked.cc/module/rednet.html#v:receive), but it can also be pulled manually.
---
---`rednet_message` events are sent by [rednet.run](https://tweaked.cc/module/rednet.html#v:run) in the top-level coroutine in response to `modem_message` events.
---A `rednet_message` event is always preceded by a `modem_message` event. They are generated inside CraftOS rather than being sent by the ComputerCraft machine.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The ID of the sending computer.
--- 3. `any` - The message sent.
--- 4. `string?` - The protocol of the message, if provided.
---| '"rednet_message"'
---The `redstone` event is fired whenever any redstone inputs on the computer or [relay](https://tweaked.cc/peripheral/redstone_relay.html) change.
---
---## Return Values
--- 1. `string` - The event name.
---| '"redstone"'
---The `setting_changed` event is fired when a setting is modified with the [settings](https://tweaked.cc/module/settings.html) API.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The name of the setting that was changed.
--- 3. `any` - The value the setting was set to.
--- 4. `any` - The previous value of the setting.
---| '"setting_changed"'
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The name of the speaker which is available to play more audio.
---| '"speaker_audio_empty"'
---The `task_complete` event is fired when an asynchronous task completes.
---This is usually handled inside the function call that queued the task; however, functions such as [commands.execAsync](https://tweaked.cc/module/commands.html#v:execAsync) return immediately so the user can wait for completion.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The ID of the task that completed.
--- 3. `boolean` - Whether the command succeeded.
--- 4. `string` - If the command failed, an error message explaining the failure. (This is not present if the command succeeded.)
--- ... - Any extra parameters returned from the command.
---| '"task_complete"'
---The `term_resize` event is fired when the main terminal is resized. For instance:
--- - When a the tab bar is shown or hidden in [multishell](https://tweaked.cc/module/multishell.html).
--- - When the terminal is redirected to a monitor via the "monitor" program and the monitor is resized.
---
--- When this event fires, some parts of the terminal may have been moved or deleted. Simple terminal programs (those not using [term.setCursorPos](https://tweaked.cc/module/term.html#v:setCursorPos)) can ignore this event, but more complex GUI programs should redraw the entire screen.
---
---## Return Values
--- 1. `string` - The event name.
---| '"term_resize"'
---The `timer` event is fired when a timer started with [os.startTimer](https://tweaked.cc/module/os.html#v:startTimer) completes.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `number` - The ID of the timer that finished.
---| '"timer"'
---The `turtle_inventory` event is fired when a turtle's inventory is changed.
---
---## Return Values
--- 1. `string` - The event name.
---| '"turtle_inventory"'
---The `websocket_closed` event is fired when an open WebSocket connection is closed.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URL of the WebSocket that was closed.
--- 3. `string?` - The [server-provided reason](https://www.rfc-editor.org/rfc/rfc6455.html#section-7.1.6) the websocket was closed. This will be nil if the connection was closed abnormally.
--- 4. `number?` - The [connection close code](https://www.rfc-editor.org/rfc/rfc6455.html#section-7.1.5), indicating why the socket was closed. This will be nil if the connection was closed abnormally.
---| '"websocket_closed"'
---The `websocket_failure` event is fired when a WebSocket connection request fails.
---
---This event is normally handled inside [http.websocket](https://tweaked.cc/module/http.html#v:websocket), but it can still be seen when using [http.websocketAsync](https://tweaked.cc/module/http.html#v:websocketAsync).
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URL of the site requested.
--- 3. `string` - An error describing the failure.
---| '"websocket_failure"'
---The `websocket_message` event is fired when a message is received on an open WebSocket connection.
---
---This event is normally handled by [http.Websocket.receive](https://tweaked.cc/module/http.html#ty:Websocket:receive), but it can also be pulled manually.
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URl of the WebSocket
--- 3. `string` - The contents of the message.
--- 4. `boolean` - Whether this is a binary message.
---| '"websocket_message"'
---The `websocket_success` event is fired when a WebSocket connection request returns successfully.
---
---This event is normally handled inside [http.websocket](https://tweaked.cc/module/http.html#v:websocket), but it can still be seen when using [http.websocketAsync](https://tweaked.cc/module/http.html#v:websocketAsync)
---
---## Return Values
--- 1. `string` - The event name.
--- 2. `string` - The URL of the site.
--- 3. `http.Websocket` - The handle for the WebSocket.
---| '"websocket_success"'

---@alias cc.os.RawEvent cc.os.Event
---The `terminate` event is fired when `Ctrl-T` is held down.
---
---This event is normally handled by [os.pullEvent](https://tweaked.cc/module/os.html#v:pullEvent), and will not be returned. However, [os.pullEventRaw](https://tweaked.cc/module/os.html#v:pullEventRaw) will return this event when fired.
---
---`terminate` will be sent even when a filter is provided to [os.pullEventRaw](https://tweaked.cc/module/os.html#v:pullEventRaw). When using [os.pullEventRaw](https://tweaked.cc/module/os.html#v:pullEventRaw) with a filter, make sure to check that the event is not `terminate`.
---
---## Return Values
--- 1. `string` - The event name.
---|'"terminate"'

---The os API allows interacting with the current computer.
---
---<h2 align="center"><a href="https://tweaked.cc/module/os.html">Official Documentation</a></h2>
---@class cc.oslib
local os = {
	sleep = sleep,

	---Loads the given API into the global environment.
	---
	---This function loads and executes the file at the given path, and all global
	---variables and functions exported by it will by available through the use of
	---`myAPI.<function name>`, where `myAPI` is the base name of the API file.
	---@deprecated
	---@param path string The path of the API to load.
	---@return boolean success Whether or not the API was successfully loaded
	loadAPI = function(path) end,

	---Unloads an API which was loaded by `os.loadAPI`
	---
	---This effectively removes the specified table from `_G`.
	---@deprecated
	---@see os.loadAPI
	---@param name string The name of the API to unload.
	unloadAPI = function(name) end,

	---Pause execution of the current thread and waits for any events matching `filter`.
	---
	---This function yields the current process and waits for it to be resumed
	---with a vararg list where the first element matches `filter`. If no `filter`
	---is supplied, this will match all events.
	---
	---Unlike `os.pullEventRaw`, it will stop the application upon a "terminate"
	---event, printing the error "Terminated".
	---@param filter? string|cc.os.Event Event to filter for.
	---@return string|cc.os.Event event The name of the event that fired.
	---@return any ... Optional additional parameters of the event.
	pullEvent = function(filter) end,

	---Pause execution of the current thread and waits for events,
	---including the terminate event.
	---
	---This behaves almost the same as `os.pullEvent`, except it allows
	---you to handle the terminate event yourself - the program will
	---not stop execution when Ctrl+T is pressed.
	---@param filter? string|cc.os.RawEvent Event to filter for.
	---@return string|cc.os.RawEvent event The name of the event that fired.
	---@return any ... Optional additional parameters of the event.
	pullEventRaw = function(filter) end,

	---Get the current CraftOS version (for example, `CraftOS 1.9`).
	---@return string version The current CraftOS version.
	version = function() end,

	---Run the program at the given path with the specified environment and arguments.
	---
	---***This function does not resolve program names like the shell does***.
	---This means that, for example, `os.run("edit")` will not work. As well as
	---this, it does not provide access to the shell API in the environment.
	---For this behaviour, use shell.run instead.
	---
	---If the program cannot be found, or failed to run, it will print the
	---error and return `false`. If you want to handle this more gracefully,
	---use an alternative such as `loadfile`.
	---@param env table The environment to run the program with.
	---@param path string The exact path of the program to run.
	---@param ... any The arguments to pass to the program.
	---@return boolean success Whether or not the program ran successfully.
	run = function(env, path, ...) end,

	---Adds an event to the event queue. This event can later be pulled with `os.pullEvent`.
	---@param name string The name of the event to queue.
	---@param ... boolean|number|string|table The parameters of the event. These can be any primitive type (boolean, number, string) as well as tables. Other types (like functions), as well as metatables, will not be preserved.
	queueEvent = function(name, ...) end,

	---Starts a timer that will run for the specified number of seconds.
	---Once the timer fires, a timer event will be added to the queue with
	---the ID returned from this function as the first parameter.
	---
	---As with sleep, the time will automatically be rounded up to the
	---nearest multiple of 0.05 seconds, as it waits for a fixed amount of world ticks.
	---@param time number The number of seconds until the timer fires.
	---@return number id The ID of the new timer. This can be used to filter the timer event, or cancel the timer.
	startTimer = function(time) end,

	---Cancels a timer previously started with `startTimer`. This will stop the timer from firing.
	---@param id number The ID of the timer to cancel.
	cancelTimer = function(id) end,

	---Sets an alarm that will fire at the specified in-game time.
	---
	---When it fires, an alarm event will be added to the event queue with
	---the ID returned from this function as the first parameter.
	---@param time number The time at which to fire the alarm, in the range [0.0, 24.0).
	---@return number id The ID of the new alarm. This can be used to filter the alarm event, or cancel the alarm.
	setAlarm = function(time) end,

	---Cancels an alarm previously started with `setAlarm`. This will stop the alarm from firing.
	---@param id number The ID of the alarm to cancel.
	cancelAlarm = function(id) end,

	---Shuts down the computer immediately.
	shutdown = function() end,

	---Reboots the computer immediately.
	reboot = function() end,

	---Returns the ID of the computer.
	---@return number id The ID of the computer.
	getComputerID = function() end,

	---Returns the label of the computer, or nil if none is set.
	---@return string? label The label of the computer.
	getComputerLabel = function() end,

	---Set the label of this computer.
	---@param label? string The new label. May be nil in order to clear it.
	setComputerLabel = function(label) end,

	---Returns the number of seconds that the computer has been running.
	---@return number uptime The computer's uptime.
	clock = function() end,

	---Returns the current time depending on the string passed in. This will always be in the range [0.0, 24.0).
	--- - If called with `ingame`, the current world time will be returned. **This is the default**.
	--- - If called with `utc`, returns the hour of the day in UTC time.
	--- - If called with `local`, returns the hour of the day in the timezone the server is located in.
	---@param locale cc.os.Locale The locale of the time, or a table filled by os.date("*t") to decode. Defaults to `ingame` locale if not specified.
	---@return number time The hour of the selected locale, or a UNIX timestamp from the table, depending on the argument passed in.
	time = function(locale) end,

	---Returns the day depending on the locale specified.
	--- - If called with `ingame`, returns the number of days since the world was created. **This is the default**.
	--- - If called with `utc`, returns the number of days since 1 January 1970 in the UTC timezone.
	--- - If called with `local`, returns the number of days since 1 January 1970 in the server's local timezone.
	---@param locale cc.os.Locale The locale to get the day for. Defaults to `ingame` if not set.
	---@return number time The day depending on the selected locale.
	day = function(locale) end,

	---Returns the number of milliseconds since an epoch depending on the locale.
	--- - If called with `ingame`, returns the number of in-game milliseconds since the world was created. **This is the default**.
	--- - If called with `utc`, returns the number of milliseconds since 1 January 1970 in the UTC timezone.
	--- - If called with `local`, returns the number of milliseconds since 1 January 1970 in the server's local timezone.
	---@param locale cc.os.Locale The locale to get the milliseconds for. Defaults to `ingame` if not set.
	---@return number milliseconds The milliseconds since the epoch depending on the selected locale.
	epoch = function(locale) end,

	---Returns a date string (or table) using a specified format string and optional time to format.
	---
	---The format string takes the same formats as C's [strftime](https://cplusplus.com/reference/ctime/strftime) function.
	---The format string can also be prefixed with an exclamation mark (!) to use UTC time
	---instead of the server's local timezone.
	---
	---If the format is exactly "*t" (or "!*t" ), a table representation of the timestamp will be returned instead.
	---This table has fields for the year, month, day, hour, minute, second, day of the week, day of the year,
	---and whether Daylight Savings Time is in effect. This table can be converted back to a timestamp with `os.time`.
	---@param format string The format of the string to return. This defaults to `%c`, which expands to a string similar to `"Sat Dec 24 16:58:00 2011"`.
	---@param time? number The timestamp to convert to a string. This defaults to the current time.
	---@return string|cc.os.TimestampTable time The timestamp to convert to a string. This defaults to the current time.
	date = function(format, time) end,
}
os.computerID = os.getComputerID
os.computerLabel = os.getComputerLabel
