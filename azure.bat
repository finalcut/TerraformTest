IF %useProxy% == true (goto :proxy)

:terraform
echo "Start Terraform Steps"
REM terraform init
REM terraform plan -out myPlan -var "vm_id=%vmId%" -var "vm_name=%vmName%" -var "client_secret=%azureSecretKey%" -var "tenant_id=%azureTennantId%" -var "subscription_id=%azureSubscriptionId%" -var "client_id=%azureApplicationId%" -var "vm_password=%vm_password%"
REM terraform apply -input=false myPlan
echo "End Terraform Steps"
goto :eof

:proxy
echo "Set the Proxy"
set HTTP_PROXY=http://proxy.hud.gov:8080
set HTTPS_PROXY=http://proxy.hud.gov:8443
set SOCKS_PROXY=http://proxy.hud.gov:5050

echo %useProxy%
goto :terraform

:eof
echo "DONE"
