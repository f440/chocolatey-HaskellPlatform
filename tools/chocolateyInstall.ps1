$packageName = 'Haskell Platform'
$installerType = 'EXE'
$url = 'https://haskell.org/platform/download/7.10.2/HaskellPlatform-7.10.2-a-i386-setup.exe'
$url64 = 'https://haskell.org/platform/download/7.10.2/HaskellPlatform-7.10.2-a-x86_64-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0, 2)

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes

  checksum = '8c1a2e116e3a3b00857901bfd4f98b47c1ed07b562c438428d0e75a480b8d2f5'
  checksumType = 'sha256'
  checksum64 = 'acfd8144a090c1fa17dc5d9e564355ffdb159012ab0550a012abaacb4a1d58fa'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes
