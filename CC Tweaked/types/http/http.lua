---@meta

---@alias http.Headers table<string, string>

---@class http.Request
---@field url string
---@field headers? http.Headers
---@field binary? boolean
---@field method? string
---@field redirect? boolean
---@field timeout? number