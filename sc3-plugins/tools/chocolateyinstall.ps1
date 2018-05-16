$ErrorActionPreference = 'Stop'; 

$packageName= 'sc3plugins'
$url        = 'https://github.com/supercollider/sc3-plugins/releases/download/Version-3.9.0/sc3-plugins-3.9.0-Windows-x86-VS.zip' 
$url64      = 'https://github.com/supercollider/sc3-plugins/releases/download/Version-3.9.0/sc3-plugins-3.9.0-Windows-x64-VS.zip' 

$scExtensionsPath = $env:LOCALAPPDATA + '\SuperCollider\Extensions'
$scPluginsPath = $scExtensionsPath + '\SC3plugins'

if(!(Test-Path -Path $scPluginsPath )){

  if (!(Test-Path -Path $scExtensionsPath)){
    Write-Host "Creating " $scExtensionsPath
    New-Item -ItemType directory -Path $scExtensionsPath
  }

  $packageArgs = @{
    packageName   = $packageName
    unzipLocation = $scExtensionsPath
    url           = $url
    url64bit      = $url64

    checksum      = 'E24455DF1B97C3318E47BADE779D8D8F1ACBBC1F1B238E2D20FBF5142548447B'
    checksumType  = 'sha256' 
    checksum64    = '0E192087F69C7C7FAB003B21CDE2FF01EA825FD400446132FF07B6241734DD30'
    checksumType64= 'sha256' 

  }

  Install-ChocolateyZipPackage @packageArgs 
} else {
  Write-Host 'SC3 Plugins are already installed!'
}

