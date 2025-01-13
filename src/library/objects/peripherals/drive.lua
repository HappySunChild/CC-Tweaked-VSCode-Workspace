---@meta

---Disk drives are a peripheral which allow you to read and write to floppy disks
---and other "mountable media" (such as computers or turtles).
---
---They also allow you to play records.
---@class peripheral.DiskDrive
local DiskDrive = {}


---Returns whether a disk is currently inserted in the drive.
---@return boolean isPresent Whether a disk is currently inserted in the drive.
function DiskDrive.isDiskPresent() end


---Returns the label of the disk in the drive if available.
---@return string? label The label of the disk, or nil if either no disk is inserted or the disk doesn't have a label.
function DiskDrive.getDiskLabel() end


---Sets or clears the label for a disk.
---@param label? string The new label of the disk, or nil to clear.
function DiskDrive.setDiskLabel(label) end


---Returns whether a disk with data is inserted.
---@return boolean hasData Whether a disk with data is inserted.
function DiskDrive.hasData() end


---Returns whether a disk with audio is inserted.
---@return boolean hasAudio Whether a disk with audio is inserted.
function DiskDrive.hasAudio() end


---Returns the title of the inserted audio disk.
---@return string? title The title of the audio, false if no disk is inserted, or nil if the disk has no audio.
function DiskDrive.getAudioTitle() end


---Plays the audio in the inserted disk, if available.
function DiskDrive.playAudio() end


---Stops any audio that may be playing.
function DiskDrive.stopAudio() end


---Ejects any disk that may be in the drive.
function DiskDrive.ejectDisk() end


---Returns the ID of the disk inserted in the drive.
function DiskDrive.getDiskID() end


---Returns the mount path for the inserted disk.
---@return string? path The mount path for the disk, or nil if no data disk is inserted.
function DiskDrive.getMountPath() end

