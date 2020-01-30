$fName = Read-Host -Prompt "Please enter your First Name"
$lName = Read-Host -Prompt "Please enter your Last Name"

$today = Get-Date -Format "ddMMyyyy-HHmms"
$longData = Get-Date -Format "F"

Set-Content -Value "First Name: $fName
Last Name: $lName
Date: $longData" -Path "C:\Test\$today-$fName-$lName.txt"