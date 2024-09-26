$rgName = '90-Days-of-DevOps-as-a-Learning'

New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile C:\Users\micha\demo\90-Days-of-DevOps-as-a-Learning\Days\Cloud\03Storage\Mod07_90-Days-of-DevOps-as-a-Learning-vm-template.json `
   -TemplateParameterFile C:\Users\micha\demo\90-Days-of-DevOps-as-a-Learning\Days\Cloud\03Storage\Mod07_90-Days-of-DevOps-as-a-Learning-vm-parameters.json `
   -AsJob
