$fName = Read-Host -Prompt "Please enter your First Name"
$lName = Read-Host -Prompt "Please enter your Last Name"

$today = Get-Date
$fToday = Get-Date -UFormat "%d%m%Y-%H%M%S"

$dirName = 'zTest'
$dirPath = 'c:\' + $dirName
new-item $dirPath -itemtype directory

$fileName = $fToday + '-' + $fName + '_' + $lName + '.txt'
$filePath = $dirPath + '\' + $fileName
New-Item -Path $filePath -ItemType File

$fNameLine = 'First Name: ' + $fName
$lNameLine = 'Last Name: ' + $lName
$todayLine = 'Date: ' + $today

$fNameLine > $filePath
$lNameLine >> $filePath
$todayLine >> $filePath
