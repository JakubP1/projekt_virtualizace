# Connect to vSphere
Connect-VIServer -Server "your_vSphere_server" -User "your_username" -Password "your_password"

# Get the virtual machine object
$vm = Get-VM -Name "your_vm_name"

# Set the start time
$start_time = Get-Date "2023-03-22 08:00:00"

# Set the end time
$end_time = $start_time.AddHours(5)

# Schedule the task to start and stop the VM
New-ScheduledTask -Name "Run VM for 5 hours" -Action {
    Start-VM -VM $vm
    Start-Sleep -Seconds 18000
    if ((Get-VM -Name $vm.Name).ExtensionData.Runtime.PowerState -eq "PoweredOn") {
        Stop-VM -VM $vm -Confirm:$false
        Export-VM -VM $vm -Destination "your_export_destination"
        Set-VM -VM $vm -MemoryMB 512
    }
} -Trigger (New-ScheduledTaskTrigger -Once -At $start_time) -Daily -DaysInterval 1 -EndTime $end_time

# Disconnect from vSphere
Disconnect-VIServer -Server "your_vSphere_server" -Confirm:$false
