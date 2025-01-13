---@meta

---@alias http.headers table<string, string>

---@class http.request
---@field url string
---@field method? string
---@field headers? http.headers
---@field binary? boolean
---@field redirect? boolean
---@field timeout? number

---@class http.websocketRequest
---@field url string
---@field headers? http.headers
---@field timeout? number