IF %useProxy% == true (goto :proxy)

:terraform
echo "Start Terraform Steps"
terraform init
terraform plan -var "vm_id=%vmId%" -var "vm_name=%vmName%" -var "access_key=%awsAccessKey%" -var "secret_key=%awsSecretKey%" -out myPlan
terraform apply -input=false myPlan
echo "End Terraform Steps"
goto :eof

:proxy
echo "Set the Proxies"
set HTTP_PROXY=http://proxy.hud.gov:8080
set HTTPS_PROXY=http://proxy.hud.gov:8443
set SOCKS_PROXY=http://proxy.hud.gov:5050
echo "Proxies are Set"
goto :terraform

:eof
echo "DONE"