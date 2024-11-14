#!/usr/bin/env pwsh
$env:HELPER_SCRIPTS = "/imagegeneration/helpers"      # Replace with the actual path
$env:INSTALLER_SCRIPT_FOLDER = "/imagegeneration/installers" # Replace with the actual path
& "../scripts/build/Install-Toolset.ps1"
& "../scripts/build/Configure-Toolset.ps1"
