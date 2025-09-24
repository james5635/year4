# AWS Global Infrastructure Overview

## 1. AWS Global Infrastructure

* **Built for** flexibility, reliability, scalability, security, and high network performance.

### AWS Regions

* Geographical areas with full redundancy and connectivity.
* Consist of 2+ **Availability Zones (AZs)**.
* Factors when choosing: compliance/legal, proximity (latency), available services, cost.

### Availability Zones (AZs)

* Multiple per region, each isolated but interconnected with high-speed private networks.
* Fault-isolated, redundant, resilient.
* Best practice → replicate data/resources across AZs.

### AWS Data Centers

* Secure, redundant (power, networking, connectivity).
* Typically host 50k–80k physical servers.

### Points of Presence (PoPs)

* **187 locations** (176 edge, 11 regional caches).
* Used by **Amazon CloudFront** for global CDN → low-latency content delivery.
* Regional caches → optimize infrequently accessed content.

### Infrastructure Features

* **Elasticity & Scalability** → dynamic adjustment to demand and growth.
* **Fault-tolerance** → continues operating despite failures.
* **High availability** → minimal downtime, automated recovery.

## 2. AWS Services

### Foundational Services

* **Infrastructure**: Regions, AZs, Edge Locations.
* **Foundation Services**: Compute, Networking, Storage.
* **Platform Services**: Databases, Analytics, App services, DevOps, Identity, Mobile.
* **Application Services**: Virtual desktops, Collaboration/sharing.

### Key Categories

* **Storage**: S3, EBS, Glacier, EFS.
* **Compute**: EC2, Auto Scaling, ECS, ECR, Beanstalk, Lambda, EKS, Fargate.
* **Database**: RDS, Aurora, Redshift, DynamoDB.
* **Networking/CDN**: VPC, ELB, CloudFront, Route 53, Transit Gateway, Direct Connect, VPN.
* **Security**: IAM, Organizations, Cognito, Artifact, KMS, Shield.
* **Cost Management**: Cost & Usage Report, Budgets, Cost Explorer.
* **Management & Governance**: Console, CLI, CloudWatch, Auto Scaling, Config, CloudTrail, Trusted Advisor, Well-Architected Tool.

## Module Summary

* AWS **Regions** = geographic clusters of data centers.
* **Availability Zones** = isolated, resilient data centers within regions.
* **Edge Locations** = used by **CloudFront** for low-latency content delivery.

**Sample exam Q:**
Which AWS component does CloudFront use for low-latency delivery?
✅ **AWS edge locations**
