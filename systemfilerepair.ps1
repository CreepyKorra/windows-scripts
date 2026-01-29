$sfcLogPath = "$Env:windir\Logs\CBS\CBS.log"
$sfcCommand = "sfc /scannow"

$dismLogPath = "$Env:windir\Logs\Dism\dism.log"
$dismScanCommand = "dism /Online /Cleanup-Image /ScanHealth"
$dismRestoreCommand = "dism /Online /Cleanup-Image /RestoreHealth"
$dismCheckCommand = "dism /Online /Cleanup-Image /CheckHealth"

Start-Sleep -Seconds 0.5
Write-Host "Starting System File Repair Script ..."

Start-Sleep -Seconds 1
Write-Host "Step 1/2: Starting System File Checker (SFC) ..."
Start-Process -FilePath "powershell" -ArgumentList "$sfcCommand" -Verb RunAs
# Start-Process -FilePath "$Env:windir\System32\sfc.exe" -ArgumentList "/scannow" -Verb RunAs
#$sfcCommand

Start-Sleep -Seconds 1

Write-Host "Step 2/2: Starting Deployment Image Servicing and Management (DISM) ..."
Start-Sleep -Seconds 0.5
Write-Host "Running Command: ScanHealth ..."

Start-Sleep -Seconds 0.5
Write-Host "Running Command: RestoreHealth ..."

Start-Sleep -Seconds 0.5
Write-Host "Running Command: CheckHealth ..."


























$sfcLogPath = "$env:SystemRoot\Logs\SFC\sfc.log"
Write-Host "SFC Log Path: $sfcLogPath"
Write-Host "Running System File Checker (SFC) ..."
$sfcResult = sfc /scannow
Write-Host $sfcResult