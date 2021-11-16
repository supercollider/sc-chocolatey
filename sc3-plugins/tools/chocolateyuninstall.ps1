$scExtensionsPath = $env:LOCALAPPDATA + '\SuperCollider\Extensions'
$scPluginsPath = $scExtensionsPath + '\SC3plugins'

Write-Host 'Checking for path' $scPluginsPath

if(Test-Path -Path $scPluginsPath){
    Write-Host 'Removing ' $scPluginsPath
    Remove-Item $scPluginsPath -force -recurse
}
