# Setup Terraform and connect to AWS Cloud

- Terraform
- VS Code
- AWSCLI

- **Install Terraform**
    
- Download terraform the latest version from: https://developer.hashicorp.com/terraform/install#windows
- Setup environment variable click on:
    - start --> search "edit the environment variables" and click on it
    - Under the advanced tab, chose "Environment variables"  
    - under the system variables select path variable
    - and add terraform location in the path variable. system variables --> select path add new --> terraform_Path in my system, this Path location is C:\Program Files\terraform_1.3.7
- Run the below command to validate terraform version

```SH
$ terraform -version
Terraform v1.14.3
on windows_386
```

- **Install Visual Studio code**
- **AWSCLI installation**: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```SH
$ aws --version
aws-cli/2.32.24 Python/3.13.11 Windows/11 exe/AMD64
```
    - Connect to AWS Cloud
        - I must have an AWS account to proceed with the below steps.
        - Create an IAM programmatic user with administrator access
        - Configure credentials
```sh
aws configure --profile <profile_name>
```

    - Test the connection
```sh
$ aws s3 ls
2025-02-06 02:01:23 elasticbeanstalk-us-east-2-08835454478627
2025-12-26 19:51:05 tchatuabucket122062025
```

