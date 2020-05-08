Param(
[string] $proName
)
Function KillThatProcess([string] $proName){
    
    $processes = Get-Process $proName
    $counter = $processes.Count

    $response = Read-Host(" There are a total of $($processes.Count) processes with the name " + $proName + ". Would you like to proceed? (Y/N)")
    $response = $response.ToLower()

    if($response -ne "y") 
    { 

        Write-Host -ForegroundColor Red -BackgroundColor Yellow "Procedure denied! (No processes were stopped)"

    } else 
    {

        Write-Host -ForegroundColor green -BackgroundColor DarkGreen "Procedure Accepted!"
        $processes | kill

    }
 }

 KillThatProcess($proName)


 Function Bamboozle
 {

    Set-Location -Path C:\Users\vathu_srrla9c\Desktop\Assignment3IT
    $character = [CHAR](Get-Random -Minimum 65 -Maximum 90)
    Write-Host -BackgroundColor Green -ForegroundColor DarkGreen "██████████████████████████
█░░░▒▒▒░░░▒▒▒░░░▒▒▒░░░▒▒▒█
█░░░▒▒▒░░░▒▒▒░░░▒▒▒░░░▒▒▒█
█▒▒▒░░░▒▒▒░░░▒▒▒░░░▒▒▒░░░█
█▒▒▒░░░▒▒▒░░░▒▒▒░░░▒▒▒░░░█
█░░░██████▒▒▒░░░██████▒▒▒█
█░░░██████▒▒▒░░░██████▒▒▒█
█▒▒▒██████░░░▒▒▒██████░░░█
█▒▒▒██████░░░▒▒▒██████░░░█
█░░░▒▒▒░░░██████▒▒▒░░░▒▒▒█
█░░░▒▒▒░░░██████▒▒▒░░░▒▒▒█
█▒▒▒░░░████████████▒▒▒░░░█
█▒▒▒░░░████████████▒▒▒░░░█
█░░░▒▒▒████████████░░░▒▒▒█
█░░░▒▒▒████████████░░░▒▒▒█
█▒▒▒░░░███░░░▒▒▒███▒▒▒░░░█
█▒▒▒░░░███░░░▒▒▒███▒▒▒░░░█
█░░░▒▒▒░░░▒▒▒░░░▒▒▒░░░▒▒▒█
█░░░▒▒▒░░░▒▒▒░░░▒▒▒░░░▒▒▒█
██████████████████████████

TSSSSSSSSSSSSSSSSSSSSSSSSS

A creeper has blew up your system
"
    (New-Object Media.SoundPlayer "$PSScriptRoot\CreeperSound.wav").Play();
    Write-Host "Your randomly selected letter is: $character"
    [string] $fileList = Get-ChildItem -Path C:\Users\vathu_srrla9c\Desktop\* -Include *$character* |Remove-Item -WhatIf
}
Bamboozle