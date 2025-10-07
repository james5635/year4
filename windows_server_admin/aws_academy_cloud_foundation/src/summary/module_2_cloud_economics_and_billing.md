

# 💰 **Cloud Economics and Billing — Summary**

## 1. **AWS Pricing Fundamentals**

### Key Cost Drivers

1. **Compute** – Charged per hour/second (Linux), varies by instance type
2. **Storage** – Charged per GB
3. **Data transfer** – Outbound charged per GB, inbound usually free

### Payment Principles

* **Pay for what you use** → No upfront costs
* **Pay less by using more** → Volume discounts, tiered pricing
* **Pay even less as AWS grows** → AWS passes cost savings from scale to customers
* **Custom Pricing** → For high-volume or unique projects

### Free Tier & Services with No Charge

* AWS Free Tier → Hands-on experience for 1 year
* No charge for: VPC, Elastic Beanstalk, Auto Scaling, CloudFormation, IAM *(some charges may apply if used with other services)*

---

## 2. **Total Cost of Ownership (TCO)**

### On-premises vs AWS Cloud

| Traditional Infrastructure | AWS Cloud                         |
| -------------------------- | --------------------------------- |
| Hardware & facilities      | No upfront expense; pay as you go |
| Resource administration    | Scale up/down quickly             |
| IT labor & contacts        | Self-service infrastructure       |
| Costs                      | Improved agility & time to market |

### TCO Considerations

* **Server, Storage, Network Costs** → Hardware, software, admin, facility costs
* **IT Labor Costs** → Server/storage/network administration
* Moving to AWS can save up to **96% annually**

### AWS Pricing Calculator

* Estimate monthly costs
* Identify cost-saving opportunities
* Model solutions before building

### Additional Benefits

* **Hard:** Lower hardware/software costs, operational costs, backup/disaster recovery
* **Soft:** Increased developer productivity, faster time-to-market, agile business processes, global reach

---

## 3. **AWS Organizations**

### Purpose

* Centralized account management
* Consolidated billing
* Policy-based access control

### Security Features

* IAM policies → Control service access for users, groups, roles
* Service Control Policies (SCPs) → Control services at the organizational unit (OU) level

### Access Methods

* AWS Management Console
* AWS CLI
* SDKs / API

---

## 4. **AWS Billing Tools**

* **Billing Dashboard** → Overview of usage and costs
* **AWS Budgets** → Set cost and usage limits
* **AWS Cost Explorer** → Analyze and visualize spending
* **AWS Cost & Usage Reports** → Detailed usage data

---

## 5. **AWS Technical Support Models**

| Support Plan   | Key Features                                    |
| -------------- | ----------------------------------------------- |
| **Basic**      | Resource Center, Health Dashboard, FAQs, Forums |
| **Developer**  | Early development support                       |
| **Business**   | Production workload support                     |
| **Enterprise** | Mission-critical workload support, TAM guidance |

### Tools & Guidance

* AWS Trusted Advisor → Best practice checks (cost, security, performance, fault tolerance, service limits)
* Technical Account Manager (TAM) → Proactive guidance
* AWS Support Concierge → Account assistance

---

## ✅ **Module Summary Question**

**Q:** Which AWS service provides infrastructure security optimization recommendations?
**A:** **3. AWS Trusted Advisor** ✅

