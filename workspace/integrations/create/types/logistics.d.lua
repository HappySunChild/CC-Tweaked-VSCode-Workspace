---@meta

---@alias create.types.logistics.FilterMode
---| '"exact"'
---| '"contained"'
---| '"contains"'

---@alias create.types.logistics.FilterOperator
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

---@class create.types.logistics.Craft
---@field count integer
---@field recipe table<integer, string?>

---@class create.types.logistics.Filter
---@field _op? create.types.logistics.FilterOperator
---@field _mode? create.types.logistics.FilterMode
---@field value? create.types.logistics.Filter | create.types.logistics.Filter[] | any | any[]

---@class create.types.logistics.SurfaceFilter
---@field _requestCount? integer
---@field [string] create.types.logistics.Filter | any

---@alias create.types.logistics.RequestConfiguration
---| '"allow_partial"'
---| '"strict"'

---@alias create.types.logistics.PortConfiguration
---| '"send_receive"'
---| '"send"'
