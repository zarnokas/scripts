$pattern = '\d\d\d\d-\d\d\d\d-\d\d\d\d-\d\d\d\d';
#$pattern = '\d\d\d\d \d\d\d\d \d\d\d\d \d\d\d\d';
#$pattern = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d';

#Get-ChildItem gets ALL objects (files and folders) in the directory
#We then pipe the result and search for pattern
#If any files contain pattern we will select and output its path

Write-Host "Please provide a start path:"
$path = Read-Host

Write-Host "Searching for pattern: 1324-1234-1234-1234..." -NoNewline
$result = Get-ChildItem $path -Recurse -Exclude *png,*jpg,*dll,*.exe | Select-String $pattern -List | Select-Object Path
Write-Host "Done!" -ForegroundColor Green

Write-Host "All files that contained pattern:"
$result | ForEach-Object {"    $_"} 
Write-Host "" #formatting
