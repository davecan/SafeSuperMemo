<##############################################################################
SafeSuperMemo Properties

These variables are used by the SafeSuperMemo script and should be 
configured for your environment.

NOTE: The variables MUST have the $ (dollar sign) prefix or it won't work!!
##############################################################################>

#
# Leave this enum alone!
#
Enum SyncService { Dropbox; OneDrive }  


#
# $dropboxPath    
#   
# The path to your Dropbox.exe file.
# The default is probably right but you should verify it.
#
$dropboxPath = "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"


#
# $onedrivePath
#
# The path to your OneDrive.exe file.
# The default is probably right but you should verify it.
#
$onedrivePath = Join-Path -Path $env:LOCALAPPDATA -ChildPath Microsoft\OneDrive\OneDrive.exe


#
# $useService
#
# Set this to one of the enum values from SyncService above
#
# If you want to use Dropbox make the line look like this:
#
#    $useService = [SyncService]::Dropbox
#
# If you want to use OneDrive make the line look like this:
#
#    $useService = [SyncService]::OneDrive
#
$useService = [SyncService]::Dropbox


#
# $collectionRootDir
#
# This is the directory ABOVE the one containing your .kno file.
# Ex: If your .kno file is at:            
#         C:\dir1\dir2\mycollection.kno
#     then this line should be:  
#         $collectionRootDir = C:\dir1\    (include trailing slash!)
#
$collectionRootDir = "C:\dir1\"


#
# $collectionName
#
# This is the name of your collection.
# Ex: If your .kno file is named:         
#         My Collection.kno
#     then this line should be: 
#         $collectionName = My Collection
#
$collectionName = "My Collection"


#
# $backupRootDir
#
# This is the directory that will contain all of the 
# time-stamped backups.
#
$backupRootDir = "F:\SuperMemo\Backups\"