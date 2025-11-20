---@meta

---A http response. This provides the same methods as a `file`,
---though provides several request specific methods.
---@class http.Response : fs.ReadHandle
local Response = {}

---Returns the response code and response message returned by the server.
---@return number code The response code (i.e. `200`)
---@return string message The response message (i.e. `"OK"`)
function Response.getResponseCode() end

---Get a table containing the response's headers,
---in a format similar to that required by http.Request.
---
---If multiple headers are sent with the same name, they will be combined with a comma.
---@return string[] headers The response's headers.
function Response.getResponseHeaders() end
