$minutes_frequency = Read-Host "mintues between two consecutive beeps? (recommended: 10)"
while (1){
    Write-Output "BEEEEEEEP"
    #beep
    $y= 440.0;
    for($x=0; $x -lt 25; $x++) { 
        [console]::beep($y,300);
        $y = $y * 415.30 / 440;
        Write-Output $y
    }

    Write-Output "----->"
    #wait
    for($i = $minutes_frequency; -not ($i -eq 0); $i--){
        Write-Output $i
        Sleep(60);
    }
    Write-Output "====================================="

}
