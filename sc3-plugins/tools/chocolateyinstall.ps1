$ErrorActionPreference = 'Stop'; 

$packageName= 'sc3plugins'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/supercollider/sc3-plugins/releases/download/Version-3.8.0/sc3-plugins_Windows_SC3.8_MW-32bit_incl-SuperNova_692f92f.zip' 
$url64      = 'https://github.com/supercollider/sc3-plugins/releases/download/Version-3.8.0/sc3-plugins_Windows_SC3.8_VS-64bit_692f92f.zip' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum      = '7250ECBF05BD61DDAB3D671402D7953A3D9B7C2FCB5285ABC9E57C17B0FA49DA'
  checksumType  = 'sha256' 
  checksum64    = '8571A3876041F25799D20ED685F0B2100EFD54CA92025206D01010B3BB3DE7C2'
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 