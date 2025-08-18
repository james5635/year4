# AWS Cloud Security

## 1. AWS Shared responsibility model

```txt
+----------------------------------------------------+ +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Customer: responsibility for security in the cloud | | Customer data                                                                                                                                                                    |
|                                                    | +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                    | | Platform, Applications, Identity & Access Management                                                                                                                             |
|                                                    | +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                    | | Operating System, Network & Firewall Configuration                                                                                                                               |
|                                                    | +-------------------------------------------------------------+--------------------------------------------------+-----------------------------------------------------------------+
|                                                    | | client-side data encryption & data integrity authentication | server-side encryption (file system and/or data) | networking traffic protection (encryption, integrity, identity) |
+----------------------------------------------------+ +----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
+----------------------------------------------------+ +-----------------------------------------------+
| AWS: responsibility for security of the cloud      | | Software                                      |                                                                                            
|                                                    | +-----------------------------------------------+
|                                                    | | Compute | Storage | Database | Networking     |                                                                                                                    
|                                                    | +-----------------------------------------------+
|                                                    | | Hardware/aws global infrastructue             |                                                                                                                          
|                                                    | +-----------------------------------------------+
|                                                    | | Regions | availability zones | edge locations |
+----------------------------------------------------+ +-----------------------------------------------+

```

### AWS responsibilty: Security of the cloud

AWS responsibilities:

- Physical security of data centers
  - Controlled, need-based access
- Hardware and Software infrastructure
  - storage decommissioning, host operating system (OS) access logging, and auditing
- Network infrastructure
  - intrusion detection
- Virtualization infrastructure
  - instance isolation

### Customer responsibility: Security in the cloud

```txt
+---------------------+
| Customer Data 
+----------------------
| Applications, IAM  
+----------------------
| Operating System, network, and firewall configuration
+--------------------------+------------------------+-----------------------------------+
| Client-side data         | server-side encryption | network-traffic                   |
| encryption and data      | (file system or data)  | protection                        |
| integrity authentication |                        | (encryption, integrity, identity) |
+--------------------------+------------------------+-----------------------------------+
Customer configurable
```

Customer responsibilities:

- Amazon Elastic Compute cloud (Amazon EC2) instance operating system
  - including patching, maintenance
- Applications
  - Passwords, role-based access, etc.
- Security group configuration
- OS or host-based firewalls
  - including intrusion detections or prevention systems
- Network configurations
- Account management
  - Login and permission settings for each user

### Service characteristics and security responsibilities

Example IaaS service managed by the customer:

- Amazon EC2
- Amazon Elastic Block store (Amazon EBS)
- Amazon Virtual Private Cloud (Amazon VPC)

Example PaaS services managed by AWS:

- AWS Lambda
- Amazon Relational Database Service (Amazon RDS)
- AWS Elastic BeanStalk

SaaS examples:  

- AWS Trusted Advisor
- AWS Shield
- Amazon Chime
Infrastructure as a service (Iaas)

- Customer has more flexibility over configuring networking and storage settings
- Customer is responsible for managing more aspects of the security
- Customer configures the access controls

Platform as a service (Paas)

- Customer does not need to manage the underlying infrastructure
- AWS handles the operating system, database patching, firewall configuration, and disaster recovery
- Customer can focus on managing code or data

Software as a service (Saas)

- Software is centrally hosted
- Licensed on a subscription model or pay-as-you-go basis
- Services are typically accessed via web broswer, mobile app, or application programming interface (API)
- Customers do not need to manage the infrastructure that suppors the service

## 2. AWS IAM

### AWS identity and Access Management (IAM)

- Use IAM to manage access to AWS resources —
  - A resource is an entity in an AWS account that you can work with
  - Example resources, an amazon EC2 instance or an Amazon S3 bucket
- Example — Control who can terminate Amazon EC2 instances
- Define fine-grained access rights —
  - who can access the resource
  - which resources can be accessed and what can the user do to the resource
  - How resources can be accessed
- IAM is a no-cost AWS account feature

### IAM: Essentail components

- IAM user: A person or application that can authenticate with an AWS account
- IAM group: A collection of IAM users that are granted identical authorization
- IAM policy: The document that defines which resources can be accessed and the level of acces to each resource
- IAM role: Useful mechanism to grant a set of permissions for making AWS service requests

### Authenticate as an IAM user to gain access

when you define an IAM user, you select what types of access the user is permitted to use  
Progammatic access

- Authenticate using
  - Access key ID
  - Secret access key
- Provide AWS CLI and AWS SDK access

AWS Management Console access

- Authenticate using:
  - 12-digit Account ID or alias
  - IAM user name
  - IAM passwords
- if enabled, multi-factor authentication (MFA) prompts for an authentication code

### IAM MFA

- MFA provides increased security
- In addition to user name and password MFA requirses a unique authentication code to access AWS services

### Authorization: What actions are permitted

### IAM: Authorization

### IAM Policies

- An IAM policy is a document that defines permissions
  - Enables fine-grained access control
- Two types of policies — identity-based and resource-based
- identity-based policies —
  - Attach a policy to any IAM entity
    - An IAM user, an IAM group, or an IAM role
  - Policies specify:
    - Actions that may be perfomed by the entity
    - Actions that may not be perfomed by the entity
  - A single policy can be attached to multiple entities
  - A single entity can have multiple policies attachec to it
- Resource-based policies
  - Attached to a resource (such as an S3 bucket)

### Resource-based policies

- Identity-based policies are attached to a user, group, or role
- Resource-based policies are attached to a resource (not to a user, group or role)
- Chatacteristics of resource-based policies —
  - specifies who has access to the resouce and what actions they can perform on it
  - The policies are inline only, not managed
- Resouce-based policies are supported only by some AWS services

### IAM permissions

### IAM groups

- An IAM group is a collection of IAM users
- A group is used to grant the same permissions to multiple users
  - Permissions granted by attaching IAM policy or policies to the group
- A user can belong to multiple groups
- There is no default group
- Groups cannot be nested

### IAM roles

- An IAM roles is an IAM identity with specific permissions
- Similar to an IAM user
  - Attach permissions policies to it
- Different from an IAM user
  - Not uniquely associated with one person
  - Intended to be assumed by a person, application, or service
- Role provides temporary security credentials
- Example of how IAM roles are used to delegate access —
  - used by an IAM user in the same AWS account as the role
  - used by an AWS service—such as Amazon EC2—in the same account as the role
  - Used by an IAM user in  a different AWS account than the role

### Example use of an IAM role

Senario:

- An application that runs on an EC2 instance needs access to an S3 bucket

Solution:

- define an IAM policy that grants access to the S3 bucket
- attach the policy to a role
- allow the EC2 instance to assume the role
