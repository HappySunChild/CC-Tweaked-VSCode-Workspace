---@meta

---@alias shell.CompletionFunction fun(shell: table, index: number, argument: string, previous: string[]): string[]?

---@class shell.CompletionInfo
---@field fnComplete shell.CompletionFunction