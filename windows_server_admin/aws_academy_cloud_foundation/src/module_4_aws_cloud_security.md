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
+---------------------------------------------------------------------------------------+
| Customer Data                                                                         |
+---------------------------------------------------------------------------------------+
| Applications, IAM                                                                     |
+---------------------------------------------------------------------------------------+
| Operating System, network, and firewall configuration                                 |
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

## 3. Securing a New AWS Account

### AWS account root user access versus IAM access

```txt
+---------------------------------+----------------------------------+
| Account root user               | IAM                              |
+---------------------------------+----------------------------------+
| Privileges cannot be controlled | Integrate with other AWS servies |
| Full access to all resourcs     | Identity federation              |
|                                 | Secure access for applications   |
|                                 | Granular permissions             |
+---------------------------------+----------------------------------+
```

## 4. Securing Accounts

### AWS Organization

- AWS Organizations enables you to consolidate multiple AWS accounts so that you centrally manage them.  
- Security features of AWS Organizations:
  - Group AWS accounts into organizational units (OUs) and attach different access policies to each OU
  - Integration and support for IAM
    - Permissions to a user are the intersection of what is allowed by AWS Organizations and what is granted by IAM in that account
  - Use service control policies to establish control over the AWS services and API actions that each AWS account can access

### AWS Organizations: Service control policies

- Service control policies (SPCs) offer centralized control over accounts
  - Limit permissions that are available in an account that is part of an organization
- Ensures that accounts comply with access control guidelines
- SCPs are similar to IAM permissions policies
  - They use similar syntax
  - However, an SCP never grants permissions
  - Instead, SPCs specify the maximum permissons for an organization

### AWS Key Management Service (AWS KMS)

AWS Key Management Service (AWS KMS) features:

- Enables you to create and manage encryption keys
- Enables you to control the use of encryption across AWS services and in your applications
- Integrate with AWS CloudTrail to log all key usage
- Uses hardware security modules (HSMs) that are validated by Federal Information processing standards (FIPS) 140-2 to protect keys

### Amazon Cognito

Amazon Cognito features:  

- Adds user sign-up, sign-in and access control to your web and module applications
- Scales to millions of users
- Support sign-in with social identity providers, such as Facebook, Google and Amazon and enterprise identity providers, such as Microsoft Azure Directory via Security Assertion Markup Language (SAML) 2.0

### AWS Shield

- AWS Shield features:
  - is a managed distributed denial of service (DDos) protection service
  - Safeguards applications running on AWS
  - Provide always-on detection and automatic inline mitigations
  - AWS Shield Standard enabled for at no additional cost. AWS Shielf Advanced is an optional paid service
- Use it to minimize application downtime and latency

## 5. Securing Data

### Encryption of data in transit

- Encyption of data in transit (data moving across a network)
  - Transport Layer Security (TLS)—formerly SSL—is an open standard protocol
  - AWS Certificate Manager provides a way to manage, deploy, and renew TLS or SSL certificates
- Secure HTTP (HTTPS) creates a secure tunnel
  - Uses TLS or SSL for the bidirectional exchange of data
- AWS services support data in transit encryption

## 6. wokring to ensure compliance

### AWS compliance program

- customers are subject to many different security and compliance regulations and requirements
- AWS engages with cerifying bodies and independent auditors to provide customers with detailed information about the policies, processes and controls that are established and operated by AWS
- Compliance programs can be broadly categorized—
  - Certifications and attestations
    - Assessed by a third-party, independent auditor
    - Examples: ISO 27001, 27017, 27018, and ISO/IEC 9001
  - Laws, regulations, and privacy
    - AWS provides security features and legal agreements to support compliance
    - Examples: EU General Data Protection Regulation (GDPR), HPAA
  - Alignments and frameworks
    - industry or function-specific security or compliance requirements
    - Example: Center for internet security (CIS), EU-US Privacy Shield  certified

### AWS config

- Assess, audit, and evaluate the configurations of AWS resources
- Use for continuous monitoring of configurations
- Automaticallly evaluate recorded configurations versus desired configurations
- Review configuration changes
- View detailed configuration histories
- Simplify compliance auditing and security analysis

### AWS Artifact

- Is a resource for compliance-related information
- Provide access to security and complicance reports, and select online agreements
- Can access example downloads
  - AWS ISO certifications
  - Payment Card Industry (PCI) and Service Organization Control (SOC) reports
- Access AWS Artifact directly from the AWS Management Console
  - Under Security,Identity & Compliance, click artifact

## 7. Module summary

Which of the following is AWS's responsibility under the AWS shared responsibility model?

1. Configuring third-party applications
2. Maintaining physical hardware ✅
3. Securing applicatin access and data
4. Managing custom Amazon Machine Images (AMIs)
