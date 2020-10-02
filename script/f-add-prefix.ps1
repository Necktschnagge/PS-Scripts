param(
[string]$prefix
)

$action = "Renaming with prefix:  " + $prefix ;
Write-Output $action

Get-ChildItem | ForEach-Object -Process {
    if ($_.Mode -eq "-a----") {
        $new_name = $prefix +$_.Name;
        $single_action = "Renaming: " + $_.Name + " to " + $new_name + "...";
        Write-Output $single_action;
        Move-Item -Path ($_.Name) -Destination ($new_name)
    }
}