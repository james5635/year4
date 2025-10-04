# ==============================
# Bulk Create AD Users (No OU)
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
    $FirstName       = $User.FirstName
    $LastName        = $User.LastName
    $SamAccountName  = $User.SamAccountName
    $Password        = $User.Password
    $DisplayName     = "$FirstName $LastName"
    $UserPrincipalName = "$SamAccountName@company.local"   # ← change domain to match your environment

    # Check if user already exists
    if (Get-ADUser -Filter { SamAccountName -eq $SamAccountName }) {
        Write-Host "User $SamAccountName already exists. Skipping..." -ForegroundColor Yellow
        continue
    }

    try {
        New-ADUser `
            -GivenName $FirstName `
            -Surname $LastName `
            -Name $DisplayName `
            -SamAccountName $SamAccountName `
            -UserPrincipalName $UserPrincipalName `
            -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) `
            -Enabled $true `
            -ChangePasswordAtLogon $false

        Write-Host "Created user: $SamAccountName" -ForegroundColor Green
    }
    catch {
        Write-Host "Error creating user $SamAccountName : $_" -ForegroundColor Red
    }
}
