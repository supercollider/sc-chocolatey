$ErrorActionPreference = 'Stop'; 

$packageName= 'sc3plugins'
$url        = 'https://github.com/supercollider/sc3-plugins/releases/download/Version-3.11.1/sc3-plugins-3.11.1-Windows-32bit-VS.zip' 
$url64      = 'https://github.com/supercollider/sc3-plugins/releases/download/Version-3.11.1/sc3-plugins-3.11.1-Windows-x64-VS.zip' 

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

    checksum      = '3d2b9d6155ddb8d0bcb1569f3eae1589c8f74251397dbabdf892d2a90bddb4c6'
    checksumType  = 'sha256' 
    checksum64    = '0bff53634b0a6fb49fb5cec0bc38631a428de7efcfc060491d7d0288117c3cea'
    checksumType64= 'sha256' 

  }

  Install-ChocolateyZipPackage @packageArgs 
} else {
  Write-Host 'SC3 Plugins are already installed!'
}

