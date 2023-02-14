param ([VMware.VimAutomation.ViCore.Types.V1.Inventory.VirtualMachine[]] $vms, [string] $snapshotName)

foreach ($vm in $vms) {
    New-SnapShot -VM $vm -Name $snapshotName
}
