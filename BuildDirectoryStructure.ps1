# About: This script will prompt the user for a relative pathname (you will be entering either a single directory or a directory
# structure to be created). Then, the directory and/or subdirectories will be created starting from your **HOME** directory.

Clear-Host # Clear screen whenever the script is ran

$directoryExists = $true # Controls the loop and assumes the directory exists

# While the variable above is true, we keep looping (in other words, we keep asking the user for a directory path)
while ($directoryExists) {
    $relativePath  = Read-Host "Enter a **new** relative directory or subdirectory path name"

    $directoryPath = Join-Path $env:USERPROFILE $relativePath

    if (Test-Path -Path $directoryPath) {
        Write-Host "❗️ The directory '$directoryPath' already exists. Please try again." -ForegroundColor Yellow
    } else {
        $directoryExists = $false
    }
}

New-Item -Path $directoryPath -ItemType Directory -Force | Out-Null # Creates directory structure

Get-ChildItem -Path $env:USERPROFILE -Recurse | Where-Object { $_.FullName -match [regex]::Escape($directoryPath) } # Displays directory under the USERPROFILE that matches the specified directory

Write-Host "Your directory structure has been created at $directoryPath. Use 'dir' or 'ls' to confirm it was created." -ForegroundColor Green # Confirmation message indicating its creation