@ECHO "Publishing to NuGet"

del bin\Debug\*.nupkg
msbuild /t:pack
nuget push bin\Debug\AzureAppService.*.nupkg -source https://www.nuget.org