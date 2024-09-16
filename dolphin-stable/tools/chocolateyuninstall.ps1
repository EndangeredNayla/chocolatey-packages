﻿$ErrorActionPreference = 'Stop';
$toolsDir 			   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$dolphinFolder         = (Join-Path ([System.Environment]::GetFolderPath("ProgramFiles")) 'Dolphin')
$exePath               = Join-Path $dolphinFolder  'Dolphin.exe'

Uninstall-BinFile -Name 'Dolphin-Stable' -Path $exepath
