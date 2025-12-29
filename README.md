# AWS_Three_Tier_Web_Architecture_with_Terraform

Setup Web, App and DB tier and run a application to store data on Database.

```
In this architecture, a public-facing Application Load Balancer forwards client traffic to our web tier EC2 instances. 
The web tier is running Nginx webservers that are configured to serve a React.js website and redirects our API calls to the application tier’s internal facing load balancer. 
The internal facing load balancer then forwards that traffic to the application tier, which is written in Node.js. 
The application tier manipulates data in an Aurora MySQL multi-AZ database and returns it to our web tier. 
Load balancing, health checks and autoscaling groups are created at each layer to maintain the availability of this architecture.
```

## Environment setup:

- **Download Code from GitHub Repository**
    - Code from Github
```sh
git clone https://github.com/aws-samples/aws-three-tier-web-architecture-workshop.git

$ ll ../a00_Deleted/aws-three-tier-web-architecture-workshop/application-code/
drwxr-xr-x 1 tchat 197609    0 Dec 26 19:35 app-tier/
-rw-r--r-- 1 tchat 197609 2705 Dec 27 00:16 nginx.conf
drwxr-xr-x 1 tchat 197609    0 Dec 26 19:35 web-tier/
```

- **S3 Bucket Creation**
    - S3 Bucket name: tchatuabucket12262025 

- **IAM EC2 Instance Role Creation** (tf01-s3-ssm-access-role)
    - Associate with AWS Service
    - Attached to the EC2 Instance
    - Privileges:
        - AmazonS3ReadOnlyAccess
        - AmazonSSMManagedInstanceCore


## Networking and Security

- Building out the **VPC networking components** as well as security groups that will add a layer of protection around our **EC2 instances**, **Aurora databases**, and **Elastic Load Balancers**.
    - Create an isolated network with the following components:
        - VPC
            - Resource
            - Name Tag
            - IPv4 CIDR
        - Subnets
            - VPC ID
            - Subnet Name
                - Public_Web_Subnet_AZ_1
                - Public_Web_Subnet_AZ_2
                - Private_App_Subnet_AZ_1
                - Private_App_Subnet_AZ_2
                - Private_DB_Subnet_AZ_1
                - Private_DB_Subnet_AZ_2
            - AZ
            - IPV4 CIDR
        - Internet Gateway
            - Name Tag
            - Attache to VPC
        - EIP
        - NAT gateway
            - Name
            - Subnet
            - Allocate EIP
        - Route Tables
            - Public RT
                - Name
                - VPC
                - Add a route that directs traffic from the VPC to the internet gateway
                - Subnet Associations
            - Private RT
                - Name
                - VPC
                - Add a route that directs traffic from the VPC to the internet gateway
                - Subnet Associations
        - Security Groups
            - 1st Security Group: Internet Facing LB SG
                - SG name
                - Description
                - VPC
                - Inbound rules
                    - Type: HTTP
                    - Source: Every IP(My IP)                  
            - 2nd Security Group: Web Tier SG
                - SG name
                - Description
                - VPC
                - Inbound rules
                    - Type: HTTP
                    - Source: Internet Facing LB SG               
                    - Source: My IP
            - 3rd Security Group: Internal LB SG
                - SG name
                - Description
                - VPC
                - Inbound rules
                    - Type: HTTP
                    - Source: Web Tier SG      
            - 4th Security Group: Private App Tier SG
                - SG name
                - Description
                - VPC
                - Inbound rules
                    - Type: Custom TCP (4000)
                    - Source: My IP
                    - Source: Internal LB SG
            - 5th Security Group: Database SG
                - SG name
                - Description
                - VPC
                - Inbound rules
                    - Type: MYSQL/Aurora (3306)
                    - Source: Private App Tier SG

## Accessing Application through a Domain Name (Route53)

- On AWS Console, go to route53
    - Create hosted zone
        - Domain name: goumgue.com
        - Description
        - Type: Public hosted zone

- On Goddady Account or else where
    - Go to `Nameservers` > `Change Nameservers` > `I'll update my own nameservers` > copy it on route53 and paste it here (4)
    - On route53: `Create record`:
        - Record name: www
        - Record type: CNAME - Routes...
        - Value: Internet facing LB NDS name
- Voila!

## Cleaning Up:

- Autoscaling Groups
- Application Load Balancers
- Target Groups
- Launch Templates
- AMIs
- Remaining EC2 Instances
- Aurora Database: 
    - To delete the database we created, navigate to the RDS service dashboard. We need to make sure that deletion protection is off. Do this by selecting the regional cluster and clicking the Modify button. Scroll all the way down and you should be able to uncheck deletion protection if it is checked.
- Nat Gateways
- Elastic IPs
- Route tables
- Internet Gateway
- VPC


































