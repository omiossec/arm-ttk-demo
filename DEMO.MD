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


# Test case 

```powershell
Copy-Item -Path .\testcases\version-should-be-a-number.test.ps1 -Destination .\arm-ttk\testcases\deploymentTemplate\version-should-be-a-number.test.ps1 

Test-AzTemplate -TemplatePath "armfiles/azuredeploy.json"
```

