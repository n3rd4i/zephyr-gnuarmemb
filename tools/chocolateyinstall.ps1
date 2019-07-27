$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
. "$(Join-Path $toolsDir dependenciesEnv.ps1)"

# https://docs.zephyrproject.org/latest/getting_started/toolchain_3rd_party_x_compilers.html#gnu-arm-embedded
Install-ChocolateyEnvironmentVariable "GNUARMEMB_TOOLCHAIN_PATH" "$GNUARMEMB_TOOLCHAIN_PATH"
Install-ChocolateyEnvironmentVariable "ZEPHYR_TOOLCHAIN_VARIANT" "gnuarmemb"
