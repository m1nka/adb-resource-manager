## Create fully private Autonomous Database with already existing cloud network infrastructure
This example creates Autonomous Database (ADB) with all dependent cloud network infrastructure injected into the module. 
The code deployes the use-case defined [here](https://docs.oracle.com/en-us/iaas/adbnetworkaccess/private-endpoints-autonomous.html).  

### Using this example
Update terraform.tfvars with the required information.

### Deploy the cluster  
Initialize Terraform:
```
$ terraform init
```
View what Terraform plans do before actually doing it:
```
$ terraform plan
```
Use Terraform to Provision resources:
```
$ terraform apply
```
