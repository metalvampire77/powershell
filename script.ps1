$result = Get-Process | Where-Object { $_.WorkingSet -gt 100MB } | Sort-Object CPU -Descending
Write-Host "Processes with Working Set > 100MB, sorted by CPU usage:"
foreach($item in $result){
    Write-Host $item
}
Write-Host "Type of result variable: $($result.GetType())"
