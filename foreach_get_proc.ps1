
# get and store list of system processes
$processes = Get-Process


# counter
$cnt = 1
# iterate and get attributes from $proc objects
foreach ($proc in $processes){

    Write-Host "=========================="
    Write-Host "PR[$cnt] is $($proc.Name)"
    Write-Host "PID[$cnt] is $($proc.ID)"
    $cnt++
}

Write-Host "=========================="

# display type of processes collestion
$processes.GetType()


# example output

# ```
# ==========================
# PR[235] is zeitgeist-datah
# PID[235] is 3902
# ==========================
# PR[236] is zeitgeist-fts
# PID[236] is 3923
# ==========================

# IsPublic IsSerial Name                                     BaseType
# -------- -------- ----                                     --------
# True     True     Object[]                                 System.Array

# ```