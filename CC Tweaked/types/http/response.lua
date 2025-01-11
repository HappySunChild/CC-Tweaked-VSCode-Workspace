---@meta

---@class http.Response : fs.ReadHandler
local Response = {}

---Returns the response code and response message returned by the server.
---@return number code
---@return string message
function Response.getResponseCode() end

---Get a table containing the response's headers, in a format similar to that required by http.request. If multiple headers are sent with the same name, they will be combined with a comma.
---@return http.Headers
function Response.getResponseHeaders() end