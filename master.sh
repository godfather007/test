#!/bin/bash
current_path=$(pwd)
parent_path=$(dirname "$current_path")
final_path="$parent_path/scripts/helpers"
HELPER_SCRIPTS=$final_path
export HELPER_SCRIPTS
export DEBIAN_FRONTEND=noninteractive
# echo "Starting configure-apt-mock.sh"
# ../scripts/build/configure-apt-mock.sh
# echo "Ending configure-apt-mock.sh"
# echo "Starting install-ms-repos.sh"
# ../scripts/build/install-ms-repos.sh
# echo "Ending install-ms-repos.sh"
# echo "Starting configure-apt-sources.sh"
# ../scripts/build/configure-apt-sources.sh
# echo "Ending configure-apt-sources.sh"
# echo "Starting configure-apt.sh"
# ../scripts/build/configure-apt.sh
# echo "Ending configure-apt.sh"
# echo "Starting configure-limits.sh"
# ../scripts/build/configure-limits.sh
# echo "Ending configure-limits.sh"
# echo "Starting configure-image-data.sh"
# ../scripts/build/configure-image-data.sh
# echo "Ending configure-image-data.sh"
echo "Starting configure-environment.sh"
../scripts/build/configure-environment.sh
# echo "Ending configure-environment.sh"
# echo "Starting install-apt-vital.sh"
# ../scripts/build/install-apt-vital.sh
# echo "Ending install-apt-vital.sh"
# echo "Starting install-powershell.sh"
# ../scripts/build/install-powershell.sh
# echo "Ending install-powershell.sh"


# echo "Starting install-actions-cache.sh"
# ../scripts/build/install-actions-cache.sh
# echo "Ending install-actions-cache.sh"
# echo "Starting install-runner-package.sh"
# ../scripts/build/install-runner-package.sh
# echo "Ending install-runner-package.sh"
# echo "Starting install-apt-common.sh"
# ../scripts/build/install-apt-common.sh
# echo "Ending install-apt-common.sh"
# echo "Starting install-azcopy.sh"
# ../scripts/build/install-azcopy.sh
# echo "Ending install-azcopy.sh"
# echo "Starting install-azure-cli.sh"
# ../scripts/build/install-azure-cli.sh
# echo "Ending install-azure-cli.sh"
# echo "Starting install-azure-devops-cli.sh"
# ../scripts/build/install-azure-devops-cli.sh
# echo "Ending install-azure-devops-cli.sh"
# echo "Starting install-bicep.sh"
# ../scripts/build/install-bicep.sh
# echo "Ending install-bicep.sh"
# echo "Starting install-aliyun-cli.sh"
# ../scripts/build/install-aliyun-cli.sh
# echo "Ending install-aliyun-cli.sh"
# echo "Starting install-apache.sh"
# ../scripts/build/install-apache.sh
# echo "Ending install-apache.sh"
# echo "Starting install-aws-tools.sh"
# ../scripts/build/install-aws-tools.sh
# echo "Ending install-aws-tools.sh"
# echo "Starting install-clang.sh"
# ../scripts/build/install-clang.sh
# echo "Ending install-clang.sh"
# echo "Starting install-swift.sh"
# ../scripts/build/install-swift.sh
# echo "Ending install-swift.sh"
# echo "Starting install-cmake.sh"
# ../scripts/build/install-cmake.sh
# echo "Ending install-cmake.sh"
# echo "Starting install-codeql-bundle.sh"
# ../scripts/build/install-codeql-bundle.sh
# echo "Ending install-codeql-bundle.sh"
# echo "Starting install-container-tools.sh"
# ../scripts/build/install-container-tools.sh
# echo "Ending install-container-tools.sh"
# echo "Starting nstall-dotnetcore-sdk.sh"
# ../scripts/build/install-dotnetcore-sdk.sh
# echo "Ending nstall-dotnetcore-sdk.sh"
# echo "Starting install-firefox.sh"
# ../scripts/build/install-firefox.sh
# echo "Ending install-firefox.sh"
# echo "Starting install-microsoft-edge.sh"
# ../scripts/build/install-microsoft-edge.sh
# echo "Ending install-microsoft-edge.sh"
# echo "Starting install-gcc-compilers.sh"
# ../scripts/build/install-gcc-compilers.sh
# echo "Ending install-gcc-compilers.sh"
# echo "Starting install-gfortran.sh"
# ../scripts/build/install-gfortran.sh
# echo "Ending install-gfortran.sh"
# echo "Starting install-git.sh"
# ../scripts/build/install-git.sh
# echo "Ending install-git.sh"
# echo "Starting install-git-lfs.sh"
# ../scripts/build/install-git-lfs.sh
# echo "Ending install-git-lfs.sh"
# echo "Starting install-github-cli.sh"
# ../scripts/build/install-github-cli.sh
# echo "Ending install-github-cli.sh"
# echo "Starting install-google-chrome.sh"
# ../scripts/build/install-google-chrome.sh
# echo "Ending install-google-chrome.sh"
# echo "Starting install-google-cloud-cli.sh"
# ../scripts/build/install-google-cloud-cli.sh
# echo "Ending install-google-cloud-cli.sh"
# echo "Starting install-haskell.sh"
# ../scripts/build/install-haskell.sh
# echo "Ending install-haskell.sh"
# echo "Starting nstall-heroku.sh"
# ../scripts/build/install-heroku.sh
# echo "Ending nstall-heroku.sh"
# echo "Starting install-java-tools.sh"
# ../scripts/build/install-java-tools.sh
# echo "Ending install-java-tools.sh"
# echo "Starting install-kubernetes-tools.sh"
# ../scripts/build/install-kubernetes-tools.sh
# echo "Ending install-kubernetes-tools.sh"
# echo "Starting install-oc-cli.sh"
# ../scripts/build/install-oc-cli.sh
# echo "Ending install-oc-cli.sh"
# echo "Starting install-leiningen.sh"
# ../scripts/build/install-leiningen.sh
# echo "Ending install-leiningen.sh"
# echo "Starting install-miniconda.sh"
# ../scripts/build/install-miniconda.sh
# echo "Ending install-miniconda.sh"
# echo "Starting install-mono.sh"
# ../scripts/build/install-mono.sh
# echo "Ending install-mono.sh"
# echo "Starting install-kotlin.sh"
# ../scripts/build/install-kotlin.sh
# echo "Ending install-kotlin.sh"
# echo "Starting install-mysql.sh"
# ../scripts/build/install-mysql.sh
# echo "Ending install-mysql.sh"
# echo "Starting install-mssql-tools.sh"
# ../scripts/build/install-mssql-tools.sh
# echo "Ending install-mssql-tools.sh"
# echo "Starting install-sqlpackage.sh"
# ../scripts/build/install-sqlpackage.sh
# echo "Ending install-sqlpackage.sh"
# echo "Starting install-nginx.sh"
# ../scripts/build/install-nginx.sh
# echo "Ending install-nginx.sh"
# echo "Starting install-nvm.sh"
# ../scripts/build/install-nvm.sh
# echo "Ending install-nvm.sh"
# echo "Starting install-nodejs.sh"
# ../scripts/build/install-nodejs.sh
# echo "Ending install-nodejs.sh"
# echo "Starting install-bazel.sh"
# ../scripts/build/install-bazel.sh
# echo "Ending install-bazel.sh"
# echo "Starting install-oras-cli.sh"
# ../scripts/build/install-oras-cli.sh
# echo "Ending install-oras-cli.sh"
# echo "Starting install-php.sh"
# ../scripts/build/install-php.sh
# echo "Ending install-php.sh"
# echo "Starting install-postgresql.sh"
# ../scripts/build/install-postgresql.sh
# echo "Ending install-postgresql.sh"
# echo "Starting install-pulumi.sh"
# ../scripts/build/install-pulumi.sh
# echo "Ending install-pulumi.sh"
# echo "Starting install-ruby.sh"
# ../scripts/build/install-ruby.sh
# echo "Ending install-ruby.sh"
# echo "Starting install-rlang.sh"
# ../scripts/build/install-rlang.sh
# echo "Ending install-rlang.sh"
# echo "Starting install-rust.sh"
# ../scripts/build/install-rust.sh
# echo "Ending install-rust.sh"
# echo "Starting install-julia.sh"
# ../scripts/build/install-julia.sh
# echo "Ending install-julia.sh"
# echo "Starting install-sbt.sh"
# ../scripts/build/install-sbt.sh
# echo "Ending install-sbt.sh"
# echo "Starting install-selenium.sh"
# ../scripts/build/install-selenium.sh
# echo "Ending install-selenium.sh"
# echo "Starting install-terraform.sh"
# ../scripts/build/install-terraform.sh
# echo "Ending install-terraform.sh"
# echo "Starting install-packer.sh"
# ../scripts/build/install-packer.sh
# echo "Ending install-packer.sh"
# echo "Starting install-vcpkg.sh"
# ../scripts/build/install-vcpkg.sh
# echo "Ending install-vcpkg.sh"
# echo "Starting configure-dpkg.sh"
# ../scripts/build/configure-dpkg.sh
# echo "Ending configure-dpkg.sh"
# echo "Starting install-yq.sh"
# ../scripts/build/install-yq.sh
# echo "Ending install-yq.sh"
# echo "Starting install-android-sdk.sh"
# ../scripts/build/install-android-sdk.sh
# echo "Ending install-android-sdk.sh"
# echo "Starting install-pypy.sh"
# ../scripts/build/install-pypy.sh
# echo "Ending install-pypy.sh"
# echo "Starting install-python.sh"
# ../scripts/build/install-python.sh
# echo "Ending install-python.sh"
# echo "Starting install-zstd.sh"
# ../scripts/build/install-zstd.sh
# echo "Ending install-zstd.sh"
# echo "Starting install-docker.sh"
# ../scripts/build/install-docker.sh
# echo "Ending install-docker.sh"
# echo "Starting install-pipx-packages.sh"
# ../scripts/build/install-pipx-packages.sh
# echo "Ending install-pipx-packages.sh"
# echo "Starting install-homebrew.sh"
# ../scripts/build/install-homebrew.sh
# echo "Ending install-homebrew.sh"
# echo "Starting configure-snap.sh"
# ../scripts/build/configure-snap.sh
# echo "Ending configure-snap.sh"
# echo "Starting cleanup.sh"
# ../scripts/build/cleanup.sh
# echo "Ending cleanup.sh"
# echo "Starting configure-system.sh"
# ../scripts/build/configure-system.sh
# echo "Ending configure-system.sh"
