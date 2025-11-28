### Aktuelle Windows Version (keep up to date)

[string]$currentWindowsVersion = "25H2"

## Inventory System erstellen mit Arrays

$dbServers   = [System.Collections.ArrayList]@("databaseServer1", "databaseServer2", "databaseServer3")
$fileServers = [System.Collections.ArrayList]@("fileserver1", "fileserver2", "fileserver3")
$DCs         = [System.Collections.ArrayList]@("DC1")

[string]$newServerInput = Read-Host "Enter Servers to be added to the inventory (Comma seperated), or press Enter to skip"

## Remove Whitespace from Input

if ($newServerInput.Trim()){
    $newServer = $newServerInput -split ',' | ForEach-Object { $_.Trim()} | Where-Object { $_ -ne '' }
    foreach($newServer in $newServers) {
        $serverLower = $newServers.ToLower
        if($serverLower -like "*file*"){
            $fileServers.Add($serverLower)
            Write-Host "Added" $serverLower "to FileServers."
        } elseif($serverLower -like "*dc*"){
            $DCs.Add($serverLower)
            Write-Host "Added" $serverLower "to DCServers."
        } elseif ($serverLower -like "*database*"){
            $dbServers.Add($serverLower)
            Write-Host "Added" $serverLower "to DBServers."
        } else {
            Write-Host "Unclassified Name:" $serverLower
        }
    }
}

$DCs







## Inventory Add Abfrage (willst du einen Server hinzufügen?)

## Per PSRemote auf die invetarisierten Server zugreifen

## Installierte Programme auslesen und Programmversionen und in Array speichern

## Installierte Windows Version auslesen und mit momentaner Windows Version vergleichen

## REST API CVE aufrufen (Funktion)



