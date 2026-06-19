---@meta

---A simple way to run several functions at once.
---
---Functions are not actually executed simultaneously,
---but rather this API will automatically switch between them whenever
---they yield (e.g. whenever they call `coroutine.yield`, or functions that
---call that - such as `os.pullEvent` - or functions that call that, etc - basically,
---anything that causes the function to "pause").
---
---Each function executed in "parallel" gets its own copy of the event queue,
---and so "event consuming" functions (again, mostly anything that causes
---the script to pause - eg os.sleep, rednet.receive, most of the turtle API, etc)
---can safely be used in one without affecting the event queue accessed by the other.
---
---<h2 align="center"><a href="https://tweaked.cc/module/parallel.html">Official Documentation</a></h2>
---@class cc.parallellib
local parallel = {
	---Switches between execution of the functions, until any of them finishes.
	---If any of the functions errors, the message is propagated upwards from the `parallel.waitForAny` call.
	---@param ... function The functions to run in parallel.
	waitForAny = function(...) end,

	---Runs several functions in parallel, until all of them are finished.
	---
	---If any of the functions errors, the other functions are not resumed, and the error is propagated upwards.
	---@param ... fun(spawn: function) The functions to run in parallel.
	waitForAll = function(...) end,
}
