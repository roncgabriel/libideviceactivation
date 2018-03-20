Param(
  [string]$build
)

Write-Host Changing build number to $build

# Update the build number
(gc .\libideviceactivation.autoconfig).replace('{build}', $build)|sc .\libideviceactivation.out.autoconfig

# Create the NuGet package
Import-Module "C:\Program Files (x86)\Outercurve Foundation\modules\CoApp"
Write-NuGetPackage .\libideviceactivation.out.autoconfig