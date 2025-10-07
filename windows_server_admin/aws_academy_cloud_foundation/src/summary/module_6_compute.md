
# 🧠 **AWS Compute – Summary**

## 1. **Overview of AWS Compute Services**

| Service                       | Key Concepts                           | Characteristics                                                | Ease of Use                          |
| ----------------------------- | -------------------------------------- | -------------------------------------------------------------- | ------------------------------------ |
| **Amazon EC2**                | IaaS, instance-based, virtual machines | Full control of OS and instances                               | Familiar to IT pros                  |
| **AWS Lambda**                | Serverless, function-based, low cost   | Event-driven or scheduled execution, no server management      | Easy after learning serverless model |
| **ECS / EKS / Fargate / ECR** | Container-based                        | Run containerized apps quickly; Fargate reduces admin overhead | Varies (Fargate = easier)            |
| **Elastic Beanstalk**         | PaaS for web apps                      | Focus on code; integrates with other services easily           | Very fast and simple                 |

✅ **Choosing the right service** depends on:

* Application design
* Usage patterns
* Desired level of control
  ⚠️ Wrong choice can hurt performance efficiency.

---

## 2. **Amazon EC2 – Part 1**

* **Amazon EC2** = Virtual servers in the cloud, full OS control.
* **Common uses**: Web, DB, application, media, mail, proxy servers, etc.
* **AMI** = Preconfigured template for launching instances (Linux/Windows, with or without software).

  * Quick Start, My AMIs, Marketplace, Community AMIs

### Instance Types

* Categories: General purpose, Compute-optimized, Memory-optimized, Storage-optimized, Accelerated computing
* **Naming**: `t3.large` → Family `t`, Generation `3`, Size `large`
* Example sizes (t3): from `nano` (0.5 GB) to `2xlarge` (32 GB)
* **Networking**:

  * Use **cluster placement groups** + **enhanced networking (ENA)** for max throughput (up to 100 Gbps)

---

## 3. **Amazon EC2 – Part 2**

* **Network**: Choose VPC + subnet; enable public IP for internet.
* **IAM Role**: Attach roles to allow EC2 to access AWS services (can attach after launch too).
* **User Data Scripts**: Run at first boot to auto-configure instances.
* **Storage Options**:

  * **EBS** (persistent block storage)
  * **Instance Store** (temporary, lost on stop)
  * **EFS/S3** for additional storage

---

## 4. **Amazon EC2 – Part 3**

* **Tags**: Key–value labels for cost, automation, access control.
* **Security Groups**: Virtual firewalls (stateful, allow rules only).
* **Key Pairs**: SSH (Linux) or password decryption (Windows).
* **CLI Launch Example**:

  ```sh
  aws ec2 run-instances --image-id ami-1234 --instance-type t3.micro --key-name MyKey --security-groups MySG
  ```

### IP Behavior

* Reboot = IP unchanged
* Stop/start = **public IP changes**, **private IP persists**
* Use **Elastic IP** for static public IP

### Instance Metadata

* Available via `http://169.254.169.254/latest/meta-data`
* Useful for scripts to dynamically configure instances.

### Monitoring

* Use **Amazon CloudWatch** for metrics and alarms.

---

## 5. **EC2 Cost Optimization**

### Pricing Models

* **On-Demand** – Pay as you go, flexible
* **Reserved Instances** – Cheaper for predictable usage
* **Spot Instances** – Very cheap, interruptible
* **Dedicated Hosts** – Bring your own license (BYOL), compliance needs

| Model           | Use Case                                               |
| --------------- | ------------------------------------------------------ |
| On-Demand       | Short-term, dev/test, spiky workloads                  |
| Spot            | Flexible start/end, large scale, urgent cheap capacity |
| Reserved        | Steady-state, DR, predictable                          |
| Dedicated Hosts | Licensing, compliance, placement control               |

### Cost Optimization Pillars

* Right size
* Increase elasticity
* Choose optimal pricing model
* Optimize storage choices
* Tag, measure, monitor, improve regularly

---

## 6. **Container Services**

* **Containers** = Lightweight, repeatable OS-level virtualization.
* **Docker** = Tool for building/running containers from images.
* **Benefits**: Consistency across environments, faster startup, self-contained.

### ECS / EKS / Fargate / ECR

* **ECS** – AWS container orchestration service
* **EKS** – Run Kubernetes on AWS (Linux & Windows), integrates with K8s tools
* **Fargate** – Serverless compute for containers (no cluster management)
* **ECR** – Managed container image registry

---

## 7. **AWS Lambda**

* **Serverless compute** — Run code on triggers or schedules, no servers to manage.
* Pay only for compute time.
* **Event Sources**: S3, DynamoDB, SNS, SQS, API Gateway, ALB, CloudWatch Events, etc.

### Example Use Cases

* **Schedule-based**: Stop/start EC2 on a schedule via Lambda + CloudWatch Events
* **Event-based**: Auto-generate thumbnails on S3 upload

### Benefits

* Multi-language support
* Fully managed
* Fault-tolerant
* Pay-per-use
* Easy orchestration of multiple functions

---

## 8. **Elastic Beanstalk**

* **Managed PaaS** for quick web app deployment.
* Handles infra provisioning, load balancing, auto-scaling, health checks, logging.
* No extra cost — pay for underlying resources.
* Supports Java, .NET, PHP, Node.js, Python, Ruby, Go, Docker.

### Benefits

* Fast setup
* Developer productivity
* Full resource control
* Hard to outgrow

---

## 9. **Knowledge Check**

> **Which AWS service helps developers quickly deploy resources that support multiple languages (e.g., .NET, Java)?**
> ✅ **AWS Elastic Beanstalk**

---

### 📝 **Key Takeaways**

* **EC2** = full control, flexible, but you manage everything.
* **Containers (ECS/EKS)** = modern, fast deployments; Fargate simplifies ops.
* **Lambda** = serverless, event-driven, ideal for microservices.
* **Elastic Beanstalk** = easiest way to deploy web apps quickly.
* **Choose compute model based on control vs. convenience vs. cost.**
