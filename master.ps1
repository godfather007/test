#!/usr/bin/env pwsh
$env:HELPER_SCRIPTS = "/imagegeneration/helpers"      # Replace with the actual path
$env:INSTALLER_SCRIPT_FOLDER = "/imagegeneration/installers" # Replace with the actual path
& "../scripts/build/Install-PowerShellModules.ps1"
& "../scripts/build/Install-PowerShellAzModules.ps1"
