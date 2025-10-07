
# 🌍 **AWS Global Infrastructure Overview — Summary**

## 🧭 **1. AWS Global Infrastructure**

**Purpose:**
Provide a **flexible**, **reliable**, **scalable**, and **secure** cloud environment with **high global network performance**.

### 🗺️ **AWS Regions**

* **Geographical areas** containing multiple Availability Zones.
* **You control** data replication between Regions.
* Regions are connected via AWS **backbone network**.
* **Choose a Region** based on:

  * Data governance & legal requirements
  * Customer proximity (latency)
  * Service availability
  * Cost differences

---

### 🏢 **Availability Zones (AZs)**

* Each Region has **multiple AZs** → **69 worldwide**.
* Each AZ is:

  * A fully isolated infrastructure partition
  * Made up of discrete data centers
  * Connected to other AZs via **high-speed private networks**
* You choose the AZs; AWS recommends **replication across AZs** for **fault tolerance & resiliency**.

---

### 🖥️ **AWS Data Centers**

* **Secure** facilities where data is stored and processed.
* Redundant power, networking, connectivity.
* **50,000–80,000 physical servers** per data center.

---

### 🌐 **Points of Presence (PoPs)**

* **187 global locations** (176 edge + 11 regional edge caches).
* Used with **Amazon CloudFront** (Content Delivery Network) to:

  * **Deliver content globally** with low latency
  * **Cache infrequently accessed content** in regional edge caches

---

### ⚡ **Infrastructure Features**

| Feature               | Description                                                |
| --------------------- | ---------------------------------------------------------- |
| **Elasticity**        | Dynamically adjust capacity based on demand                |
| **Scalability**       | Adapt to growth seamlessly                                 |
| **Fault tolerance**   | Continue operations despite failures (built-in redundancy) |
| **High availability** | Minimized downtime with little to no human intervention    |

---

## 🧰 **2. AWS Services Overview**

AWS services are organized into **Infrastructure**, **Foundation**, **Platform**, and **Application** layers.

### 🏗️ **Infrastructure Layer**

* **Regions**, **Availability Zones**, **Edge Locations**

---

### 🧱 **Foundation Services**

| Category       | Examples                                                             |
| -------------- | -------------------------------------------------------------------- |
| **Compute**    | EC2, Auto Scaling, Lambda, ECS, EKS, Elastic Beanstalk, Fargate      |
| **Networking** | VPC, ELB, CloudFront, Route 53, Transit Gateway, Direct Connect, VPN |
| **Storage**    | S3, EBS, Glacier, EFS                                                |

---

### 🛠️ **Platform Services**

| Category                    | Examples                                                      |
| --------------------------- | ------------------------------------------------------------- |
| **Databases**               | RDS, Aurora, DynamoDB, Redshift                               |
| **Analytics**               | Real-time data warehouse, cluster computing                   |
| **Application Services**    | Queuing, orchestration, app streaming, email, search          |
| **Deployment & Management** | Containers, DevOps tools, monitoring (CloudWatch), CloudTrail |

---

### 🧑‍💻 **Application Services**

* Collaboration, file sharing, virtual desktops, mobile analytics, notifications, identity sync, etc.

---

### 🛡️ **Security, Identity & Compliance**

* IAM, AWS Organizations, Cognito, Artifact, KMS, Shield

---

### 💰 **Cost Management**

* Cost & Usage Reports, Budgets, Cost Explorer

---

### 🧭 **Management & Governance**

* Management Console, CLI, Config, Auto Scaling, CloudWatch, Trusted Advisor, Well-Architected Tool, CloudTrail

---

## 📝 **Module Summary**

**Q:** Which AWS global infrastructure component does **Amazon CloudFront** use to ensure **low-latency delivery**?
✅ **2. AWS Edge Locations**

