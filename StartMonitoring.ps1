
    $watcher = New-Object System.IO.FileSystemWatcher
    $watcher.Path = "C:\Users\P2190101\Desktop\NK Personal\NK Study\UNCC\6190 - Cloud Computing\Terraform\Terraform_Study_Repo"
    $watcher.Filter = "*.*"
    $watcher.IncludeSubdirectories = $true
    $watcher.EnableRaisingEvents = $true  

    $action = {          
                 C:\Users\P2190101\Desktop\NK Personal\NK Study\UNCC\6190 - Cloud Computing\Terraform\Terraform_Study_Repo\Git_Cmd.bat
              }    

    Register-ObjectEvent $watcher "Created" -Action $action
    Register-ObjectEvent $watcher "Changed" -Action $action
    Register-ObjectEvent $watcher "Deleted" -Action $action
    Register-ObjectEvent $watcher "Renamed" -Action $action
    while ($true) {sleep 5}