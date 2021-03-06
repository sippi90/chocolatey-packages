$packageName = 'folderchangesview'
$url = 'http://www.nirsoft.net/utils/folderchangesview.zip'
$checksum = '69deba52d765916fe8ca82feac90f936b3b2b0a00f6ae42fb49e3a83a66962c2'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null