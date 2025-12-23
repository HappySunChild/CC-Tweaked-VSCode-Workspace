---@meta

---@alias fs.FileMode
---| '"r"'
---| '"w"'
---| '"a"'
---| '"rb"'
---| '"wb"'
---| '"ab"'

---@alias fs.SeekWhence
---| '"set"'
---| '"cur"'
---| '"end"'

---@class fs.Attributes
---@field size integer
---@field isDir boolean
---@field isReadOnly boolean
---@field created number
---@field modified number
