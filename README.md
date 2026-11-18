# Microsoft 365 User Audit

## Overview
A PowerShell-based tool that retrieves Microsoft 365 user account information using Microsoft Graph and generates an audit report.

## Features
- Connects to Microsoft Graph using delegated authentication.
- Retrieves Microsoft 365 user account information.
- Checks user account status.
- Collects display names, email addresses, job titles and account creation dates.
- Exports user audit information into a CSV report.

## Technologies
- PowerShell 7
- Microsoft Graph PowerShell SDK
- Microsoft Entra ID
- Microsoft 365
- CSV reporting

## Requirements
- PowerShell 7 or later.
- Microsoft Graph PowerShell SDK.
- Appropriate Microsoft Graph delegated permissions (`User.Read.All`).

## How to Run

1. Download or clone this repository.
2. Open PowerShell 7.
3. Navigate to the project folder.
4. Install the required Microsoft Graph module if it is not already installed:

```powershell
Install-Module Microsoft.Graph.Users -Scope CurrentUser
```

5. Open `M365UserAudit.ps1` and configure your own test tenant ID.
6. Run the script:

```powershell
.\M365UserAudit.ps1
```

7. Complete the device authentication process when prompted.

The audit report will be exported as `M365UserAudit.csv` in the project folder.

## Purpose
This project was developed as a practical learning exercise to build experience with Microsoft Graph, Entra ID, PowerShell automation and Microsoft 365 user administration.