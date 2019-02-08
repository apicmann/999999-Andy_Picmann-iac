# Lab #1

Configuring Your Module
------

Navigate to your training kit folder workshop_materials/terraform/example-module  

Open the main.tf file and Input the access key and secret key with the provided aws credentials.  
 
https://git.rockfin.com/training-iac/training-starter-kit/blob/master/workshop_materials/terraform/example-module/main.tf

```hcl
provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "${var.aws_region}"
}

resource "aws_instance" "example" {
  ami                         = "ami-0cd3dfa4e37921605"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.application_name}-ecs"
  associate_public_ip_address = false

  tags = {
    Name = "${var.application_name}-ec2"
  }
}
```  

Next we'll establish the variables being used in the main.tf.  The required variables to be populated in the variables.tf are below:  

```
aws_region  
application_name  
instance_type  
```

Open the variables.tf file and establish the variables.  

The variable definition format is: **variable "variable_name" {}**  
example:   

```hcl
variable "aws_region" {}  
variable "application_name" {}
variable "instance_type" {}
```

Again, we are simply establishing the variables here, not setting values for them.  We will be populating the variables with a terraform.tfvars file which allows you to pass variables to a terraform module or configuration, without modifying the code itself.  

Now we need to define the variables in a variable input file: terraform.tfvars  

```
aws_region (us-east-2)  
application_name (your first name)  
instance_type (t3.micro)  
```
Open the terraform.tfvars file and set the variable values.  

This format is simple. **variable = "variable_value"**
example:     

```hcl
aws_region       = "us-east-2"
application_name = "alex"
instance_type    = "t3.micro"
```

Deploying Your Infrastructure
------

Once you have the module configured, it is time to deploy the infrastructure you've defined.  
  
In the example-module directory, run the following commands:    

```
terraform init 
```

Take note of the output.  This initializes the working directory for terraform use.  If initialize is clean, proceed.  

```
terraform plan 
```

Take note of the output.  This details what resources and configurations will be deployed.  If something doesn’t look right, correct it in the main.tf and run the plan again.  Once the plan looks good, proceed.  

```
terraform apply  
```

Once again, take note of the output to ensure it matches the plan command and enter “yes” to deploy the infrastructure.   
After you've verified the instance is up with your desired configuration, come back to the terraform.tfvars file and change the instance type from t3.micro to t3.small.  Run through the plan and apply steps again to deploy the configuration change.  
  

Destroying Your Infrastructure
------

The last step is to clean up our infrastructure once we've verified it deploys correctly.  
  
To destroy the infrastructure, from the Terraform configuration root directory, run:
  
```
terraform destroy
```  
  
Like the apply command, the destroy will output each resource it is going to destroy and prompt for confirmation before doing so.  If everything looks as expected, enter YES and destroy the infrastructure. 
