$rgName = '90-Days-of-DevOps-as-a-Learning'

New-AzResourceGroupDeployment `
-ResourceGroupName $rgName `
-TemplateFile C:\Users\micha\demo\90-Days-of-DevOps-as-a-Learning\Days\Cloud\01VirtualNetworking\Mod04_90-Days-of-DevOps-as-a-Learning-vms-loop-template.json `
-TemplateParameterFile C:\Users\micha\demo\90-Days-of-DevOps-as-a-Learning\Days\Cloud\01VirtualNetworking\Mod04_90-Days-of-DevOps-as-a-Learning-vms-loop-parameters.json