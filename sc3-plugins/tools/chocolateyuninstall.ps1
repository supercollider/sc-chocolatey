$extensionsPath = $env:LOCALAPPDATA + '\SuperCollider\Extensions'
$pluginsPath = $extensionsPath + '\SC3plugins'

Write-Host 'Checking for path' $pluginsPath

if(Test-Path -Path $pluginsPath){
    Write-Host 'Removing ' $pluginsPath
    Remove-Item $pluginsPath -force -recurse
}