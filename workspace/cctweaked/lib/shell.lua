---@meta

---The shell API provides access to CraftOS's command line interface.
---It allows you to start programs, add completion for a program, and much more.
---
---<h2 align="center"><a href="https://tweaked.cc/modules/shell.html">Official Documentation</a></h2>
---@class shelllib
local shell = {
	---Run a program with the supplied arguments.
	---
	---Unlike shell.run, each argument is passed to the program verbatim.
	---While `shell.run("echo", "b c")` runs echo with `b` and `c`,
	---`shell.execute("echo", "b c")` runs echo with a single argument `b c`.
	---@param program string The program to execute.
	---@param ... string Arguments to this program.
	---@return boolean success Whether the program exited successfully.
	execute = function(program, ...) end,

	---Run a program with the supplied arguments.
	---
	---All arguments are concatenated together and then parsed as a command line.
	---As a result, `shell.run("program a b")` is the same as `shell.run("program", "a", "b")`.
	---
	---@param ... string The program to run and its arguments.
	---@return boolean success Whether the program exited successfully.
	run = function(...) end,

	---Exit the current shell.
	---
	---This does not terminate your program, it simply makes the shell
	---terminate after your program has finished. If this is the toplevel shell,
	---then the computer will be shutdown.
	exit = function() end,

	---Return the current working directory. This is what is displayed before the `>`
	---of the shell prompt,and is used by shell.resolve to handle relative paths.
	---@return string dir The current working directory.
	dir = function() end,

	---Set the current working directory.
	---@param dir string The new working directory.
	setDir = function(dir) end,

	---Get the path where programs are located.
	---
	---The path is composed of a list of directory names in a string, each separated by a colon (`:`).
	---On normal turtles will look in the current directory (`.`), `/rom/programs` and `/rom/programs/turtle` folder, making the path `.:/rom/programs:/rom/programs/turtle`.
	---@return string path The current shell's path.
	path = function() end,

	---Set the current program path.
	---
	---Be careful to prefix directories with a `/`. Otherwise they will be searched for from the **current directory**, rather than the computer's root.
	---@param path string The new program path.
	setPath = function(path) end,

	---Resolve a relative path to an absolute path.
	---
	---The `fs` and `io` APIs work using absolute paths, and so we must convert any
	---paths relative to the current directory to absolute ones. This does nothing
	---when the path starts with `/`.
	---@param path string The relative path to resolve.
	---@return string path The absolute path.
	resolve = function(path) end,

	---Resolve a program, using the program path and list of aliases.
	---@param command string The name of the program
	---@return string? path The absolute path to the program, or `nil` if it could not be found.
	resolveProgram = function(command) end,

	---Return a list of all programs on the path.
	---@param include_hidden? boolean Include hidden files. Namely, any which start with `.`.
	---@return string[] programs A list of available programs.
	programs = function(include_hidden) end,

	---Complete a shell command line.
	---
	---This accepts an incomplete command, and completes the program name or arguments.
	---For instance, `l` will be completed to `ls`, and `ls ro` will be completed to `ls rom/`.
	---@param sLine string The input to complete.
	---@return string[]? completions The list of possible completions.
	complete = function(sLine) end,

	---Complete the name of a program.
	---@param program string The name of a program to complete.
	---@return string[] completions A list of possible completions.
	completeProgram = function(program) end,

	---Set the completion function for a program. When the program is entered
	---on the command line, this program will be called to provide auto-complete information.
	---
	---The completion function accepts four arguments:
	--- 1. The current shell. As completion functions are inherited, this is not guaranteed to be the shell you registered this function in.
	--- 2. The index of the argument currently being completed.
	--- 3. The current argument. This may be the empty string.
	--- 4. A list of the previous arguments.
	---@param program string The path to the program. This should be an absolute path without the leading `/`.
	---@param complete fun(shell: table, index: number, argument: string, previous: string[]): string[]? The completion function.
	setCompletionFunction = function(program, complete) end,

	---Get a table containing all completion functions.
	---
	---This should only be needed when building custom shells. Use setCompletionFunction to add a completion function.
	---@return table<string, function>
	getCompletionInfo = function() end,

	---Returns the path to the currently running program.
	---@return string path The absolute path to the running program.
	getRunningProgram = function() end,

	---Add an alias for a program.
	---@param alias string The name of the alias to add.
	---@param program string The name or path to the program.
	setAlias = function(alias, program) end,

	---Remove an alias.
	---@param alias string The alias name to remove.
	clearAlias = function(alias) end,

	---Get the current aliases for this shell.
	---@return table<string, string> aliases A table, where the keys are the names of aliases, and the values are the path to the program.
	aliases = function() end,

	---Open a new `multishell` tab running a command.
	---
	---This behaves similarly to shell.run, but instead returns the process index.
	---
	---This function is only available if the `multishell` API is.
	---@param ... string The command line to run.
	---@return number id The process index.
	openTab = function(...) end,

	---Switch to the `multishell` tab with the given index.
	---@param id number The tab to switch to.
	switchTab = function(id) end,
}
