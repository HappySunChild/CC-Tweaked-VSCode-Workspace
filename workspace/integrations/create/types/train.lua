---@meta

---@alias create.train.SignalState
---| '"GREEN"'
---| '"YELLOW"'
---| '"RED"'

---@alias create.train.SignalType
---| '"ENTRY_SIGNAL"'
---| '"CROSS_SIGNAL"'

---@alias create.train.InstructionId
---| '"create:destination"' Move to a certain train station. This instruction requires at least `1` condition.
---| '"create:rename"' Change the schedule title. This instruction cannot have conditions.
---| '"create:throttle"' Change the train's throttle. This instruction cannot have conditions.

---@alias create.train.ConditionId
---| '"create:delay"' Wait for a set delay. Can be measured in ticks, seconds or minutes.
---| '"create:time_of_day"' Wait for a time of day, then repeat at a specified interval.
---| '"create:fluid_threshold"' Wait for a certain amount of a specific fluid to be loaded onto the train.
---| '"create:item_threshold"' Wait for a certain amount of a specific item to be loaded onto the train.
---| '"create:redstone_link"' Wait for a redstone link to be powered.
---| '"create:player_count"' Wait for a certain amount of players to be seated on the train.
---| '"create:idle"' Wait for a period of inactivity in loading or unloading the train. Can be measured in ticks, seconds or minutes.
---| '"create:unloaded"' Wait for the chunk the train is in to be unloaded.
---| '"create:powered"' Wait for the station to be powered with a redstone signal.

---@class create.train.ScheduleInstruction
---@field id create.train.InstructionId
---@field data any

---@class create.train.ScheduleCondition
---@field id create.train.ConditionId
---@field data any

---@class create.train.ScheduleEntry
---@field instruction create.train.ScheduleInstruction
---@field conditions? create.train.ScheduleCondition[][]

---@class create.train.Schedule
---@field cyclic boolean
---@field entries create.train.ScheduleEntry[]
