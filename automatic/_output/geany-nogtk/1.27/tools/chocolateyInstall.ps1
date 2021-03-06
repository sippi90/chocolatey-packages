$packageName = 'geany-nogtk'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.geany.org/geany-1.27_nogtk_setup.exe'
$checksum = '83547fadbb796bab0a9ef6e60cb579335fb3a1d2'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"