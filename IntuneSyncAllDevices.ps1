Connect-MSGraph
 
$DevicesToSync = Get-IntuneManagedDevice | Get-MSGraphAllPages | where-object {$_.managementAgent -eq 'mdm'}
 
Foreach ($Device in $DevicesToSync)
{
  
Invoke-IntuneManagedDeviceSyncDevice -managedDeviceId $Device.managedDeviceId
Write-Host "Sending Sync request to Device with Name $($Device.deviceName)" -ForegroundColor Green
  
}
pause