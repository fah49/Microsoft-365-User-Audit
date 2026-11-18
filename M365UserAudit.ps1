# Microsoft 365 User Audit
# Retrieves user account information using Microsoft Graph

Import-Module Microsoft.Graph.Users

# Connect to Microsoft Graph

$TenantId = Read-Host "Enter your Microsoft Entra tenant ID or domain""

Connect-MgGraph -TenantId $TenantId -Scopes "User.Read.All" -UseDeviceAuthentication -NoWelcome

# Retrieve all Microsoft 365 users

$Users = Get-MgUser -All -Property "Id,DisplayName,UserPrincipalName,Mail,JobTitle,AccountEnabled,CreatedDateTime"

Write-Host "Successfully retrieved $($Users.Count) user accounts." -ForegroundColor Green
# Prepare user audit report

$UserReport = $Users | Select-Object `
    DisplayName,
    UserPrincipalName,
    Mail,
    JobTitle,
    AccountEnabled,
    CreatedDateTime

# Export user audit report to CSV

$ReportPath = Join-Path $PSScriptRoot "M365UserAudit.csv"

$UserReport | Export-Csv -Path $ReportPath -NoTypeInformation -Encoding utf8

Write-Host "Audit report exported successfully to: $ReportPath" -ForegroundColor Cyan