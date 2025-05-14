# directory-structure

A PowerShell script designed to build and manage a directory structure from the user's home directory.

---

## Setup
1. **Install** the `.ps1` file and save it somewhere you'll remember.

2. **Open PowerShell and run**: 
   `Get-ExecutionPolicy`

If your policy is **Restricted**, **AllSigned**, or anything that blocks script execution, allow local scripts by running `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`. This lets you run scripts you've downloaded or written.

3. **OPTIONAL**: _If_ you trust this script, unblock it by navigating to where your script is saved running (e.g. `cd C:\Users\YourName\Downloads`). Then, run the command `Unblock-File -Path .\BuildDirectoryStructure.ps1`
  
4. Run the script in one of two ways:
   - Right-click the file and click **Run with PowerShell**
   - **OR**, open PowerShell, navigate to the folder where your script is saved. (e.g. `cd C:\Users\YourName\Downloads`). Then, run the command `.\BuildDirectoryStructure.ps1`

5. Follow the prompts provided by the script to create your directories or directory structures.
