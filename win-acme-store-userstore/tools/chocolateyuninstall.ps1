﻿$ErrorActionPreference = 'Stop';
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    FilePath   = 'plugin.store.userstore.v2.2.7.1621.zip'
}

Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath
