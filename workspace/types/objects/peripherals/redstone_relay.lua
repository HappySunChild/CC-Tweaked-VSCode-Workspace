---@meta

---The redstone relay is a peripheral that allows reading and outputting
---redstone signals. While this is not very useful on its own (as computers have
---the same functionality built-in), this can be used with wired modems to
---interact with multiple redstone signals from the same computer.
---
---The peripheral provides largely identical methods to a computer's built-in
---redstone API, allowing setting signals on all six sides of the block
---("top", "bottom", "left", "right", "front" and "back").
---@class peripheral.RedstoneRelay : redstone
local RedstoneRelay = {}