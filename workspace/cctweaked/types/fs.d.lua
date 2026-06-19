---@meta

---@alias cc.types.fs.FileMode
---| '"r"'
---| '"w"'
---| '"a"'
---| '"rb"'
---| '"wb"'
---| '"ab"'

---@alias cc.types.fs.SeekWhence
---| '"set"'
---| '"cur"'
---| '"end"'

---@class cc.types.fs.Attributes
---@field size integer
---@field isDir boolean
---@field isReadOnly boolean
---@field created number
---@field modified number
