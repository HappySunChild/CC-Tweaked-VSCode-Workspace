---@meta

---@alias http.Headers table<string, string>

---@class http.Request
---@field url string
---@field method? string
---@field headers? http.Headers
---@field binary? boolean
---@field redirect? boolean
---@field timeout? number

---@class http.WebsocketRequest
---@field url string
---@field headers? http.Headers
---@field timeout? number
