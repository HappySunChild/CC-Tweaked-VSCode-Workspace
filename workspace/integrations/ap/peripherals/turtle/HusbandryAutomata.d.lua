---@meta

---@class ap.peripheral.turtle.HusbandryAutomata : ap.peripheral.turtle.WeakAutomata
local HusbandryAutomata = {
	---Tries to use the currently selected item on the animal in front of the turtle.
	---Returns true and the interaction result as a string if the operation succeeded, or nil and an error message if the operation failed.
	---@return true? success
	---@return string? message
	useOnAnimal = function() end,

	---Returns information about the animal that is in front of the turtle, or nil and an error message if the operation failed.
	---@return table? info
	---@return string? err_message
	inspectAnimal = function() end,

	---Returns a list of the animals around the turtle, or nil and an error message if the operation failed.
	---@return table? animals
	---@return string? err_message
	searchAnimals = function() end,

	---If an animal is in front of the turtle, that animal will be captured and stored in the turtle.
	---Returns true if an animal is captured, or nil and an error message if the operation failed.
	---@return true? success
	---@return string? err_message
	captureAnimal = function() end,

	---Releases the animal currently stored in the turtle.
	---Returns true if animal is released, or nil and an error message if the operation failed.
	---@return true? success
	---@return string? err_message
	releaseAnimal = function() end,

	---Returns a table of information about the stored animal, or nil and an error message if the operation failed.
	---@return table? info
	---@return string? err_message
	getCapturedAnimal = function() end,
}
