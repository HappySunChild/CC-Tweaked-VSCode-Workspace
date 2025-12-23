---@meta

---Disk drives are a peripheral which allow you to read and write to floppy disks
---and other "mountable media" (such as computers or turtles).
---
---They also allow you to play records.
---@class peripheral.DiskDrive
local DiskDrive = {
	---Returns whether a disk is currently inserted in the drive.
	---@return boolean isPresent Whether a disk is currently inserted in the drive.
	isDiskPresent = function() end,

	---Returns the label of the disk in the drive if available.
	---@return string? label The label of the disk, or nil if either no disk is inserted or the disk doesn't have a label.
	getDiskLabel = function() end,

	---Sets or clears the label for a disk.
	---@param label? string The new label of the disk, or nil to clear.
	setDiskLabel = function(label) end,

	---Returns whether a disk with data is inserted.
	---@return boolean hasData Whether a disk with data is inserted.
	hasData = function() end,

	---Returns whether a disk with audio is inserted.
	---@return boolean hasAudio Whether a disk with audio is inserted.
	hasAudio = function() end,

	---Returns the title of the inserted audio disk.
	---@return string? title The title of the audio, false if no disk is inserted, or nil if the disk has no audio.
	getAudioTitle = function() end,

	---Plays the audio in the inserted disk, if available.
	playAudio = function() end,

	---Stops any audio that may be playing.
	stopAudio = function() end,

	---Ejects any disk that may be in the drive.
	ejectDisk = function() end,

	---Returns the ID of the disk inserted in the drive.
	getDiskID = function() end,

	---Returns the mount path for the inserted disk.
	---@return string? path The mount path for the disk, or nil if no data disk is inserted.
	getMountPath = function() end,
}
