﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.4kdownload.com/app/4kvideodownloader_4.9.2.msi?source=chocolatey'
$url64      = 'https://dl.4kdownload.com/app/4kvideodownloader_4.9.2_x64.msi?source=chocolatey'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = '4K Video Downloader*'

  checksum      = 'b01d6a1418232dcdd2fd755f4c61a2a77fb4d15c658d791fdf30b841fadea3d7'
  checksumType  = 'sha256'
  checksum64    = '5c2f22789e26ff10a754c2e59a6bb1632703f13c1ac3ebc7f009807d6524e7b5'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
