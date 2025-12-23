---@meta

---@alias create.logistics.FilterMode
---| '"exact"'
---| '"contained"'
---| '"contains"'

---@alias create.logistics.FilterOperator
---| '">"'
---| '">="'
---| '"<"'
---| '"<="'
---| '"=="'
---| '"~="'
---| '"type"'
---| '"not"'
---| '"any"'
---| '"all"'
---| '"regex"'
---| '"glob"'

---@class create.logistics.craft
---@field count integer
---@field recipe table<integer, string?>

---@class create.logistics.Filter
---@field _op? create.logistics.FilterOperator
---@field _mode? create.logistics.FilterMode
---@field value? create.logistics.Filter | create.logistics.Filter[] | any | any[]

---@class create.logistics.SurfaceFilter
---@field _requestCount? integer
---@field [string] create.logistics.Filter | any

---@alias create.logistics.RequestConfiguration
---| '"allow_partial"'
---| '"strict"'

---@alias create.logistics.PortConfiguration
---| '"send_receive"'
---| '"send"'
