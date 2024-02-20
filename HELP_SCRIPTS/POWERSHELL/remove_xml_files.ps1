# Navigate to the DATABASE folder
Set-Location -Path "DATABASE" -ErrorAction Stop

# Remove all XML files from the DATABASE folder and its subfolders
Get-ChildItem -Path ".\" -Include "*.xml" -Recurse | Remove-Item -Force -ErrorAction Stop
