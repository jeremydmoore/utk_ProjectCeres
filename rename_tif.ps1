# filename: rename_tif.ps1
 # PowerShell script to rename multiple TIFFs within a folder to a name that increments by 1

# ask user for input
 $filename_stub = Read-Host "What is the new filename stub? i.e. 'CRLA_1995' without underscore or index number"

# $variable.ToString("0000") will convert an integer into a string that is zero-padded to 4-spaces
 Dir *.tif | ForEach-Object -begin { $count=1 } -process { rename-item $_ -NewName ($filename_stub + '_' + $count.ToString("0000") + '.tif'); $count++ }
