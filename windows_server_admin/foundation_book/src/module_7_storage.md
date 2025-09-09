# Storage

## 1. Amazon Elastic Block Store (Amazon EBS)

### AWS storage options: Block storage versus object storage

what if you want to change one character in a 1-GB file?

- Block storage: change one block (piece of the file) that contains the character
- Object storage: entire file must be updated

### Amazon EBS

Amazon EBS enables you to create individual storage volumes and attach them to an Amazon EC2 instance

- Amazon EBS offers block-lebel storage
- Volumes are automatically replicated within its Availability zone
- It can be backed up automatically to Amazon S3 through snapshots
- Uses include —
  - Boot volumes and storage for Amazon Elastic Compute Cloud (Amazon EC2)
  - Data storage with a file system
  - Databases hosts
  - Enterprise applications

### Amazon EBS volume type

- Solid State Drives (SSD)
- Hard Disk Drives (HDD)

### Amazon EBS

- Snapshots
  - Point-in-time snapshots
  - Recreate a new volume at any time
- Encryption
  - Encrypted Amazon EBS volumes
  - No additional cost
- Elasticity
  - Increase capacity
  - change to different types

### Amazon EBS: Volumes, IOPS, and pricing

1. Volues
   - Amazon EBS volumes persits independently from the instance
   - All volume types are charged by the amount that is provisioned per month
2. IOPS
   - General Purpose SSD:
     - Charged by the amount that you provision in GB per month until storage is released
   - Magnetic:
     - Charged by the number of requests to the volume
   - Provisioned IOPS SSD
     - Charged by the amount that you provision in IOPS (multiplied by the percentage of days that you provision for the month)
3. Snapshots
   - Added cost of Amazon EBS snapshots to Amazon S3 is per GB-month of data stored
4. Data transer
   - Inbound data transer is free
   - Outbound data transfer across Regions incurs charges.

## 2. AWS S3 (Amazon Simple Storage Service)

### Storage

- Data is stored as objects in buckets
- Virtually unlimited storage
  - single object is limited to 5 TB
- Designed for 11 9s of durability
- Granular access to bucket and objects

### Amazon S3 Storage Classes

Amazon S3 offers a range of object-level storage classes that are desinged for different use cases:

- Amazon S3 Standard
- Amazon S3 Intelligent-Tiering
- Amazon S3 Standard-Infrequent Access (Amazon S3 Standard-IA)
- Amazon S3 One-zone-infrequent Access (Amazon S3 One Zone-IA)
- Amazon S3 Glacier
- Amazon S3 Glacier Deep Archive

### Amazon S3 bucket URLs

To upload your data:  

1. Create a bucket in an AWS Region
2. Upload almost any numbers of objects to the bucket

### Data is redundantly stored in Region

### Designed for seamless scaling

### Access the data anywhere

- AWS Management Console
- AWS Command Line Interface
- SDK

### Amazon S3 common scenarios

- Backup and storage
- Application hosting
- Media hosting
- Software delivery

### Amazon S3 pricing

- Pay only for what you see, including —
  - GBs per month
  - Transfer OUT to other Regins
  - PUT, COPY, POST, LIST and GET requests
- You do not pay for —
  - Transfers IN to Amazon S3
  - Transfers OUT from Amazon S3 to Amazon CloudFront or Amazon EC2 in the same Region

### Amazon S3: Storage Pricing

To estimate Amazon S3 costs, consider the following:  

1. Types of storage classes —
   - Standard storages is desinged for:
     - 11 9s of durability
     - Four 9s of durability

   - S3 Standard-Infrequent Access (S-IA) is designed for:
     - 11 9s of durability
     - Three 9s of availability

2. Amount of storage —
   - The numbers and size of objects
3. Request —
   - The number of requests (GET, PUT, COPY)
   - Type of requests:
     - Different rates for GET requests than other requests
4. Data Transfer —

- Pricing is based on the amount of data that is transferred out of the Amazon S3 Region
  - Data Transfer in is free, but you incur changes for data that is tranferred out

## 3. AWS EFS (Amazon Elastic File System)

Amazon EFS features:

- File Storage in the AWS Cloud
- Works well for big data and analytics, media processing workflows, content management, web serving, and home directories
- Petabyte-scale, low-letency file system
- Shared storage
- Elastic capacity
- Supports Network file system (NFS) versions 4.0 and 4.1 (NFSv4)
- Compatible with all linux-based AMIs for Amazon EC2

### Amazon EFS architecure

### Amazon EFS implementation

1. Create your amazon EC2 resources and launch your Amazon EC2 instance
2. Create your amazon EFS file system
3. Create your mount targets in the appropriate subnets
4. Connect your Amazon EC2 instances to the mount targets
5. Verify the resources and protection of your AWS account

### Amazon EFS resources

File system

- Mount target
  - Subnet ID
  - Security groups
  - One or more per file system
  - Create in a VPC subnet
  - one per availability Zone
  - Must be in the same VPC
- Tags
  - Key-Value pairs

## 4. Amazon S3 Glacier

Amazon S3 Glacier, is a data archiving service that is designed for security, durability and an extremely low cost

- Amazon S3 Glacier is designed to provide 11 9s of durability for objects
- It supports the encryption of data in transit and a rest through Secure Sockets Layer (SSL) or Transport Layter Security (TLS)
- The Vault Lock Feature enforces compliance through a policy
- Extremly low-cost design works well for long-term archiving
  - Provides three options for access to archives—expected, standard, and bulk—retrival times range from a few minutes to several hours

### Amazon S3 Glacier

- Storage service for low-cost data archiving and long-term backup
- you can configure lifecycle archiving of Amazon S3 content to Amazon S3 Glacier
- Retrieval options
  - Standard: 3-5 hours
  - Bulk: 5-12 hours
  - Exprected: 1-5 minutes

### Amazon S3 Glacier use cases

- Media asset archiving
- Healthcare information archiving
- Regulatory and  compliance archiving
- Scientific data archiving
- digital preservation
- Magnetic tape replacement

### Using Amazon S3 Glacier

Amazon S3 lifecycle policies enable you to delete or move objects based on age

### Amazon S3 storage classes

| Storage Class                      | Features                                                                                                                                                                                |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| S3 standard                        | <ul><li> >= three availability zones</li></ul>                                                                                                                                          |
| S3 standard-infrequent access (IA) | <ul><li>Retrieval fee is associated with objects</li><li>Most suitable for infrequently accessed data</li></ul>                                                                         |
| S3 Intelligent-Tiering             | <ul><li>It automatically moves objects between tiers based on access patterns</li><li>>=3 availability zones</li></ul>                                                                  |
| S3 One Zone-IA                     | <ul><li>One Availability Zone</li><li>Costs less than Amazon S3 Standard-IA</li></ul>                                                                                                   |
| S3 Glacier                         | <ul><li>It is not available for real-time access</li><li>YOu must restore objects before you can access them</li><li>restoring objects can take between 1 minute and 12 hours</li></ul> |
| S4 Glacier Deep Archive            | <ul><li>Lowest cost storage for long-term retention (7-10 years)</li><li>>= Availability zones</li></ul>                                                                                |

### Storage Comparison

| Type              | Amazon S3                     | Amazon S3 Glacier      |
| ----------------- | ----------------------------- | ---------------------- |
| Data Volume       | No limit                      | no limit               |
| Average Latency   | ms                            | minute/hours           |
| Item size         | 5 TB maximum                  | 40 TB maximum          |
| Cost/GB per Month | Higher Cost                   | Lower cost             |
| Billed Requests   | PUT, COPY, POST, LIST and GET | UPLOAD and retrieval   |
| Retrival Pricing  | Per Request                   | Per request and per GB |

### Server-side encryption

### Security with Amazon S3 Glacier

- Control access with IAM
- Amazon S3 Glacier encrypts your data with AES-256
- Amazon S3 Glacier manages your keys for you

### Module Summary

A Company wants to store data that is not frequently accessed. What is the best and cost-effective solution that should be considered?

1. Amazon Storage Gatewat
2. Amazon S3 Glacier ✅
3. Amazon EBS
4. Amazon S3
