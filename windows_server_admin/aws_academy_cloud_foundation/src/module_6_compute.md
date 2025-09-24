# Compute

## 1. Compute Services Overview

### AWS compute services

Amazon Web Services (AWS) offers many compute services. This module will discuss the highlighted services

### Categorizing compute services

| Services                                                                               | key Concepts                                                                                         | Characteristics                                                                                                                                            | Ease of Use                                                                                     |
| -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| <ul><li>Amazon EC2</li></ul>                                                           | <ul><li>Infrastructure as a service (IaaS)</li><li>Instance-based</li><li>Virtual machines</li></ul> | <ul><li>Provision virtual machines that you can manage as you choose</li></ul>                                                                             | A familiar concept to many IT professionals                                                     |
| <ul><li>AWS Lambda</li></ul>                                                           | <ul><li>Serverless computing</li><li>Function-based</li><li>Low-cost</li></ul>                       | <ul><li>Write and deploy code that executes on a schedule or that can be triggered by events</li><li>Use when possible (architect for the cloud)</li></ul> | A relatively new concept for many IT staff members, but easy to use after you learn how         |
| <ul><li>Amazon ECS</li><li>Amazon EKS</li><li>AWS Fargate</li><li>Amazon ECR</li></ul> | <ul><li>Conainer-based computing</li><li>Instance-based</li></ul>                                    | <ul><li>Spin up and execute jobs more quickly</li></ul>                                                                                                    | AWS Fargate reduces administrative overhead, but you can use options that give you more control |
| <ul><li>AWS Elastic Beanstalk</li></ul>                                                | <ul><li>Platform as a sevice (PaaS)</li><li>For web applications</li></ul>                           | <ul><li>Focus on your code (building your applicatin)</li><li>Can easily tie into other servies—databases, Domain Name System (DNS), etc</li></ul>         | Fast and easy to get started                                                                    |

### Choosing the optiomal compute service

- The optiomal compute service or services that you use will depend on your use case
- Some aspects to consider —
  - What is your application design?
  - what are your usage patterns?
  - which configuration settings will you want to manage?
- Selecting the wrong compute solution for an architecture can lead to lower performance efficiency
  - A good starting place—Understand the available compute options

## 2. Amazon EC2 Part 1

### Amazon Elastic Compute Cloud (Amazon EC2)

```txt
+---------------------+
| On-premises servers |
+---------------------+
```

Example uses of Amazon EC2 Instances  

- Application server
- Web server
- Database server
- Game server
- Mail server
- Media server
- catalog server
- file server
- computing server
- proxy server

### Amazon EC2 Overview

- Amazon Elastic Compute Cloud (Amazon EC2)
  - Provides virtual machines—referred to as EC2 instances—in the cloud
  - Gives you full control over the guest operating system (Windows or Linux) on each instance
- You can launch instances of any size into an Availability Zone anywhere in the world
  - Launch instances from Amazon Machine Images (AMIs)
  - Launch instances with a few clicks or a line of code, and they are ready in minutes
- You can control traffic to and from instances

### Launching an Amazon EC2 instance

### Select an AMI

- Amazon Machine Image (AMI)
  - Is a template that is used to create an EC2 instance (which is a virtual machine, or VM that runs in the AWS Cloud)
  - Contains a Windows or Linux Operating System
  - Often also has some software pre-installed
- AMI choices
  - Quick Start — Linux and Windows AMIs that are provided by AWS
  - My AMIs — Any AMIs that you created
  - AWS Marketplace — Pre-configured templates from third parties
  - Community AMIs — AMIs shared by others, use at your own risk

### Creating a new AMI: Example

### Select an instance type

- Consider your use case
  - How will the EC2 instance you create be used?
- The instance type that you choose determines
  - Memory (RAM)
  - Processing power (CPU)
  - Disk space and disk type (storage)
  - Network performance
- Instance type categories
  - General purpose
  - Compute optimized
  - Memory optimized
  - Storage optimized
  - Accelerated computing
- Intance types offer family, generation, and size

### EC2 instance type naming and sizes

Instance type naming:  

- Example: t3.large
  - T is the family name
  - 3 is the generation number
  - Large is the size

Example instance sizes

| Instance Name | vCPU | Memory (GB) | Storage  |
| ------------- | ---- | ----------- | -------- |
| t3.nano       | 2    | 0.5         | EBS-only |
| t3.micro      | 2    | 1           | EBS-only |
| t3.small      | 2    | 2           | EBS-only |
| t3.medium     | 2    | 2           | EBS-only |
| t3.large      | 2    | 8           | EBS-only |
| t3.xlarge     | 4    | 16          | EBS-only |
| t3.2xlarge    | 8    | 32          | EBS-only |

### Select instance type: Based on use case

### Instance types: networking features

- The network bandwidth (Gbps) varies by instance type
- To maximize networking and bandwidth performance of your instance type
  - if you have interdependent instances, launch them into a cluster placement group
  - enable enhanced networking
- Enhanced networking types are supported on most instance types
- Enhanced networking types
  - Elastic Network Adapter (ENA): Supports Network speeds of up to 100 Gbps
  - Intel 82599 Virtual Function interface: Supports network speeds of up to 10 Gbps

## 3. Amazon EC2 Part 2

### Specify network settings

- Where should the instance be deployed?
  - identify the VPC and optionally the subnet
- Should a public ip address be automatically assigned?
  - to make it internet-accessible

### Attach IAM role

will the software on the EC2 instane need to interact with other AWS service

- if yes, attach an appropriate IAM Role
- An AWS identity and Access Management (IAM) role that is attached to an EC2 instane is kept in an instance profile
- you are not restricted to attaching a role only at instance launch
  - you can also attach a role to an instance that already exists

### User data script

- Optionally, specify a user data script at instance launch
- Use user data scripts to customize the runtime environment of you instance
  - Script executes the first time the instance starts
- Can be used strategically
  - For example, reduce the number of custom AMIs that you build and maintain

### Specify storage

- Configure the root volume
  - Where the guest operating system is installed
- Attach additional storage volumes
  - AMI might already include more than one volume
- For each volume, specify:
  - The size of the disk (in GB)
  - The volume type
    - Different types of solid state drives (SSDs) and hard disk drives (HDDs) are available
  - if the volume will be deleted when the instance is terminated
  - if encryption should be used

### Amazon EC2 storage options

- Amazon Elastic Block Store (Amazon EBS)
  - Durable, block-level storage volumes
  - You can stop the instance and start it again, and the data will still be there
- Amazon EC2 instance Store
  - Storage is provided on disks that are attached to the host computer where the EC2 instance is running
  - If the instance stops, data stored here is deleted
- Other options for storage (not for the root volume)
  - Mount an Amazon Elastic file system (Amazon EFS) file system
  - Connect to Amazon Simple Storage Service (Amazon S3)

### Example storage options

## 4. Amazon EC2 Part 3

### Add tags

- A tags is a label that you can assign to an AWS resource
  - consists of a key and an optional value
- Tagging is how you can attach metadata to an EC2 intance
- Potential benefits of tagging—Filtering, automation, cost allocation, and access control

### Security Group settings

- A security group is a set of firewall rules that control traffic to the instance
  - it exists outside of the instance's guest OS
- Create rules that specify the source and which ports that network communications can use
  - specify the port number and the protocol, such as Transmission Control Protocol (TCP) User Datagram Protocol (UDP) or the Internet Control Message Protocol (ICMP)
  - specify the source (for example, an IP address or another security group) that is allowed to use the rule

### Identify or create the key pair

- At instance launch, you specify an exisitng key pair or create a new key pair.
- A key pair consists of
  - A public key that AWS store
  - A private key file that you store
- It enables secure connections to the instance
- For Windows AMIs
  - Use the private key to obtain the administrator password that you need to log in to your instance
- For Linux AMIs
  - use the private key to use SSH to securely connect to your instance

### Amazon EC2 console view of a running EC2 instance

### Another option: Launch an EC2 instance with the AWS Command Line Interface

- EC2 instances can also be created programatically
- This example shows how simple the command can be
  - This command assumes that the key pair and security group already exist
  - More options could be specified. See the AWS CLI Command Reference for details

Example commands:

```sh
aws ec2 run-instances \
--image-id ami-1a2b3c3d \
--count 1 \
--instance-type c3.large \
--key-name MyKeyPair \
--security-groups MySecurityGroup \
--region us-east-1
```

### Amazon EC2 instance lifecycle

### Considering using an Elastic IP address

- Rebooting an instance will not change any IP addresses or DNS hostnames
- When an instance is stopped and then started again
  - The public IPv4 address and external DNS hostname will change
  - The private IPv4 address and internal DNS hostname do not change
- if you require a persistent public IP address
  - Associate an Elastic IP address with the instance
- Elastic IP address characteristics
  - Can be associated with instances in the Region as needed
  - Remains allocated to your account until you choose to release it

### EC2 instance metadata

- Instance metadata is data about your instance
- While you are connected to the instance, you can view it
  - In a broswer: <http://169.254..169.254/latest/meta-data/>
  - In a terminal window: curl <http://169.254.169.254/latest/meta-data>
- Example retrievale values:
  - Public Ip address, private IP address, public hostname, instance ID, security groups, Region Availability Zone
  - Any user data specified at instance launch can also be accessed at <http://169.254.169.254/latest/user-data/>
- It can be used to configure or manage a running instance
  - For example, author a configuration script that reads the metadata and uses it to configure applications or OS settings

### Amazon CloudWatch for monitoring

## 5. Amazon EC2 Cost Optimization

### Amazon EC2 pricing models

- On-Demand instances
- Dedicated Hosts
- Dedicated Instances
- Reserved Instances
- Scheduled Reserved Instances
- Spot Instances

### Amazon EC2 pricing models: Benefits

| On-Demand Instances                        | Spot Instances                                  | Reserved Instances                                                                 | Dedicated Hosts                                                                                          |
| ------------------------------------------ | ----------------------------------------------- | ---------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| <ul><li>Low Cost and flexibility</li></ul> | <ul><li>Large scale, dynamic workload</li></ul> | <ul><li>Predictability ensures compute capacity is available when needed</li></ul> | <ul><li>Save money on licensing costs</li><li>Help meet compliance and regulatory requirements</li></ul> |

### Amazon EC2 pricing models: Use cases

| On-Demand Instances                                                                                       | Spot Instances                                                                                                                                                                                                     | Reserved Instances                                                                                                                                                                                                                      | Dedicated Hosts                                                                                                                                                        |
| --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <ul><li>Short-term, spiky or unpredictable workloads</li><li>Application development or testing</li></ul> | <ul><li>Applications with flexible start and end times</li><li>Applications only feasible at very low compute prices</li><li>users with urgent computing needs for large  amounts of additional capacity</li></ul> | <ul><li>Steady state or predictable usage workloads</li><li>Applications that require reserved capacity, including disaster recovery</li><li>Users able to make upfront payments to reduce total computing costs even further</li></ul> | <ul><li>Bring your own license (BYOL)</li><li>Compliance and regulatory restrictions</li><li>Usage and licensing tracking</li><li>Control instance placement</li></ul> |

### The four pillars of cost optimization

Cost optimization:  

- Right size
- increase elasticity
- Optimal pricing model
- Optimize storage choices

### Measure, monitor, and improve

- Cost optimization is an ongoing process
- Recommendation —
  - Define and enforce cost allocation tagging
  - Define metrics, set targets, and review regularly
  - Encourage teams to architect for cost
  - Assign the responsibility of optimization to an individual or to a team

## 6. Container Services

### Container basics

- Containers are a method of operating system virtualization
- Benefits —
  - Repeatable
  - Self-contained environments
  - Software runs the same in different environments
    - Developer's laptop, test, production
  - Faster to launch and stop or terminate than virtual machines

```txt
Your Container
+------------------+
| Your application |
| Dependencies     |
| Configurations   |
| Hooks into OS    |
+------------------+
```

### What is Docker?

- Docker is a software platform that enables you to build, test, and deploy applications quickly
- You run containers on Docker.
  - Cotainers are created from a template called an image
- A container has everything a software application needs to run

```txt
+-----------------------------------------------------+
| Cotainers have everything the software needs to run |
+-----------------------------------------------------+
| Libraries  |  System Tools   |   Code |  Runtime    |
+-----------------------------------------------------+
```

### Containers versus virtual machines

### Amazon Elastic Container Service (Amazon ECS)

- Amazon Elastic Container Service (Amazon ECS)
  - A highly scalable, fast, container management service
- Key benefits —
  - Orchestrates the running of Docker containers
  - Maintains and scales the fleet of nodes that run your containers
  - Removes the complexity of standing up the infrastructure
- Integrated with features that are familiar to Amazon EC2 service users
  - Elastic Load Balancing
  - Amazon EC2 security groups
  - Amazon EBS volumes
  - IAM roles

### Amazon ECS orchestrates containers

### Amazon ECS cluster options

- Key question: Do you want to manage the Amazon ECS cluster that runs the containers?
  - If yes, create an Amazon ECS cluster backed by Amazon EC2 (provides more granular control over infrastructure)
  - If no, create an Amazon ECS cluster backed by AWS Fargate (easier to maintain, focus on your applications)

### What is Kubernetes?

- kubernetes is open source software for container orchestration.
  - Deploy and manage containerized applications at scale
  - The same toolset can be used on premises and in the cloud
- Complements Docker
  - Docker enables you to run multiple containers on a single OS host
  - Kubernetes orchestrates multiple Docker hosts (nodes)
- Automates
  - Container provisioning
  - Networking
  - Load distribution
  - Scaling

### Amazon Elastic Kubernetes Service

- Amazon Elastic Kubernetes Service (Amazon EKS)
  - Enables you to run kubernetes on AWS
  - Certified kubernetes conformant (supports east migration)
  - Supports Linux and Windows containers
  - Compatible with kubernetes community tools and supports popular kubernetes add-ons
- Use Amazon EKS to —
  - Manage clusters of Amazon EC2 compute instances
  - Run containers that are orchestrated by kubernetes on those instances

### Amazon Elastic Container Registry (Amazon ECR)

Amazon ECR is a fully managed Docker container registry that makes it easy for developers to store, manage and deploy Docker container images

```txt
+--------------------------+
| Amazon ECS Integration   |
| Docker support           |
| team collaboration       |
| access control           |
| third-party integrations |
+--------------------------+
```

## 7. Introduction to AWS Lambda

### AWS Lambda: Run code without server

AWS Lambda is a serverless compute service

```txt
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Upload your code --------------> The code you run is a Lambda function ---------------------> Your code runs only when it is triggered  ----------- Pay only for the compute time that you use     |
|                                  AWS Service                                                                                                                                                       |
|                                  HTTP endpoints                                                                                                                                                    |
|                                  Mobile apps                                                                                                                                                       |
|                                  Run your code on a schedule or in a response to events                                                                                                            |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
```

### Benefits of Lamabda

- It supports multiple programming languages  
- Completely automated administration
- Built-in fault tolerance
- It supports the orchestration of multiple functions
- Pay-per-use pricing

### AWS Lambda event sources

Event Sources:  

- Amazon S3
- Amazon DynamoDB
- Amazon Simple Notification Service (Amazon SNS)
- Amazon Simple Queue Service (Amazon SQS)
- Amazon API Gateway
- Application Load Balancer
- many more...

### AWS Lambda function configuration

### Schedule-based Lambda function example: Start and stop EC2 instances

Stop instances example:  

```txt
Time-based CloudWatch event -> Lambda function triggered -> EC2 instances stopped
```

Start instances exaple:

```txt
Time-based CloudWatch event -> Lambda function triggered -> EC2 instances started
```

### Event-based Lambda function example: create thumbnail images

### AWS Lambda quotas

## 8. Introduction to AWS Elastic Beanstalk

### AWS Elastic Beanstalk

- An easy way to get web applications up and running
- A managed service that automatically handles —
  - infrastructure provisioning and configuration
  - Deployment
  - Load balancing
  - Automatic scaling
  - Health monitoring
  - Analysis and debugging
  - Logging
- No additonal charge for Elastic Beanstalk
  - Pay only for the underlying resources that are used

### AWS Elastic Beanstalk deployments

- It supports web applications written for common platforms
  - Java, .NET, PHP, Node.js, Python, Ruby, Go and Docker
- You upload your code
  - Elastic Beanstalk automatically handles the deployment
  - Deploys on servers such as Apache, NGINX, Passenger, Puma, and Microsoft Internet Information Servies (IIS)

### Benefits of Elastic Beanstalk

- Fast and simple to start using
- Developer productivity
- Difficult to outgrow
- Complete resource control

## 9. Module Summary

Which AWS service helps developers quickly deploy resources which can make use of different programming languages such as .Net and Java?

1. AWS CloudFormattion
2. AWS SQS
3. AWS Elastic Beanstalk ✅
4. Amazon Elastic Compute Cloud (Amazon EC2)
