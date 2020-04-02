ECHO "This Fussels 'Clear Empty Directories' 1.0"
Get-ChildItem -recurse | Where {$_.PSIsContainer -and `
@(Get-ChildItem -Force -Lit $_.Fullname -r | Where {!$_.PSIsContainer}).Length -eq 0} |
Remove-Item -recurse -Confirm