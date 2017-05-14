$ErrorActionPreference = 'Stop'; 

$packageName= 'supercollider'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/supercollider/supercollider/releases/download/Version-3.8.0/SuperCollider-3.8.0_Windows_32bits_MW_SuperNova_0947edd.exe' 
$url64      = 'https://github.com/supercollider/supercollider/releases/download/Version-3.8.0/SuperCollider-3.8.0_Windows_64bit_VS_0947edd.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'supercollider*'

  checksum      = '3523342DB879FC0E44413772B908804BD0E56ABAD0E7960E4FF776AE0E0C9E72'
  checksumType  = 'sha256' 
  checksum64    = '304D29BBEE313CE745BC1A2405AECA487BED4169D1DF22D52E3E89A85300569D'
  checksumType64= 'sha256' 

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs 