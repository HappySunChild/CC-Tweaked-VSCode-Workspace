---@meta

---@class Libraries.shell
shell = {}

---Run a program with the supplied arguments.
---@param command string
---@vararg string
---@return boolean exitSuccess
function shell.execute(command, ...) end

---Run a program with the supplied arguments.
---@vararg string
---@return boolean exitSuccess
function shell.run(...) end

---Exit the current shell.
function shell.exit() end

---Return the current working directory. This is what is displayed before the > of the shell prompt, and is used by shell.resolve to handle relative paths.
---@return string dir
function shell.dir() end

---Set the current working directory.
---@param dir string
function shell.setDir(dir) end

---Set the path where programs are located.
---@return string path
function shell.path() end

---Set the current program path.
---@param path string
function shell.setPath(path) end

---Resolve a relative path to an absolute path.
---@param path string
---@return string? absolutePath
function shell.resolve(path) end

---Resolve a program, using the program path and list of aliases.
---@param command string
---@return string? absolutePath
function shell.resolveProgram(command) end

---Return a list of all programs on the path.
---@param hidden? boolean
---@return string[]
function shell.programs(hidden) end

---Complete a shell command line.
---@param line string
---@return string[]?
function shell.complete(line) end

---Complete the name of a program.
---@param program string
---@return string[]
function shell.completeProgram(program) end

---Set the completion function for a program. When the program is entered on the command line, this program will be called to provide auto-complete information.
---@param program string
---@param complete shell.CompletionFunction
function shell.setCompletionFunction(program, complete) end

---Get a table containing all completion functions.
---@return shell.CompletionInfo
function shell.getCompletionInfo() end

---Returns the path to the currently running program.
---@return string absolutePath
function shell.getRunningProgram() end

---Add an alias for a program.
---@param command string
---@param program string
function shell.setAlias(command, program) end

---Remove an alias.
---@param command string
function shell.clearAlias(command) end

---Get the current aliases for this shell.
---@return table<string, string> aliases
function shell.aliases() end

---Open a new multishell tab running a command.
---@vararg string
---@return number id
function shell.openTab(...) end

---Switch to the multishell tab with the given index.
---@param id number
function shell.switchTab(id) end