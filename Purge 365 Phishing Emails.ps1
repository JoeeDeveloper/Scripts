#NOT A SCRIPT, JUST INSTRUCTIONS - RUN ONE BY ONE BY COPY AND PASTING
#Link to website incase you want to view in GUI
https://compliance.microsoft.com/contentsearchv2?viewid=search

#Open powershell, run these two commands
Import-Module ExchangeOnlineManagement
Connect-IPPSSession -UserPrincipalName USERNAME

#Creates search based on parameters - replace NAME!
New-ComplianceSearch `
-Name NAME `
-ExchangeLocation All `
-ContentMatchQuery 'subject:"QUICK RESPONSE" AND from:"example1@gmail.com"'

#Starts search - replace NAME!
Start-ComplianceSearch -Identity NAME

#Get status of search - replace NAME!
Get-ComplianceSearch -Identity NAME 

#Once complete - Show Result - replace NAME!
Get-ComplianceSearch -Identity NAME | Format-List *

#Initiate delete | HardDelete/SoftDelete - replace NAME!
New-ComplianceSearchAction -SearchName NAME -Purge -PurgeType HardDelete

#Get status of purge - replace NAME with NAME_Purge!
Get-ComplianceSearchAction -Identity NAME_Purge

#Once complete - Show Result - replace NAME with NAME_Purge!
Get-ComplianceSearchAction -Identity 18012023Phishing_Purge | Format-List -Property Results