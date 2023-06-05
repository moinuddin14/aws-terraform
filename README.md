# Note: Before creating any Terraform resources, make sure to create the network stack i.e., the Terraform code present in network directory. 

# Hashicorp Terraform Syntax
    <BLOCK TYPE> "<BLOCK NAME>" "<BLOCK LABEL>" {
        # Block body
        <IDENTIFIER> = <EXPRESSION> # Argument
    }

# How to run any Terraform code

- Install Terraform: If you haven't installed Terraform yet, you can download it from the official Terraform website. Choose the package appropriate for your system. After downloading it, unzip the package and move the terraform binary to somewhere in your system's PATH.
- Set up AWS credentials: You need to have your AWS credentials configured on your system. This can be done through the AWS CLI using the command aws configure, which will prompt you for your access key, secret key, and default region. Alternatively, you can set the following environment variables
    - export AWS_ACCESS_KEY_ID="your-access-key"
    - export AWS_SECRET_ACCESS_KEY="your-secret-key"
    - export AWS_DEFAULT_REGION="your-region"
- Initialize Terraform: Navigate to the directory containing your Terraform configuration file (main.tf) in your terminal, and run the following command to initialize Terraform
    - terraform init
- Plan and apply: You can see what changes Terraform will make without actually making them by using the terraform plan command. If the plan looks correct, you can apply the changes with terraform apply. This will prompt you to confirm before making any changes.
    - terraform plan
    - terraform apply
- Clean up the resources created
    - terraform destroy