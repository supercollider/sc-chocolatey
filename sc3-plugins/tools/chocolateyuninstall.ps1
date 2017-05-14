$installPath = $env:LOCALAPPDATA + '\SuperCollider\Extensions\SC3plugins'
if(Test-Path -Path $installPath){
    Remove-Item $installPath -Force -Recurse
}
