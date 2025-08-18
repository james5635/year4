# AWS Global Infrastructure Overview

## 1. AWS Global Infrastructure

- The AWS Global infrastructure is designed and built to deliver a flexible, reliable, scalable, and secure cloud computing environment with high-quality global network performance.
- This map shows the current AWS regions and more that are coming soon

### AWS Region

- An AWS region is a geographical area
  - Data replication across Regions is controlled by you
  - Communication between Regions uses AWS backbone network infrastructure
- Each Region provides full redundancy and connectivity to the network
- A region typically consists of two or more availability zones

### Selecting a region

Determine the right region for your services, applications, and data based on these factors

- Data governance, legal requirements
- Proximity to customers (latency)
- Services available within the region
- Costs (vary by region)

### Availability Zones

- Each region has multiple availability zones
- Each Availability Zone is a fully isolated partition of the AWS infrastructure
  - There are currently 69 Availability zones worldwide
  - Availability zones consist of discrete data centers
  - They are designed for fault isolation
  - They are interconnected with other Availability Zones by using high-speed private networking
  - you choose you availability zones
  - AWS recommends replicating data and resource across Availability Zones for resiliency
  
### AWS data centers

- AWS data centers are designed for security
- Data centers are where the data resides and data processing occurs
- Each data center has redundant power, networking, and connectivity, and is housed in a separate facility
- A data center typically has 50,000 to 80,000 physical servers

### Point of Presence

- AWS provide a global network of 187 Points of Presence locations
- Consists of 176 edge locations and 11 Regional edge caches
- Used with Amazon CloudFront
  - A global Content Delivery Network (CDN) that deliver content to end users with reduced latency
- Regional edge caches used for content with infrequent access

### AWS Infrastructure features

- Elasticity and scalability
  - Elastic infrastrructure; dynamic adaption of capacity
  - Scalable infrastructure; adapt to accommodate growth
- Falut-tolerance
  - Continues operating properly in the presence of a failure
  - Built-in redundancy of components
- High availability
  - High level of operational performance
  - Minimized downtime
  - No human intervention

## 2. AWS Service

### AWS foundational services

```txt
            +--------------------+----------------------------+
Application | Virtual desktops   | Collaoration and sharing   |
            +--------------------+----------------------------+
                 +------------+--------------------------+----------------------+---------------------------+------------------+
                 | Databases  | Analytics                | Application services | Deployment and management | Mobile servies   |
Plaform services +------------+--------------------------+----------------------+---------------------------+------------------+
                 | Relational | Cluster computing        | Queuing              | Containers                | Identity         |
                 | NoSQL      | Real-time Data warehouse | Orchestration        | DevOps tools              | Sync             | 
                 | Caching    | Data workflows           | App Streaming        | Resource templates        | Mobile Analytics |
                 |            |                          | Transcoding          | Usage tracking            | Notifications    |
                 |            |                          | Email                | Monitoring and logs       |                  |
                 |            |                          | Search               |                           |                  |
                 +------------+--------------------------+----------------------+---------------------------+------------------+
                    +--------------------------------------------------------+------------+-------------------------------------+
Foundation Services | Compute (virtual automatic scaling, and load balacing) | Networking | storage (object block, and archive) |
                    +--------------------------------------------------------+------------+-------------------------------------+
               +---------+--------------------+----------------+
Infrastructure | Regions | Availability zones | Edge Locations |
               +---------+--------------------+----------------+
```

### Storage service category

- Amazon Simple Storage Service (Amazon S3)
- Amazon Elastic Block Store (Amazon EBS)
- Amazon Simple Storage Service Glacier
- Amazon Elastic File System (Amazon EFS)

### Compute service cetegory

- Amazon EC2
- Amazon EC2 Auto Scaling
- Amazon Elastic Container Service (Amazon ECS)
- Amazon EC2 Container Registry
- AWS Elastic BeanStalk
- AWS Lambda
- Amazon Elastic Kubernetes Service (Amazon EKS)
- AWS Fargate

### Database service category

- Amazon Relational Database Service
- Amazon Aurora
- Amazon Redshift
- Amazon DynamoDB

### Networking and content delivery service category

- Amazon VPC
- Elastic Load Balancing
- Amazon CloudFront
- AWS Transit Gateway
- Amazon Route 53
- AWS Direct Connect
- AWS VPN

### Security, identity, and compliance service category

- AWS identity and Access Management (IAM)
- AWS Organizations
- Amazon Cognito
- AWS Artifact
- AWS Key Management Service
- AWS Shield

### AWS cost management service category

- AWS cost and Usage Report
- AWS Budgets
- AWS cost explorer

### Management and governance service cetegory

- AWS Management Console
- AWS Config
- Amazon CloudWatch
- AWS Auto Scaling
- AWS Command Line Interface
- AWS Trusted Advisor
- AWS Well-Architected Tool
- AWS CloudTrail

### Module summary

which component of AWS global infrastructure does Amazon CloudFront use to ensure low-latency delivery?

1. AWS Regions
2. AWS edge locations ✅
3. AWS Availability Zones
4. Amazon Virtual Private Cloud (Amazon VPC)
