$oldPath = (Get-ItemProperty "HKLM:\System\CurrentControlSet\Control\Session Manager\Environment" -Name PSModulePath).PSModulePath

$newPath = $oldPath.Replace(";C:\Program Files\WindowsPowerShell\Modules;",";")
$newPath = $newPath.Replace(";C:\Program Files\WindowsPowerShell\Modules\;",";")

"test" >> c:\packages\test.log

Set-ItemProperty "HKLM:\System\CurrentControlSet\Control\Session Manager\Environment" -Name PSModulePath -Value $newPath