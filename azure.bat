IF %useProxy% == true (goto :proxy)

:terraform
echo "Start Terraform Steps"
terraform init
terraform plan -out myPlan -var "vm_id=%vmId%" -var "vm_name=%vmName%" -var "client_secret=%azureSecretKey%" -var "vm_password=%vm_password%"
terraform apply -input=false myPlan
echo "End Terraform Steps"
goto :eof

:proxy
echo "Set the Proxy"
call proxy.bat
goto :terraform

:eof
echo "DONE"
