$packageName = 'Haskell Platform'
$installerType = 'EXE'
$url = 'http://lambda.haskell.org/platform/download/2012.4.0.0/HaskellPlatform-2012.4.0.0-setup.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes