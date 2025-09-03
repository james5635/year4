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

## 3. AWS EFS
