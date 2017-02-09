## Overview

This script is designed to wrap execution of SuperMemo so that it can be safely maintained in a cloud-based file synchronization folder on your computer. Currently it supports Dropbox and OneDrive.

*Note: Since I use Dropbox the OneDrive support has only minimal testing, but it worked fine. If you use the OneDrive support please let me know if it works well for you.*

Storing your collection in a location that is synchronized while SuperMemo is running can result in catastrophic collection corruption if the service is not disabled first. This script handles all of that and also pre-emptively backs up your collection to another location of your choice.

[Announcement on SuperMemopedia](http://supermemopedia.com/wiki/SafeSuperMemo_PowerShell_script_for_Dropbox_with_automated_backups)

### What about the Dropbox Conflict Resolver? 

There's absolutely nothing wrong with the AutoHotKey-based Dropbox Conflict Resolver available on the SuperMemopedia site. It's a perfectly fine tool. If you like it and want to keep using it please feel free. It's been in use for years. Of course, it only supports Dropbox, but in theory it could be modified to support OneDrive as well.

SafeSuperMemo takes the same idea and extends it by adding an automated file backup of your collection. Since it is written in PowerShell it also eliminates the dependency on AutoHotKey, and significantly expands the possibilities of what features can be added.

What it does:

* Stops the sync service (Dropbox or OneDrive) so it doesn't interfere with SuperMemo file management. If not shut down it can cause catastrophic corruption of your collection.

* Makes a backup to the location of your choice with a timestamped prefix in the folder name. Ex: If your collection is named *All My Knowledge* the backup may be *20170126T195859 - All My Knowledge* etc.

* Basic backup verification by comparing the number of files and folders in the backup and the master collection stored in Dropbox (or OneDrive). If the counts do not match the script terminates with an error. This will take a few seconds. File size verification is more thorough but takes far longer, so it is not used.

* Opens the collection for use.

* Once SuperMemo is closed, it restarts the sync service (Dropbox or OneDrive) and then reports the number of backups you currently have in your backup location.

To use, just create a shortcut to Powershell and pass it the path to the `.ps1` file. Place the shortcut on your desktop or taskbar.
  
The script and its associated properties file are both thoroughly documented. See them for more details. Be sure to check the warnings.

### Caveat Emptor

I've used this personally over 150 times without incident, including recovering from backup copies a few times. But just because I never encountered an issue with it doesn't guarantee you won't. Therefore your use of this must be at your own risk. Be sure to check the warnings in the script documentation. **You are responsible for the integrity of your collection!**

### Platforms

The script has been used extensively on Windows 10. It should run under previous versions of Windows that support PowerShell. 

### License

SafeSuperMemo is distributed under the terms of the MIT license.
