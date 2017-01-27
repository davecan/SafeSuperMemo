<##############################################################################
SafeSuperMemo Properties

These variables are used by the SafeSuperMemo script and should be 
configured for your environment.

NOTE: The variables MUST have the $ (dollar sign) prefix or it won't work!!

The variables are:

   $dropboxPath       
       The path to your Dropbox.exe file.
       The default is probably right but you should verify it.

   $collectionRootDir
       This is the directory ABOVE the one containing your .kno file.
       Ex: If your .kno file is at:            
               C:\dir1\dir2\mycollection.kno
           then this line should be:  
               $collectionRootDir = C:\dir1\    (include trailing slash!)

   $collectionName
       This is the name of your collection.
       Ex: If your .kno file is named:         
               My Collection.kno
           then this line should be: 
               $collectionName = My Collection

   $backupRootDir
       This is the directory that will contain all of the 
       time-stamped backups.
##############################################################################>

$dropboxPath       = "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"
$collectionRootDir = "C:\Users\David\Dropbox\SuperMemo\Master Collections\"
$collectionName    = "All My Knowledge"
$backupRootDir     = "F:\SuperMemo\Backups\"