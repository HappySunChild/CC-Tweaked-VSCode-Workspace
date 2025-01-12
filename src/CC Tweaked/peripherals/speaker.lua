---@meta

---The speaker peripheral allows your computer to play notes and other sounds.
---@class Peripheral.Speaker
local speaker = {}

---@alias SpeakerInstrument
---| '"harp"'
---| '"basedrum"'
---| '"snare"'
---| '"hat"'
---| '"bass"'
---| '"flute"'
---| '"bell"'
---| '"guitar"'
---| '"chime"'
---| '"xylophone"'
---| '"iron_xylophone"'
---| '"cow_bell"'
---| '"didgeridoo"'
---| '"bit"'
---| '"banjo"'
---| '"pling"'

---Plays a note block note through the speaker.
---@param instrument SpeakerInstrument
---@param volume? number
---@param pitch? number
---@return boolean success
function speaker.playNote(instrument, volume, pitch) end

---Plays a Minecraft sound through the speaker
---@param name string
---@param volume? number
---@param pitch? number
---@return boolean success
function speaker.playSound(name, volume, pitch) end

---Attempt to stream some audio data to the speaker.
---@param audio number[]
---@param volume? number
---@return boolean success
function speaker.playAudio(audio, volume) end

---Stop all audio being played by this speaker.
function speaker.stop() end