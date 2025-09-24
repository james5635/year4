# Auto Scaling and Monitoring

## 1. Elastic Load Balancing

### Elastic Load Balancing

- Distributes incoming application or network traffic across multiple targets in a single Availability Zone or across multiple Availability Zones
- Scales your load balancer as traffic to your application changes over time

### Types of load balancers

| Application Load Balancer                                                                                                                                                                                              | Network Load Balancer                                                                                                                                                                                                            | Classic Load Balancer (Previous Generation)                             |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| <ul><li>Load balancing of HTTPS and HTTPS traffic</li></ul>                                                                                                                                                            | <ul><li>Load balancing of TCP, UDP, and TLS traffic where extreme performance is required</li></ul>                                                                                                                              | <ul><li>Load balancing of HTTP, HTTPS, TCP, and SSL traffic</li></ul>   |
| <ul><li>Routes traffic to targets based on content of request</li><li>Provides advanced request routing targeted at the delivery of modern application architectures, including microservices and containers</li></ul> | <ul><li>Routes traffic to targets based on IP protocol data/li><li>Can handle millions of request per second while maintaining ultra-low latencies</li><li>is optimized to handle sudden and volatile traffic patterns</li></ul> | <ul><li>Load balancing across multiple EC2 instances</li></ul>          |
| <ul><li>Operates at the application layer (OSI model layer 7)</li></ul>                                                                                                                                                | <ul><li>Operates at the transport layer (OSI model layer 4)</li></ul>                                                                                                                                                            | <ul><li>Operates at both the application and transport layers</li></ul> |

### how Elastic load balancing works

- With Application Load Balancers and Network Load Balancers, you register targets in target groups, and route traffic to the target groups
- With Classic load balancers, you register instances with the load balancer

### Elastic load balancing use cases

- Highly available and fault-tolerant applications
- Containerized application
- Elasticity and scalability
- Virtual private cloud (VPC)
- Hybrid environments
- Invoke lambda functions over HTTP(S)

### Load balancer monitoring

- Amazon CloudWathc metrics — Used to verify that the system is performing as expected and creates an alarm to initiate an action if a metric goes outside an acceptable range
- Access logs — Capture detailed information about requests sent to your load balancer
- AWS CloudTrail logs — Capture the who, what, when, and where of API interactions in AWS services

## 2. Amazon CloudWatch

### Monitoring AWS resources

To use AWS efficiently, you need insight into your AWS resources

- How do you know when you should launch more Amazon EC2 instances?
- Is your application's performance or availability being affected by a lack of sufficient capacity?
- How much of your infrastructure is actually being used?

### Amazon CloudWatch

- Monitors
  - AWS resources
  - Applications that run on AWS
- Collects and tracks
  - Standard metrics
  - Custom metrics
- Alarms
  - send notifications to an Amazon SNS topic
  - perform Amazon EC2 auto scaling or Amazon EC2 actions
- Events
  - Define rules to match changes in AWS environment and route these events to one or more target functions or streams for processing

### CloudWatch alarms

- Create alarms based on
  - Static threshold
  - Anomaly detection
  - Metric math expression
- Specify
  - Namespace
  - Metric
  - Statistic
  - Period
  - Conditions
  - Additional Configurations
  - Actions

## 3. Amazon EC2 Auto Scaling

### why is scaling important?

### Amazon EC2 Auto Scaling

- Helps you maintain application availability
- Enables you to automatically add or remove EC2 instances according to conditions that you define
- Detects impaired EC2 instances and unhealthy applications and replaces the instances wihtout your intervention
- Provides several scaling options — Manual, scheduled, dynamic or on-demand and predictive

### Typical weekly traffic at Amazon.com

### November traffic to Amazon.com

### Auto Scaling Groups

An Auto Scaling group is a collection of EC2 instances that are treated as a logical grouping for the purposes of automatic scaling and management

### Scaling out versus scaling in

### How Amazon EC2 Auto Scaling works

- What
  - Launch Configuration
    - AMI
    - Instance type
    - IAM role
    - Security groups
    - EBS volumes
- Where
  - Auto Scaling group
    - VPC and subnets
    - Load Balancer
- When
  - Maintain current number
    - Health checks
  - Manual scaling
    - Min, max, desired capacity
  - Scheduled scaling
    - Scheduled actions
  - Dynamic scaling
    - Scaling policies
  - Predictive scaling
    - AWS Auto Scaling

### Implementing dynamic scaling

```txt
                      +------------------------->Elastic Load Balancing------------------------------+
                      |                                    |                                         |
                      |                                    |                                         |
                      |                         +----------+---------+                               |
                      |                         |                    |                               |
                      |               +---------|--------------------|------------+                  |
                      |               |         | Auto scaling group |            |                  |
                      |               |         |                    |            |                  |
                      |               |        +-+                  +-+           |                  |
                      |               |        | |                  | |           |                  |
                      |               |        +-+ CPU utilization  +-+           |                  |
                      |               |                                           |                  |
                      |               +-------------------------------------------+                  |
                      |                                                                              |  
                      |                                                                              |  
                      |                                                                              |  if average CPU utilization is > 60% for 5 minutes ...
                      |                                                                              |
Amazon EC2 Auto Scaling<----------------------------------------------------------------------------Amazon CloudWatch
                            Run Amazon EC2 Auto Scaling policy
```

### AWS Auto Scaling

- Monitors your applications and automatically adjusts capacity to maintain steady, predictable performance at the lowest possible cost
- Provides a simple, powerful user interface that enables you to build scaling plans for resources, including —
  - Amazon EC2 instances and Spot Fleets
  - Amazon Elastic Container Service (Amazon ECS) Tasks
  - Amazon DynamoDB tables and indexes
  - Amazon Aurora Replicas

### 4. Module summary

Which service would you use to send alerts based on Amazon CloudWatch alarms?

1. Amazon Simple Notification Service ✅
2. AWS CloudTrail
3. AWS Trusted Advisor
4. Amazon Route 53
