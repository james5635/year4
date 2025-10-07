
# 📈 **Auto Scaling & Monitoring — Summary**

## 🌐 **1. Elastic Load Balancing (ELB)**

**Purpose:**
Distributes incoming traffic across multiple targets (instances, containers, IPs) in one or multiple **Availability Zones**, and **scales automatically** with traffic changes.

### 🧭 **Types of Load Balancers**

| Load Balancer         | Protocols & Layer                | Key Use Cases                                              |
| --------------------- | -------------------------------- | ---------------------------------------------------------- |
| **Application (ALB)** | HTTP/HTTPS — Layer 7             | Advanced request routing, microservices, containers        |
| **Network (NLB)**     | TCP/UDP/TLS — Layer 4            | High performance, ultra-low latency, sudden traffic spikes |
| **Classic (CLB)**     | HTTP/HTTPS/TCP/SSL — Layer 4 & 7 | Legacy applications, basic load balancing                  |

* **ALB & NLB** → Register **targets in target groups**
* **CLB** → Register **instances directly**

**Common Use Cases:**

* High availability & fault tolerance
* Containerized apps
* Elastic scaling
* VPC & hybrid environments
* Invoking Lambda via HTTP(S)

**Monitoring Tools:**

* **CloudWatch metrics** — performance monitoring & alarms
* **Access logs** — request details
* **CloudTrail logs** — API activity tracking

---

## 📊 **2. Amazon CloudWatch**

**Purpose:**
Gives **visibility** into AWS resources and applications to help you decide **when to scale** and **monitor performance**.

**Capabilities:**

* **Monitoring** AWS resources & custom app metrics
* **Collecting metrics** (standard & custom)
* **Alarms** — Trigger actions (e.g., Auto Scaling, EC2 actions, SNS notifications)
* **Events** — Detect environment changes and route to targets

### 📌 **CloudWatch Alarms**

* Based on **static thresholds**, **anomaly detection**, or **metric math**
* Configure:

  * Namespace, metric, statistic, period, conditions, actions
* Can send alerts through **Amazon SNS** ✅

---

## 🧠 **3. Amazon EC2 Auto Scaling**

**Purpose:**
Maintains **application availability** by automatically adding or removing EC2 instances based on your defined conditions.

**Key Features:**

* Replaces unhealthy instances automatically
* **Scaling options:** Manual, Scheduled, Dynamic (on-demand), Predictive
* Works with **Auto Scaling Groups** (logical collections of EC2 instances)

### 🔄 **Scaling Types**

* **Scale Out** → Add instances
* **Scale In** → Remove instances

### ⚙️ **How It Works**

* **What:** Launch Config (AMI, instance type, IAM, security, EBS)
* **Where:** Auto Scaling Group (VPC, subnets, load balancer)
* **When:**

  * Maintain current number (health checks)
  * Manual scaling (min/max/desired)
  * Scheduled scaling (time-based)
  * Dynamic scaling (policies)
  * Predictive scaling (AWS AI-based)

**Dynamic Scaling Example:**

* CloudWatch detects **CPU > 60% for 5 min**
* Triggers **Auto Scaling policy**
* **Auto Scaling Group** launches new EC2 instances
* **ELB** distributes traffic across new instances

### 🧰 **AWS Auto Scaling**

Provides centralized scaling plans for:

* EC2 Instances / Spot Fleets
* ECS Tasks
* DynamoDB Tables
* Aurora Replicas

---

## 📝 **4. Module Summary**

**Q:** Which service sends alerts based on CloudWatch alarms?
✅ **1. Amazon Simple Notification Service (SNS)**

