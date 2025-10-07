# ☁️ **Cloud Concepts Overview — Summary**

## 1. **Introduction to Cloud Computing**

- **Cloud computing:** On-demand delivery of compute, storage, database, applications, and IT resources over the internet with **pay-as-you-go pricing**
- **Infrastructure as software:** Treat resources as configurable software, not fixed hardware
- **Traditional vs Cloud Model:**
  - Traditional: Hardware-based, long procurement, upfront cost, guess capacity
  - Cloud: Flexible, scalable, cost-effective, reduces undifferentiated heavy-lifting

### Cloud Service Models

| Model | Description                 | Control        |
| ----- | --------------------------- | -------------- |
| IaaS  | Infrastructure as a service | Most control   |
| PaaS  | Platform as a service       | Medium control |
| SaaS  | Software as a service       | Least control  |

### Deployment Models

- **Cloud (public)**
- **Hybrid**
- **On-premises (private cloud)**

---

## 2. **Advantages of Cloud Computing**

- **Trade capital expense for variable expense** → Pay for what you use
- **Economies of scale** → AWS passes savings to customers
- **Stop guessing capacity** → Scale on demand
- **Increase speed and agility** → Resources available in minutes instead of weeks
- **Global reach** → Deploy worldwide in minutes
- **Reduced infrastructure maintenance costs**

---

## 3. **Introduction to AWS**

- **AWS:** Secure, global cloud platform providing compute, storage, database, network, and management tools
- **AWS Services Categories:**
  - Compute: EC2, Lambda, Elastic Beanstalk, ECS, EKS, Fargate
  - Storage: S3, Glacier, EFS, EBS
  - Database: RDS, DynamoDB, Redshift, Aurora
  - Management/Governance: Trusted Advisor, CloudWatch, CloudTrail, Well-Architected Tool, Auto Scaling, Config
  - Cost Management: Cost & Usage Report, Budgets, Cost Explorer
  - Networking/CDN: VPC, Route 53, CloudFront, ELB
  - Security/Compliance: IAM, Cognito, Shield, Artifact, KMS

### Interacting with AWS

1. **AWS Management Console** – GUI
2. **AWS CLI** – Command-line commands/scripts
3. **SDKs** – Programmatic access in code (Java, Python, etc.)

---

## 4. **AWS Cloud Adoption Framework (AWS CAF)**

- Provides guidance and best practices for successful cloud adoption
- **Six perspectives:**
  - **Business:** IT finance, strategy, benefits realization, risk management
  - **People:** Resource, career, incentive, training, organizational change management
  - **Governance:** Portfolio/program management, performance measurement, licensing
  - **Platform:** Provisioning compute, network, storage, database; architecture; app development
  - **Security:** Identity/access management, detective controls, infrastructure security, data protection, incident response
  - **Operations:** Monitoring, resource management, change/release management, reporting, business continuity

---

## 5. **Module Summary**

- Defined cloud computing models (IaaS, PaaS, SaaS)
- Recognized six key advantages of cloud computing
- Reviewed AWS service categories and core services
- Understood AWS Cloud Adoption Framework (CAF)

### Sample Exam Question

**Q:** Why is AWS more economical than traditional data centers for variable compute workloads?
**A:** **C. Amazon EC2 instances can be launched on-demand when needed** ✅
