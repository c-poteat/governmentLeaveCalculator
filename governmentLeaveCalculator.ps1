function leaveCalc {
    Write-Host "Welcome to your basic government annual.... and sick leave calculator `nfor full-time employees!" -ForegroundColor Red
    [int]$yearsOfService = Read-Host -Prompt "Enter the amount of years of service you have" 
    $currentAnnualLeave = Read-Host -Prompt "Enter your current annual leave balance" # can earn 4, 6, or 8 hours per pay period
    $currentSickLeave = Read-Host -Prompt "Enter your current sick leave balance" #earns 4 hours per pay period
    if ($yearsOfService -lt '3') {
        $annualLeaveRate = '4';
    } elseif ($yearsOfService -ge '15') {
        $annualLeaveRate = '8';
    } else {
        $annualLeaveRate = '6';
    }
    Write-Output $annualLeaveRate
    ##TODO
    #Current date variable is needed
    #need to calculate the pay period based on current date
    #Tell user how much annual leave is earned based on years of service, maybe display a table 
    #Need to enter in amount of pay periods, possible array 
    #End date is needed for calculation or auto generate for specific intervals
    # display for today's date
 
}


