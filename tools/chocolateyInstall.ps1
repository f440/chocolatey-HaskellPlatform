$packageName = 'Haskell Platform'
$installerType = 'EXE'
$url = 'http://www.haskell.org/platform/download/2014.2.0.0/HaskellPlatform-2014.2.0.0-i386-setup.exe'
$url64 = 'http://www.haskell.org/platform/download/2014.2.0.0/HaskellPlatform-2014.2.0.0-x86_64-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes