function leaveCalc {
    Write-Host "Welcome to your basic government annual and sick leave calculator `nfor full-time employees!" -ForegroundColor Red
    [int]$yearsOfService = Read-Host -Prompt `n"Enter the amount of years of service you have" 
    $currentAnnualLeave = Read-Host -Prompt `n"Enter your current annual leave balance" # can earn 4, 6, or 8 hours per pay period
    $currentSickLeave = Read-Host -Prompt `n"Enter your current sick leave balance" #earns 4 hours per pay period
    $endDate = Read-Host -Prompt `n"Enter the end date for calculation in the format MM/DD/YYYY"
    $currentDate = Get-Date -Format "MM/dd/yyyy"
    $dateBetween = New-TimeSpan -Start $currentDate -End $endDate

    if ($yearsOfService -lt '3') {
        $annualLeaveRate = '4';
    } elseif ($yearsOfService -ge '15') {
        $annualLeaveRate = '8';
    } else {
        $annualLeaveRate = '6';
    }
    Write-Output `n"Based upon the amount of years of service entered, you earn $annualLeaveRate hours per pay period"
    #Write-Output `n"The total amount of days in between today and end date is $dateBetween.Days" 
    Write-Output `n"On $endDate The total amount of annual leave you will have is $([math]::ceiling($dateBetween.Days / 14) * $annualLeaveRate + $currentAnnualLeave) hours"
    Write-Output `n"On $endDate The total amount of sick leave you will have is $([math]::ceiling($dateBetween.Days / 14) * 4 + $currentSickLeave) hours"`n

    #TODO 
    #Need error checking for $endDate input

}


