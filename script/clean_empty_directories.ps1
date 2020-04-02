ECHO "Clearing all empty subdirectories..."
Get-ChildItem -recurse | Where {$_.PSIsContainer -and `
@(Get-ChildItem -Force -Lit $_.Fullname -r | Where {!$_.PSIsContainer}).Length -eq 0} |
Remove-Item -recurse -Confirm