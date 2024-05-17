﻿$ErrorActionPreference = 'Stop';
$toolsDir              = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    FilePath   = 'plugin.validation.dns.route53.v2.2.9.1680.zip'
}

Uninstall-ChocolateyZipPackage -PackageName $env:ChocolateyPackageName -ZipFileName $packageArgs.FilePath
