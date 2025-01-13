---@meta

---@alias fs.FileHandle fs.WriteHandle|fs.ReadHandle

---@alias fs.fileMode
---| '"r"'
---| '"w"'
---| '"a"'
---| '"rb"'
---| '"wb"'
---| '"ab"'

---@alias fs.seekWhence
---| '"set"'
---| '"cur"'
---| '"end"'

---@class fs.attributes
---@field size integer
---@field isDir boolean
---@field isReadOnly boolean
---@field created number
---@field modified number