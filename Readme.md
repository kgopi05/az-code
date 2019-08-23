## This repo is provisioning the Azure Resources using Terraform ##

How the Execute the Terraform

1. Naviagate the prod folder
2. Connect to Azure using az login
3. Once succesfull connection , Connect to requried azure subscription

az account set -s <subscriptionid>


pending items :

1. Configuring the SQL Database firewall
2. Configuring the sql AAD admin
3. provisioning the service bus -completed
4. provisioning the servicebus queues - completed
5. provisioning the logicapps  
