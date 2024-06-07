param([int]$minutes=240)  # input param, 240 minutes if no value provided

$wsh = New-Object -ComObject WScript.Shell
$a = Get-Date # Current time
$b = $a.AddMinutes($minutes) # Target time

while ($a -lt $b) {
# Send Shift+F15    
$wsh.SendKeys('+{F15}')
    Start-Sleep -seconds 240  # sleep for 4 minutes
    $a = Get-Date
}
