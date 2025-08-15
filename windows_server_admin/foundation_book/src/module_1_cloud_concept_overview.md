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
