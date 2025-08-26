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
