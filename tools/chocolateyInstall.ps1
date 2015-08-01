$packageName = 'Haskell Platform'
$installerType = 'EXE'
$url = 'https://www.haskell.org/platform/download/7.10.2/HaskellPlatform-7.10.2-i386-setup.exe'
$url64 = 'https://www.haskell.org/platform/download/7.10.2/HaskellPlatform-7.10.2-x86_64-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0, 2)

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes

  checksum      = '16c2474e11305aab0361a18cd5f7a22f'
  checksumType  = 'md5'
  checksum64    = '7497c6e977879f0e145765a8afbc603a'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes
