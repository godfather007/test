#!/bin/bash

# Define variables
IMAGE_FOLDER="/imagegeneration"
HELPER_SCRIPTS="/imagegeneration/helpers"
HELPER_SCRIPT_FOLDER="/imagegeneration/helpers"
INSTALLER_SCRIPT_FOLDER="/imagegeneration/installers"
IMAGE_VERSION="dev"
IMAGEDATA_FILE="/imagegeneration/imagedata.json"
IMAGE_OS="ubuntu24"

export INSTALLER_SCRIPT_FOLDER
export HELPER_SCRIPTS
export DEBIAN_FRONTEND=noninteractive
export DOCKERHUB_PULL_IMAGES="NO"
export HELPER_SCRIPT_FOLDER
export IMAGE_VERSION
export IMAGEDATA_FILE
export IMAGE_OS

# Create the directory
sudo mkdir -p "$IMAGE_FOLDER"
sudo mkdir -p "$HELPER_SCRIPTS"
sudo mkdir -p "$INSTALLER_SCRIPT_FOLDER"
# # Set permissions
sudo chmod 777 "$IMAGE_FOLDER"

#-----------------------------------------------------------------------
sudo cp -r "../scripts/helpers"/* "$HELPER_SCRIPTS"

# # Execute each script with sudo
sudo bash ../scripts/build/configure-apt-mock.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/install-ms-repos.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-apt-sources.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND bash ../scripts/build/configure-apt.sh
sudo bash ../scripts/build/configure-limits.sh

# #-----------------------------------------------------------------------------------------------------

sudo cp -r "../scripts/build" "$INSTALLER_SCRIPT_FOLDER"
sudo cp -r "../assets/post-gen" "$IMAGE_FOLDER"
sudo cp -r "../scripts/tests" "$IMAGE_FOLDER"
sudo cp -r "../scripts/docs-gen" "$IMAGE_FOLDER"
sudo cp -r "../../../helpers/software-report-base" "$IMAGE_FOLDER/docs-gen/"
sudo cp "../toolsets/toolset-2404.json" "$INSTALLER_SCRIPT_FOLDER/toolset.json"
sudo mv "$IMAGE_FOLDER/docs-gen" "$IMAGE_FOLDER/SoftwareReport"
sudo mv "$IMAGE_FOLDER/post-gen" "$IMAGE_FOLDER/post-generation"

sudo --preserve-env=IMAGE_VERSION,IMAGEDATA_FILE bash ../scripts/build/configure-image-data.sh
sudo --preserve-env=IMAGE_VERSION,IMAGE_OS,HELPER_SCRIPTS bash ../scripts/build/configure-environment.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-apt-vital.sh
sudo --preserve-env=HELPER_SCRIPTS,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-powershell.sh

powershell_script_path="./master.ps1"
pwsh -File $powershell_script_path

sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-actions-cache.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-runner-package.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-apt-common.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-azcopy.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-azure-cli.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-azure-devops-cli.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-bicep.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-apache.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-aws-tools.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-clang.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-swift.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-cmake.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-codeql-bundle.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-container-tools.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-dotnetcore-sdk.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-microsoft-edge.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-gcc-compilers.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-firefox.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-gfortran.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-git.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-git-lfs.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-github-cli.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-google-chrome.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-google-cloud-cli.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-haskell.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-java-tools.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-kubernetes-tools.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-miniconda.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-kotlin.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-mysql.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-nginx.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-nvm.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-nodejs.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-bazel.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-php.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-postgresql.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-pulumi.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-ruby.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-rust.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-julia.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-selenium.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-packer.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-vcpkg.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/configure-dpkg.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-yq.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-android-sdk.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-pypy.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-python.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-zstd.sh
sudo --preserve-env=HELPER_SCRIPTS,DOCKERHUB_PULL_IMAGES,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-docker.sh

powershell_script_path_="./master1.ps1"
pwsh -File $powershell_script_path_

sudo --preserve-env=HELPER_SCRIPTS,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-pipx-packages.sh
sudo --preserve-env=HELPER_SCRIPTS,DEBIAN_FRONTEND,INSTALLER_SCRIPT_FOLDER bash ../scripts/build/install-homebrew.sh
sudo --preserve-env=HELPER_SCRIPTS bash ../scripts/build/configure-snap.sh
sudo bash ../scripts/build/cleanup.sh

pwsh -File "$IMAGE_FOLDER/SoftwareReport/Generate-SoftwareReport.ps1" -OutputDirectory "$IMAGE_FOLDER"
pwsh -File "$IMAGE_FOLDER/tests/RunAll-Tests.ps1" -OutputDirectory "$IMAGE_FOLDER"

# Copy the file from source to destination
cp "$IMAGE_FOLDER/software-report.md" "../Ubuntu2404-Readme.md"

cp "$IMAGE_FOLDER/software-report.json" "../software-report.json"

sudo --preserve-env=HELPER_SCRIPT_FOLDER,INSTALLER_SCRIPT_FOLDER,IMAGE_FOLDER bash ../scripts/build/configure-system.sh
