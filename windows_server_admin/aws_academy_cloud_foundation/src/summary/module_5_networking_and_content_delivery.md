# 🌐 **AWS Networking & Content Delivery – Summary**

## 1. **Networking Basics**

* **IP Addresses**

  * **IPv4**: 32-bit (e.g., `192.0.2.0`)
  * **IPv6**: 128-bit (e.g., `2600:1f18:22ba:8c00:...`)
* **CIDR** – defines network prefix vs. host part (e.g., `/24` → first 24 bits fixed).
* **OSI Model (7 Layers)**:

  1. Physical – signals
  2. Data Link – MAC, same LAN
  3. Network – IP, routing
  4. Transport – TCP/UDP
  5. Session – data exchange
  6. Presentation – encryption, formatting
  7. Application – protocols (HTTP, FTP, etc.)

---

## 2. **Amazon VPC**

* **Amazon VPC** = a **logically isolated virtual network** in the AWS Cloud.
* You define IP ranges, subnets, route tables, gateways, and security layers.

### **VPC & Subnets**

* **VPC**: Region-wide, isolated per account
* **Subnet**: AZ-specific, public or private, non-overlapping CIDR blocks
* CIDR block: `/16` (max) to `/28` (min)
* Some IPs are **reserved** in each subnet (e.g., .0, .1, .2, .3, .255)

### **Public IPs**

* **Elastic IP** = static public IP; allocatable and remappable.
* Can also auto-assign public IPs at subnet level.

### **ENI (Elastic Network Interface)**

* Virtual NIC; attach/detach to move traffic between instances.

### **Route Tables**

* Contain rules directing traffic (destination → target)
* Each subnet must associate with one route table.

---

## 3. **VPC Networking**

| Feature                | Description                                                                                                 |
| ---------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Internet Gateway**   | Enables communication between VPC and the Internet                                                          |
| **NAT Gateway**        | Allows private subnets to access Internet **outbound** (no inbound)                                         |
| **VPC Sharing**        | Share subnets across AWS accounts                                                                           |
| **VPC Peering**        | Connect two VPCs (same/different account/region); no transitive peering; IPs must not overlap               |
| **Site-to-Site VPN**   | Secure IPsec connection between on-prem and VPC                                                             |
| **AWS Direct Connect** | Dedicated private network link to AWS                                                                       |
| **VPC Endpoints**      | Private access to AWS services without Internet (Gateway → S3/DynamoDB; Interface → others via PrivateLink) |
| **Transit Gateway**    | Central hub to connect multiple VPCs & networks                                                             |

---

## 4. **VPC Security**

| Feature         | Security Groups                            | Network ACLs                                       |
| --------------- | ------------------------------------------ | -------------------------------------------------- |
| Scope           | Instance level                             | Subnet level                                       |
| Rules           | Allow only                                 | Allow and deny                                     |
| State           | **Stateful** (return traffic auto allowed) | **Stateless** (explicit return rules needed)       |
| Rule Evaluation | All rules evaluated                        | Rules checked in number order, stop at first match |

* **Security Groups**:

  * Default inbound = blocked; outbound = allowed
  * Common rules: HTTP(80), HTTPS(443), SSH(22)

* **Network ACLs**:

  * Default allows all; can define ALLOW/DENY rules separately for inbound/outbound.

---

## 5. **Amazon Route 53 (DNS)**

* **Highly available, scalable DNS web service**
* Converts domain names → IP addresses (IPv4 & IPv6)
* Supports internal & external routing, health checks, domain registration

### **Routing Policies**:

* **Simple** – single resource
* **Weighted** – split traffic by percentage
* **Latency** – route to lowest latency region
* **Geolocation** – route by user location
* **Geoproximity** – route by resource location
* **Failover** – primary/backup site
* **Multivalue** – return multiple healthy records randomly

---

## 6. **Amazon CloudFront**

* **Fast, global CDN** with edge locations + regional edge caches
* Caches content near users to reduce latency
* **Edge Location**: serves popular content
* **Regional Edge Cache**: caches less popular content between origin and edge
* Pay-as-you-go, self-service

---

## 7. **Module Check**

> **Which AWS networking service enables a company to create a virtual network within AWS?**
> ✅ **Amazon VPC**

---

### 📝 **Key Takeaways**

* **VPC** = foundation of AWS networking (like your own virtual data center)
* **Security Groups vs. NACLs** = instance vs. subnet, stateful vs. stateless
* **Route 53** = smart DNS routing with multiple routing policies
* **CloudFront** = CDN for faster global content delivery
