---@meta

---@alias create.types.train.SignalState
---| '"GREEN"'
---| '"YELLOW"'
---| '"RED"'

---@alias create.types.train.SignalType
---| '"ENTRY_SIGNAL"'
---| '"CROSS_SIGNAL"'

---@alias create.types.train.InstructionId
---| '"create:destination"' Move to a certain train station. This instruction requires at least `1` condition.
---| '"create:rename"' Change the schedule title. This instruction cannot have conditions.
---| '"create:throttle"' Change the train's throttle. This instruction cannot have conditions.

---@alias create.types.train.ConditionId
---| '"create:delay"' Wait for a set delay. Can be measured in ticks, seconds or minutes.
---| '"create:time_of_day"' Wait for a time of day, then repeat at a specified interval.
---| '"create:fluid_threshold"' Wait for a certain amount of a specific fluid to be loaded onto the train.
---| '"create:item_threshold"' Wait for a certain amount of a specific item to be loaded onto the train.
---| '"create:redstone_link"' Wait for a redstone link to be powered.
---| '"create:player_count"' Wait for a certain amount of players to be seated on the train.
---| '"create:idle"' Wait for a period of inactivity in loading or unloading the train. Can be measured in ticks, seconds or minutes.
---| '"create:unloaded"' Wait for the chunk the train is in to be unloaded.
---| '"create:powered"' Wait for the station to be powered with a redstone signal.

---@class create.types.train.ScheduleInstruction
---@field id create.types.train.InstructionId
---@field data any

---@class create.types.train.ScheduleCondition
---@field id create.types.train.ConditionId
---@field data any

---@class create.types.train.ScheduleEntry
---@field instruction create.types.train.ScheduleInstruction
---@field conditions create.types.train.ScheduleCondition[][]

---@class create.types.train.Schedule
---@field cyclic boolean
---@field entries create.types.train.ScheduleEntry[]
