# Cloud Concepts Overview

## 1. Introduction to cloud computing

### What is Cloud Computing?

cloud computing is the on-demand delivery of compute power, database, storage, applications, and other IT resources via the internet with pay-as-you-go pricing.  

### Infrastrucure as hardware

Cloud computing enables you to stop thinking of your infrastructure as hardware, and instead think of (and use) it as software.

### Traditional computing model

- Infrastructure are hardware
- Hardware solutions:
  - Require space, staff, physical security, planning, captal expenditure
  - Having a long hardware procurement cycle
  - Require you to provision capacity by guessing theoretical maximum peaks

### Cloud computing model

- Infrastructure as software
- Software solutions:
  - Are flexible
  - Can change more quickly, easily, and cost-effectively than hardware solutions
  - Eliminate the undifferentiated heavy-lifting tasks

### Cloud service models

1. IaaS (infrastructure as a service)
2. Paas (Platform as a service)
3. Saas (software as a service)  
More control over IT resources (1) -> Less control over IT resources (3)

```
+-------------------------------+ +-------------------------+ +-------------------------+
| Iaas                          | | Paas                    | | Saas                    |
| (infrastructure as a service) | | (platform as a service) | | (software as a service) |
+-------------------------------+ +-------------------------+ +-------------------------+
---------------------------------------------------------------------------------------->
More control over IT resources                             Less control over IT resources
```

### Cloud computing deployment models

- Cloud
- Hybrid
- On-premises (private cloud)

### Similarities between AWS and traditional IT

| Traditional, on-premises IT space | AWS                                           | Type                 |
| --------------------------------- | --------------------------------------------- | -------------------- |
| Firewalls, ACLs, Administrators   | Security Groups, Network ACLs, IAM            | Security             |
| Router, Network Pipeline, Switch  | Elastic Load balancing, Amazon VPC            | Networking           |
| On-premises servers               | AMI => Amazon EC2 instances                   | Compute              |
| DAS, SAN, NAS, RDBMS              | Amazon EBS, Amazon EFS, Amazon S3, Amazon RDS | Storage and database |

## 2. Advantage of the cloud

### Trade capital expense for variable expense

- Data center investment based on forecast
- Pay only for the amount you consume

### Massive economies of scale

Because of aggregate usage from all customers, AWS can achieve higher economies of scale and pass savings on to customers

### Stop guessing capacity

- Overestimated server capacity ❌
- Underestimated server capacity ❌
- Scaling on demand ✅

### Increase speed and agility

- Weeks between wanting resources and having resources ❌
- Minutes between wanting resources and having resources ✅

### Stop spending money on running and maintaining data centers

### Go global in minutes

## 3. Introduction to AWS

### What are web servies?

A web service is any piece of software that make itself available over the internet and use a standardized format—such as Extensible Markup Language (XML) or JavaScript Object Notation (JSON)—for the request and the response of an application programming interface (API) interaction

```
                                     Request message
client -------------------- Internet ------------------> Web service
       <-------------------          -------------------
       Response message
```

### What is AWS?

- AWS is a secure cloud platform that offers a broad set of global cloud-based products
- AWS provides you with on-demand access to compute,, storage, network, database, and other IT resources and management tools.
- AWS offers flexibility
- you pay only for the individual services you need, for as long as you use theme
- AWS service work together like building blocks

### Categiries of AWS services

- Analytics
- Application Integration
- AR and VR
- Blockchain
- Business Applications
- Compute
- Cost Management
- Customer Management
- Database
- Developer Tools
- End User Computing
- Game Tech
- Internet of Things
- Machine Learning
- Management and Governance
- Media Serives
- Migration and Transfer
- Mobile
- Networking and Content Delivery
- Robotics
- satellite
- Security, identity and compliance
- Storage

### Chosing a service

The service you select depends on your business goals and technology requirements

- Amazon EC2
- AWS Lambda
- AWS Elastic Beanstalk
- Amazon Lightsail
- AWS Batch
- AWS Outposts
- AWS Fargate
- Amazon EKS
- Amazon ECS
- VMware Cloud on AWS

### Services covered in this course

Compute services:  

- Amazon EC2
- AWS lambda
- AWS Elastic Beanstalk
- Amazon EC2 Auto Scaling
- Amazon ECS
- Amazon EKS
- Amazon ECR
- AWS Fargate
Storage Service:  
- Amazon S3
- Amazon S3 Glacier
- Amazon EFS
- Amazon EBS
Database Services:  
- Amazon RDS
- Amazon DynamoDB
- Amazon Redshift
- Amazon Aurora
Management and Governance services:  
- AWS Trusted Advisor
- AWS CloudWatch
- AWS CloudTrail
- AWS Well-Architected Tool
- AWS Auto Scaling
- AWS Command Line Interface
- AWS Config
- AWS Management Console
- AWS Organizations
AWS Cost Management services:  
- AWS Cost & Usage Report
- AWS Budgets
- AWS Cost Explorer
Networking and Content Delivery services:  
- Amazon VPC
- Amazon Route 53
- Amazon CloudFront
- Elastic Load Balancing
Security, Identity, and Compliance services:  
- AWS IAM
- Amazon Cognito
- AWS Shield
- AWS Artifact
- AWS KMS

### Three way to interact with AWS

- AWS Management Console: Easy-to-use graphical interface
- Command Line Interfaces (AWS CLI): Access to services by discrete commands or scripts
- Software Development Kits (SDKs): Access services directly from your code (such as Java, Python, and others)

## 4. Moving to the AWS Cloud

### AWS Cloud Adoption Framework (AWS CAF)

```
+------------+------------+
| Business   | PLATFORM   |
| PEOPLE     | SECURITY   |
| GOVERNANCE | OPERATIONS |
+------------+------------+
```

- AWS CAF provides guidance and best practices to help organizations build a comprehensive approach to cloud computing across the organization and throughout the IT lifecycle to accelerate successful cloud adoption.
- AWS CAF is organized into six perspectives
- Perspectives consist of sets of capabilities

### Six core perspectives

```
+------------+
| Business   |
| PEOPLE     |
| GOVERNANCE |
+------------+
Focus on business capabilities
```

```
+------------+
| PLATFORM   |
| SECURITY   |
| OPERATIONS |
+------------+
Focus on technical capabilities
```

### Business perspective

```
+--------------------------+
| BUSINESS                 |
+--------------------------+
| IT finance               |
| IT strategy              |
| Benefits realization     |
| Business risk management |
+--------------------------+
Business perspective capabilities
```

> "We must ensure that IT is aligned with business needs and that IT investments can be traced to demonstrable business results."
> — Business managers, finance managers, budget owners, and strategy stakeholders
>
### People perspective

```
+----------------------------------+
| PEOPLE                           |
+----------------------------------+
| Resource Management              |
| Incentive management             |
| career management                |
| Traning management               |
| Organizational change management |
+----------------------------------+
People perspective capabilities
```

> "We must prioritize traning, staffing, and organizational changes to build an agile organization."
> — Human resources, staffing, and people managers
>
### Governance perspective

```
+----------------------------------+
| GOVERNACE                        |
+----------------------------------+
| Portfolio management             |
| Program and project management   |
| Business performance measurement |
| License management               |
+----------------------------------+
Governance perspective capabilities
```

> "We must ensure that skills and processes align IT strategy and goals with business strategy and goals so the organization can maximize the business value of its IT investment and minimize business risks."
> — CIO, program managers, enterprise archtects, business analysis, and portfolio managers
>
### Platform perspective

```
+-----------------------------------+
| PLAYFORM                          |
+-----------------------------------+
| Compute provisioning              |
| Network provisioning              |
| Storage provisioning              |
| Database provisioning             |
| Systems and solution architecture |
| Application development           |
+-----------------------------------+
Platform perspective capabilities
```

> "We must understand and communicate the nature of IT systems and their relationships. We must be able to describe the architecture of the target state environment in details."
> — CTO, IT managers, and solutions architects
>
### Security perspective

```
+--------------------------------+
| SECURITY                       |
+--------------------------------+
| identity and access management |
| Detective control              |
| Infrastructure security        |
| Data protection                |
| incident response              |
+--------------------------------+
Security perspective capabilities
```

> "We must ensure that the organization meets its security objectives."
> — CISO, IT security managers, and IT security analysis
>
### Operations perspective

 ```
+------------------------------------------------+
| OPERATIONS                                     |
+------------------------------------------------+
| Service monitoring                             |
| Application performance monitoring             |
| Resource inventory management                  |
| Release inventory management/change management |
| Reporting and analytics                        |
| Business continuity/Disaster recovery          |
| IT service catalog                             |
+------------------------------------------------+
Operations perspective capabilites
 ```

> We align with and support the operations of the business, and define how day-to-day, quarter-to-quarter, and year-to-year business will be conducted.
> — IT operations managers and IT support managers
>
## 5. Module Summary

In summary, in this module you learned how to:

- define different types of cloud computing models
- describe six advantages of cloud computing
- recognize the main AWS service categories and core services
- review the AWS Cloud Adoption Framework

### Sample exam question

Why is AWS more economical than traditional data centers for applications with variable compute workloads?  
A. Amazon Elastic Compute Cloud (Amazon EC2) costs are billed on a monthly basis  
B. Customers retain full administative access to their Amazon EC2 instances  
C. Amazon EC2 instances can be launched on-demand when needed ✅  
D. Customers can permanently run enough instances to handle peak workloads
