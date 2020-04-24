<#
.Synopsis
    Ensures the contentVersion use the X.X.X.X format.
.Description
    Ensures the contentVersion use the X.X.X.X format.
#>
param(
[PSObject]$TemplateObject
)

$templateVersion = $TemplateObject.contentVersion

if (-not $templateVersion) {
    Write-Error 'DeploymentTemplate Missing contentVersion property' 
    return
}


if (!($templateVersion -match "^[0-9]+.[0-9]+.[0-9]+.[0-9]+$")) {
    Write-Error "DeploymentTemplate has an unexpected contentVersion. Format should be X.X.X.X"
    return
}