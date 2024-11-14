#!/bin/bash
current_path=$(pwd)
parent_path=$(dirname "$current_path")
final_path="$parent_path/scripts/helpers"
HELPER_SCRIPTS=$final_path
INSTALLER_SCRIPT_FOLDER="$final_path/installers"
export INSTALLER_SCRIPT_FOLDER
export HELPER_SCRIPTS
export DEBIAN_FRONTEND=noninteractive
#sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-environment.sh
# Use sudo to run an inline script
# sudo bash -c "$(cat ../scripts/build/configure-environment.sh)"

# Execute each script with sudo
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/install-ms-repos.sh
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-apt-sources.sh
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-apt.sh
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-limits.sh
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-image-data.sh
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-environment.sh
# sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/install-apt-vital.sh
sudo --preserve-env=HELPER_SCRIPTS,INSTALLER_SCRIPT_FOLDER,DEBIAN_FRONTEND bash ../scripts/build/install-powershell.sh
