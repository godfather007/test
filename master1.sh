#!/bin/bash

# Get the current directory and determine the parent and final paths
current_path=$(pwd)
parent_path=$(dirname "$current_path")
final_path="$parent_path/scripts/helpers"
HELPER_SCRIPTS=$final_path

# Export necessary environment variables
export HELPER_SCRIPTS
export DEBIAN_FRONTEND=noninteractive

echo "Current path: $current_path"
echo "Parent path: $parent_path"
echo "Final path (HELPER_SCRIPTS): $HELPER_SCRIPTS"

# Run an embedded PowerShell script using a here-document
pwsh -Command - <<EOF
# Access environment variables from Bash
Write-Host "HELPER_SCRIPTS from Bash: \$env:HELPER_SCRIPTS"

# Define script paths as a PowerShell array
\$SCRIPT_PATHS = @(
    "$parent_path/scripts/build/Install-PowerShellModules.ps1"
    "$parent_path/scripts/build/Install-PowerShellAzModules.ps1"
    "$parent_path/scripts/build/install-actions-cache.sh"
)

# Debugging output: List all scripts
Write-Host "Scripts to be executed:"
\$SCRIPT_PATHS | ForEach-Object { Write-Host \$_ }

# Loop through each script path
foreach (\$SCRIPT in \$SCRIPT_PATHS) {
    # Get the file extension
    \$EXT = [System.IO.Path]::GetExtension(\$SCRIPT).TrimStart('.')
    
    # Execute based on the file extension
    if (\$EXT -eq "sh") {
        Write-Host "Executing Bash script: \$SCRIPT"
        try {
            bash "\$SCRIPT"
        } catch {
            Write-Host "Failed to execute Bash script: \$SCRIPT"
            Write-Host \$_
        }
    } elseif (\$EXT -eq "ps1") {
        Write-Host "Executing PowerShell script: \$SCRIPT"
        try {
            pwsh -File "\$SCRIPT"
        } catch {
            Write-Host "Failed to execute PowerShell script: \$SCRIPT"
            Write-Host \$_
        }
    } else {
        Write-Host "Unknown script type: \$SCRIPT"
    }
}
EOF
