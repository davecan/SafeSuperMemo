# Overview

This script is designed to wrap execution of SuperMemo so that it can be safely maintained in Dropbox.

# What about the Dropbox Conflict Resolver? 

SafeSuperMemo takes the idea of the AutoHotKey-based Dropbox Conflict Resolver available on the SuperMemopedia site and extends it by adding a basic automated
collection backup capability. Since it is PowerShell it eliminates the dependency on AutoHotKey.

What it does:

* Stops the Dropbox service, so it doesn't interfere with SuperMemo file management. If not shut down it can cause catastrophic corruption of your collection.

* Makes a backup to the location of your choice with a timestamped prefix in the folder name. Ex: If your collection is named *All My Knowledge* the backup may be *20170126T195859 - All My Knowledge* etc.

* Basic backup verification by comparing the number of files and folders in the backup and the master collection stored in Dropbox. If the counts do not match the script terminates with an error. This will take a few seconds. File size verification is more thorough but takes far longer, so it is not used.

* Opens the collection for use.

* Once SuperMemo is closed, it restarts Dropbox and then reports the number of backups you currently have in your backup location.

To use, just create a shortcut to Powershell and pass it the path to the `.ps1` file. Place the shortcut on your desktop or taskbar.
  
The script and its associated properties file are both thoroughly documented. See them for more details. Be sure to check the warnings.

# License

SafeSuperMemo is distributed under the terms of the MIT license.