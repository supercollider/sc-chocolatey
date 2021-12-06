$ErrorActionPreference = 'Stop'; 

$packageName= 'supercollider'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/supercollider/supercollider/releases/download/Version-3.12.1/SuperCollider-3.12.1_Release-x86-VS-b678713.exe' 
$url64      = 'https://github.com/supercollider/supercollider/releases/download/Version-3.12.1/SuperCollider-3.12.1_Release-x64-VS-b678713.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SuperCollider Version 3.12.1'

  checksum      = 'ce46fb916cc80b2608df67b6898ebb730fc9c4ca8299a073bdbaccf50244c06b'
  checksumType  = 'sha256' 
  checksum64    = '2b08130a4f9e760df7c3a7e91aa5ff05e6c2930d95e7f1d2997d5aa3dcb95da7'
  checksumType64= 'sha256' 

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs 
