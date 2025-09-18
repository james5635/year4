# Cloud Architecture

## 1. AWS Well-Architected Framework Design Principles

### Architecture: designing and building

```txt
Structure design <-----> Customer (Decision maker) <-----> Architect <----> Building Crew <-----> Completed structure
```

### What is the AWS Well-Architected Frameworks?

- A guide for designing infrastructure that are —
  - ✅ Secure
  - ✅ High-performing
  - ✅ Resilient
  - ✅ Efficient
- A consistent approach to evaluating and implementing cloud architectures
- A way to provide best practices that were developed through lessons learned by reviewing customer architectures

### Pillars of the AWS Well-Architected Framework

- Operational excellence
- Security
- Reliability
- Performance efficiency
- Cost optimization

### Pillar organization

## 2. Operational Excellence

### Operational Excellence pillar

- Focus
  - Run and monitor systems to deliver business value, and to continually improve supporting processes and procedures
- Key topics
  - Managing and automating changes
  - Responding to events
  - Defining standards to successfully manage daily operations

> [!TIP]
> Deliver Business value

### Operational Excellence design principle

- Perform operations as code
- Annotate documentation
- Make frequent, small, reversible changes
- Refine operations procedures frequently
- Anticipate failure
- Learn from all operational events and failures

### Operational Excellence questions

- Prepare
  - How do you determine what your priorities are?
  - How do you design your workload so that you can understand its state?
  - How do you reduce defects, ease remediation and improve flow into production?
  - How do you mitigate deployment risks?
  - How do you know that you are ready to support a workload?
- Operate
  - How do you understand the health of your workload?
  - How do you understand the health of your operations?
  - How do you manage workload and operations events?
- Evolve
  - How do you evolve operations?

## 3. Security

### Security Pillar

- Focus
  - Protect information, systems, and assets while delivering business value through risk assessments and mitigation strategies
- Key topics
  - identifying and managing who can do what
  - Establishing controls to detect security events
  - Protecting systems and services
  - Protecting confidentially and integrity of data

> [!TIP]
> Protect and monitor systems

### Security design principles

- Implement a strong identity foundation
- Enable traceability
- Apply security at all layers
- Automate security best practices
- Protect data in transit and at rest
- Keep people away from data
- Prepare for security events

### Security questions

- Identity and access management
  - How do you manage credentials and authentication?
  - How do you control human access?
  - How do you control programmatic access?
- Detective controls
  - How do you detect and investigate security events?
  - How do you defined against emerging security threats?
- Infrastructure protection
  - How do you protect your networks?
  - How do you protect your compute resources?
- Data protection
  - How do you classify your data?
  - How do you protect your data at rest?
  - How do you protect your data in transit?
- Incident response
  - How do you respond to an incident?

## 4. Reliability

### Reliability Pillar

- Focus
  - Prevent and quickly recover from failures to meet business and customer demand
- Key topics
  - Setting up
  - Cross-project requirements
  - Recovery planning
  - Handling change

> [!TIP]
> Recover from failure and mitigate disruption

### Reliability design principles

- Test recovery procedures
- Automatically recover from failure
- Scale horizontally to increase aggregate system availability
- Stop guessing capacity
- Manage change in automation

### Reliability questions

- Foundation
  - How do you manage service limits?
  - How do you manage your network topology?
- Change management
  - How does your system adapt to changes in demand?
  - How do you monitor your resources?
  - How do you implement change?
- Failure management
  - How do you back up data?
  - How does your system withstand component failure?
  - How do you test resilience?
  - How do you plan for disaster recovery?

## 5. Performance Efficiency

### Performance Efficiency pillar

- Focus
  - Use IT and computing resources efficiently to meet system requirements and to maintain that efficiency as demand changes and technologies evolve
- Key Topics
  - Selecting the right resource types and sizes based on workload requirements
  - Monitoring performance
  - Making informed dicisions to maintain efficiency as business needs evolve

> [!TIP]
> use resources sparingly

### Performance Efficiency design principles

- Democratize advanced techonolgies
- Go global in minutes
- Use serverless architectures
- Experiment more often
- Have mechanical sympathy

### Performance Efficiency questions

- Selection
  - How do you select the best performing architecture?
  - How do you select your compute solution?
  - How do you select your storage solution?
  - How do you select your database solution?
  - How do you select your networking solution?
- Review
  - How do you evolve your workload to take advantage of new release?
- Monitoring
  - How do you monitor your resources to ensure they are performing as expected?
- Tradeoffs
  - How do you use tradeoffs to improve performance?
  
## 6. Cost Optimization

### Cost Optimization pillar

- Focus
  - Run systems to deliver business value at the lowest price point
- Key topics
  - Understanding and controlling when money is being spent
  - Selecting the most appropriate and right number of resource types
  - Analyzing spending over time
  - Scaling to meeting business needs without overspending

> [!TIP]
> Eliminate unneeded expense

### Cost Optimization design principles

- Adopt a consumption model
- Measure overall efficiency
- Stop spending money on data center operations
- Analyze and attribute expenditure
- Use managed and application-level services to reduce cost of ownership

### Cost Optimization questions

- Expenditure awareness
  - How do you govern usage?
  - How do you monitor usage and cost?
  - How do you decommission resources?
- Cost-effective resources
  - How do you evaluate cost when you select services?
  - How do you meet cost targets when you select resource type and size?
  - How do you use pricing models to reduce cost?
  - How do you plan for data transfer changes?
- Matching supply and demand
  - How do you mathc supply of resources with demand?
- Optimizing over time
  - How do you evaluate new services?

## 7. Reliability

### Reliability and availability

> [!NOTE]
> "Everything fails, all the time." — Werner Vogeks, CTO, Amazon.com

### Reliability

- A measure of your system's ability to provide functionality when desired by the user
- System inclues all system components hardware, firmware, and software
- Portability that your entire system will function as intended for a specified period.
- Mean time between failures (MTBF) = total time in service/number of failures

### Understanding Reliability metrics

```txt
                                            System brought online (system available)
                                                     /\ 
                                                    /  \
                                                   /    \
  Mean time Between Failures (MTBF = MTTF + MTTR) /      \ Mean time to failure (MTTF)
                                                 /        \
                                                /          \
                                               /            \
                                              /              \
                                             /                \
                                            /                  \
                                           /                    \
                                          /                      \
                                         /                        \
                                        /                          \
                                       /                            \
                                      /                              \
                                     /                                \
                                    /                                  \
                                   /                                    \
                                  /                                      \
                                 /                                        \
                                /                                          \
                               /                                            \
    System (component) repaired----------------------------------------------System (component) fails
                                        Mean time to repaired (MTTR)
```

### Availability

- Normal operation time / total time
- A percentage of uptime (for example, 99.9 percent) over time (for example, 1 year)
- Number of 9s — Five 9s means 99.999 percent availability

### High availability

- System can withstand some measure of degradation while still remaining available
- Downtime is minimized
- Minimal human intervention is required

### Availability tiers

| Availability | Max disruption (per year) | Application Category                                       |
| ------------ | ------------------------- | ---------------------------------------------------------- |
| 99%          | 3 days 15 hours           | Batch processing, data extraction, transfer, and load jobs |
| 99.9%        | 8 hours 45 minutes        | internal tools like knowledge management, project tracking |
| 99.95%       | 4 hours 22 minutes        | Online commerce, point of scale                            |
| 99.99%       | 52 minutes                | Video delivery, broadcast systems                          |
| 99.999%      | 5 minutes                 | ATM transactions, telecommunications systems  

### Factors that influence availability

- Fault tolerance
  - The built-in redundancy of an application's components and its ability to remain operational
- Scalability
  - The ability of an application to accommodate increases in capacity needs  without changing design
- Recoverability
  - The process, policies, and procedures that are related to restoring service after a catastrophic event.

## 8. AWS Trusted Advisor

### AWS Trusted Advisor

- Online tool that provides real-time guidance to help you provision your resources following AWS best practices
- Look at your entire AWS environment and gives you real-time recommendations in five categories.

|                   |
| ----------------- |
| Cost Optimization |
| Performance       |
| Security          |
| Fault Tolerance   |
| Service Limits    |

## 9. Module Summary

A SysOps engineer working at a company wants to protect their data in transit and at rest. What service could they use to protect their data?

1. Elastic Load Balancing
2. Amazon Elastic Block Store (Amazon EBS)
3. Amazon Simple Storage Service (Amazon S3)
4. All of the above ✅
