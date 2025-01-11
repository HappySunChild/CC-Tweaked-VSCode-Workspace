---@meta

---@class Libraries.parallel
parallel = {}

---Switches between execution of the functions, until any of them finishes. If any of the functions errors, the message is propagated upwards from the `parallel.waitForAny` call.
---@vararg function
function parallel.waitForAny(...) end

---Switches between execution of the functions, until all of them are finished. If any of the functions errors, the message is propagated upwards from the `parallel.waitForAl`l call.
---@vararg function
function parallel.waitForAll(...) end