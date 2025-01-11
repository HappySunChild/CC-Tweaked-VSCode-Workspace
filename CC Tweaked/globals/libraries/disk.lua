---@meta

---@class Libraries.disk
disk = {}

---Checks whether any item at all is in the disk drive
---@param name peripheral.Name
---@return boolean present
function disk.isPresent(name) end

---Get the label of the floppy disk, record, or other media within the given disk drive.
---@param name peripheral.Name
---@return string? name
function disk.getLabel(name) end

---Set the label of the floppy disk or other media.
---@param name peripheral.Name
---@param label? string
function disk.setLabel(name, label) end

---Check whether the current disk provides a mount.
---This will return true for disks and computers, but not records.
---@param name peripheral.Name
---@return boolean hasMount
function disk.hasData(name) end

---Find the directory name on the local computer where the contents of the current floppy disk (or other mount) can be found.
---@param name peripheral.Name
---@return string? directory
function disk.getMountPath(name) end

---Whether the current disk is a music disk as opposed to a floppy disk or other item.
---@param name peripheral.Name
---@return boolean hasAudio
function disk.hasAudio(name) end

---Get the title of the audio track from the music record in the drive.
---@param name peripheral.Name
---@return string|false|nil title
function disk.getAudioTitle(name) end

---Starts playing the music record in the drive.
---@param name peripheral.Name
function disk.playAudio(name) end

---Stops the music record in the drive from playing, if it was started with disk.playAudio.
---@param name peripheral.Name
function disk.stopAudio(name) end

---Ejects any item currently in the drive, (commedically) spilling it into the world as a loose item.
---@param name peripheral.Name
function disk.eject(name) end

---Returns a number which uniquely identifies the disk in the drive.
---@param name peripheral.Name
---@return string? id
function disk.getID(name) end