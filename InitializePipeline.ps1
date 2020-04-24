
try {

    if (-not $Env:BUILD_SOURCESDIRECTORY)
    {
        Write-Error ("No BUILD_SOURCESDIRECTORY Variable")
        exit 1
    }
    elseif (-not (Test-Path $Env:BUILD_SOURCESDIRECTORY))
    {
        Write-Error "The $($Env:BUILD_SOURCESDIRECTORY) directory doesn't exist"
        exit 1
    }

    $ResultPath = join-path -Path $Env:BUILD_SOURCESDIRECTORY -ChildPath "results"

    New-Item -Path $ResultPath -ItemType Directory

}
catch {
    write-error "Error while creating the result folder in $($Env:BUILD_SOURCESDIRECTORY) Exception Type: $($_.Exception.GetType().FullName) $($_.Exception.Message)"
}