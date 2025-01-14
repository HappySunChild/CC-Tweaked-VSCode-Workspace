---@meta

---The speaker peripheral allows your computer to play notes and other sounds.
---@class peripheral.Speaker
local Speaker = {}


---Plays a note block note through the speaker.
---@param instrument peripheral.speaker.instrument The instrument to use to play this note.
---@param volume? number The volume to play the note at, from 0.0 to 3.0. Defaults to 1.0.
---@param pitch? number The pitch to play the note at in semitones, from 0 to 24. Defaults to 12.
---@return boolean success Whether the note could be played as the limit was reached.
function Speaker.playNote(instrument, volume, pitch) end


---Plays a Minecraft sound through the speaker
---@param name string The name of the sound to play.
---@param volume? number number The volume to play the sound at, from 0.0 to 3.0. Defaults to 1.0.
---@param pitch? number The speed to play the sound at, from 0.5 to 2.0. Defaults to 1.0.
---@return boolean success Whether the sound could be played.
function Speaker.playSound(name, volume, pitch) end


---Attempt to stream some audio data to the speaker.
---@param audio number[] A list of amplitudes.
---@param volume? number The volume to play this audio at. If not given, defaults to the previous volume given to playAudio.
---@return boolean success If there was room to accept this audio data.
function Speaker.playAudio(audio, volume) end


---Stop all audio being played by this speaker.
---
---This clears any audio that `playAudio` had queued and stops the latest sound played by `playSound`.
function Speaker.stop() end