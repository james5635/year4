# ==============================
# Bulk Remove AD Users from Excel
# ==============================

# Path to Excel file
$ExcelPath = "C:\Users\Administrator\Downloads\Users (5).xlsx"

# Ensure ImportExcel module is installed
if (-not (Get-Module -ListAvailable -Name ImportExcel)) {
    Install-Module -Name ImportExcel -Force -Scope CurrentUser
}

Import-Module ImportExcel

# Import user data from Excel
$Users = Import-Excel -Path $ExcelPath

foreach ($User in $Users) {
    $SamAccountName = $User.SamAccountName

    # Find the user in AD
    $ADUser = Get-ADUser -Filter { SamAccountName -eq $SamAccountName } -ErrorAction SilentlyContinue

    if ($ADUser) {
        try {
            Remove-ADUser -Identity $ADUser -Confirm:$false
            Write-Host "Deleted user: $SamAccountName" -ForegroundColor Green
        }
        catch {
            Write-Host "Error deleting user $SamAccountName : $_" -ForegroundColor Red
        }
    }
    else {
        Write-Host "User $SamAccountName not found. Skipping..." -ForegroundColor Yellow
    }
}
