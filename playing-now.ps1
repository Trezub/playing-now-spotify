while ($true) {
    $processes = Get-Process spotify
    $title = (Out-String -InputObject $processes.mainWindowTitle) -replace "`n","" -replace "`r",""
    $song = $null
    if (-Not $title.Contains('Spotify')) {
        $song = $title
    }
    $song > ./currentSong.txt
    cls
    Write-Output "Current song: $song"
    Start-Sleep -Seconds 5
}
