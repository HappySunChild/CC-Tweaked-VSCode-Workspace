---@meta

---@alias cc.types.http.Headers table<string, string>

---@class cc.types.http.Request
---@field url string
---@field method? string
---@field headers? cc.types.http.Headers
---@field binary? boolean
---@field redirect? boolean
---@field timeout? number

---@class cc.types.http.WebsocketRequest
---@field url string
---@field headers? cc.types.http.Headers
---@field timeout? number
