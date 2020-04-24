# Test a template 

```powershell
Test-AzResourceGroupDeployment -ResourceGroupName "globalazuredemo-rg" -TemplateFile "armfiles/azuredeploy.json"
```

# ARM-TTK Basic test 

```powershell
Import-Module ./arm-ttk/arm-ttk.psd1

Test-AzTemplate -TemplatePath "armfiles/azuredeploy.json"

```

# ARM-TTK Tests Selection

```powershell
$testcases = @("ResourceIds should not contain","Parameters Property Must Exist")

Test-AzTemplate -TemplatePath "armfiles/azuredeploy.json" -Test $testcases
```

# ARM-TTK Skip test

```powershell
$testcases = @("VM Size Should Be A Parameter","VM Images Should Use Latest Version", "Virtual Machines Should Not Be Preview")

Test-AzTemplate -TemplatePath "armfiles/azuredeploy.json" -Skip $testcases

```

# Test case 

```powershell
Copy-Item -Path .\testcases\version-should-be-a-number.test.ps1 -Destination .\arm-ttk\testcases\deploymentTemplate\version-should-be-a-number.test.ps1 

Test-AzTemplate -TemplatePath "armfiles/azuredeploy.json"
```

# GitHub 

Docker + Workflow https://github.com/omiossec/arm-ttk-demo

# Azure DevOps 

Pipeline https://dev.azure.com/DEMOOM/Demo-arm-ttk/_build