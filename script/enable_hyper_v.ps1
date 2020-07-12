#
# Purpose: Using x:={VMWare, Virtual Box} and y:={MS HyperV} on the same computer.
# Use this script to activate the one or the other of {x,y}. After running the script you need to restart your computer!
#
param(
[String]$on_or_off
)
if ($on_or_off -eq "on"){
	bcdedit /set hypervisorlaunchtype auto
	Write-Output "switched Hyper V on"
} else {
	if ($on_or_off -eq "off"){
		bcdedit /set hypervisorlaunchtype off
		Write-Output "switched Hyper V off"
	} else {
		Write-Output "Error: argument should be either on or off!"
	}
}
Write-Output 'On success: Please reboot your system now!'
Write-Host -NoNewLine 'Press any key to close...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
