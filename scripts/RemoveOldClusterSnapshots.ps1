param ([VMware.VimAutomation.ViCore.Types.V1.Inventory.Cluster] $cluster, [DateTime] $date)

$vms = Get-VM -Location $cluster
foreach ($vm in $vms) {
    $snaphostsToBeRemoved = Get-Snapshot -VM $vm | where { $_.Created -lt $date }
    Remove-Snapshot $snaphostsToBeRemoved -Confirm:$false
}
