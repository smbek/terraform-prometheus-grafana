# Setup Instructions

To get started, follow these steps:

1. **Create AWS Access and Secret Key**
   - Ensure you have the right permissions to create a VPC and EC2 instances.

2. **Set Environment Variables**
   Run the following commands in your terminal to set up the necessary environment variables:

   ```bash
   export AWS_ACCESS_KEY_ID="your_access_key"
   export AWS_SECRET_ACCESS_KEY="your_secret_access_key"

   ```


3. **Create terraform.tfvars in terraform folder**

```hcl
region = "us-east-2"
vpc_cidr = "10.0.0.0/0"
subnet1_cidr = "10.0.1.0/0"
subnet2_cidr = "10.0.2.0/0"
subnet3_cidr = "10.0.3.0/0"
ip_on_launch = true
instance_type = "t2.micro"

```
4. **Change permission to setup.sh file**
   - chmod +x setup.sh

5. **Run `./setup.sh`**

6. **Change permission to destroy.sh file**
   - chmod +x destroy.sh

7. **Run `./destroy.sh`**
