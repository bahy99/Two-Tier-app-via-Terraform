# Two-Tier-app-via-Terraform
This project is an Infrastructure-as-Code (IaC) implementation using Terraform to provision a two-tier application infrastructure on AWS. It sets up a Virtual Private Cloud (VPC) with an Internet Gateway (IGW) and route tables. Inside the VPC, it creates two subnets, one public and one private. The public subnet contains an EC2 instance called "APP," while the private subnet contains an EC2 instance called "DB." Additionally, it utilizes AWS S3 bucket to store the Terraform state file and DynamoDB for locking purposes.
## Prerequisites
    Before running this Terraform project, make sure you have the following prerequisites:
     1- AWS account credentials with appropriate permissions to create resources.
     2- Terraform installed on your local machine. 
## Getting Started
    1- Clone the repository:
       # git clone https://github.com/bahy99/Two-Tier-app-via-Terraform.git
    2- Change into the project directory:
       # cd Two-Tier-app-via-Terraform
    3- Initialize Terraform:
       # terraform init
    4- Modify the variables.tf file according to your requirements. You can specify the AWS region, VPC CIDR block, subnet CIDR blocks, EC2 instance types, etc., in 
       this file.
    5- Review and modify the main.tf file if necessary. This file defines the infrastructure resources to be provisioned.
    6- If you want to use a specific S3 bucket and DynamoDB table for storing the state file and locking, update the values in the backend.tf file.
    7- Run Terraform plan to see the execution plan:   
       # terraform plan
    8- If the plan looks good, apply the changes:
       # terraform apply
    9- Terraform will prompt for confirmation. Enter yes to proceed with the infrastructure provisioning.
    10- Wait for Terraform to complete the provisioning process. Once finished, it will display the outputs, including the public IP addresses of the "APP" and "DB" 
        instances.
## Cleanup
     To clean up and destroy the resources created by this Terraform project, run the following command:
       # terraform destroy
     Terraform will prompt for confirmation. Enter yes to proceed with the destruction.  
## Contributing
    Contributions are welcome! If you find any issues or want to enhance this project, please submit a pull request.
 ## Acknowledgments
    Terraform - Infrastructure as Code tool by HashiCorp
    Amazon Web Services - Cloud computing platform used for provisioning the infrastructure
