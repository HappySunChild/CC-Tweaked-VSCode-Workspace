---@meta

---@alias fs.Handle fs.ReadHandler|fs.WriteHandler

---@alias fs.FileMode
---| 'r'
---| 'w'
---| 'a'
---| 'rb'
---| 'wb'
---| 'ab'

---@class fs.FileAttributes
---@field size integer
---@field isDir boolean
---@field isReadOnly boolean
---@field created number
---@field modified number