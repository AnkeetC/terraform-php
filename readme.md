# Azure PHP Application Deployment

This project automates the deployment of a basic PHP application (Slim framework) on an Azure Ubuntu Virtual Machine using Terraform and a Bash setup script.

## Prerequisites

Before you begin, make sure you have the following:

- An Azure subscription.
- Terraform installed on your local machine.
- An SSH key pair for authentication (if using SSH).

## Getting Started

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/azure-php-deployment.git
   cd azure-php-deployment
   
2. Create an SSH key pair (if you don't have one):
'''ssh-keygen -t rsa -b 2048 -f keyfile -N ""

3.Update the main.tf file with your Azure subscription ID and any other configuration options you may need.

4.Run Terraform to provision the Azure infrastructure:

''' terraform init
terraform apply '''

Follow the prompts to confirm the deployment.

5. Once the deployment is complete, copy the public IP address displayed in the Terraform output.

# steup.sh
I have added a basic open source php application installation step in step.sh file , I request you to modiphy as per your php application need and installation requirements.

6.Access the deployed PHP application:

Open a web browser and go to: http://<your-public-ip>/slim

Additionally, view PHP information at: http://<your-public-ip>/info.php

## Cleanup
To clean up and delete the Azure resources, run:
'''terraform destroy
Follow the prompts to confirm the resource deletion.

## Notes
The setup script installs Apache, PHP, and Git, clones the Slim framework, sets permissions, and restarts Apache.
Make sure to customize the script or Terraform configurations based on your specific requirements.
For troubleshooting, check Apache and PHP logs on the Azure VM.
'''
Replace placeholders like `<yourusername>`, `<your-public-ip>`, and others with your actual values. This README provides a basic structure and information to help users deploy and test the PHP application on Azure. Feel free to add more details or sections based on your project's complexity and requirements.
