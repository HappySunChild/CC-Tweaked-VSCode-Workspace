---@meta

---Disk drives are a peripheral which allow you to read and write to floppy disks and other "mountable media" (such as computers or turtles). They also allow you to play records.
---@class Peripheral.Drive
local drive = {}

---Returns whether a disk is currently inserted in the drive.
---@return boolean isPresent
function drive.isDiskPresent() end

---Returns the label of the disk in the drive if available.
---@return string? label
function drive.getDiskLabel() end

---Sets or clears the label for a disk.
---@param label? string
function drive.setDiskLabel(label) end

---Returns whether a disk with data is inserted.
---@return boolean hasData
function drive.hasData() end

---Returns the mount path for the inserted disk.
---@return string? path
function drive.getMountPath() end

---Returns whether a disk with audio is inserted.
---@return boolean hasAudio
function drive.hasAudio() end

---Returns the title of the inserted audio disk.
---@return string? title
function drive.getAudioTitle() end

---Plays the audio in the inserted disk, if available.
function drive.playAudio() end

---Stops any audio that may be playing.
function drive.stopAudio() end

---Ejects any disk that may be in the drive.
function drive.ejectDisk() end

---Returns the ID of the disk inserted in the drive.
---@return number? id
function drive.getDiskID() end