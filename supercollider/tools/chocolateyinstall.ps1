$ErrorActionPreference = 'Stop'; 

$packageName= 'supercollider'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/supercollider/supercollider/releases/download/Version-3.9.3/SuperCollider-3.9.3-Windows-x86-VS.exe' 
$url64      = 'https://github.com/supercollider/supercollider/releases/download/Version-3.9.3/SuperCollider-3.9.3-Windows-x64-VS.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SuperCollider Version 3.9.3'

  checksum      = '7B421B4E5E10231DC4F8EB071D755FCA1F68CD6F445A5BCCC52880C5B705464A'
  checksumType  = 'sha256' 
  checksum64    = 'A92CDAD270DE580C3F0F8BCE499FA642E54BABEF71AB32E64E34FD6A25F300DC'
  checksumType64= 'sha256' 

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs 