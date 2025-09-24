# Networking and Content Delivery

## 1. Networking Basics

### Networks

### Ip addresses

```txt
192.0.2.0
11000000 00000000 00000010 00000000
```

### IPv4 and IPv6 addresses

IPv4 (32-bit) address: 192.0.2.0  
IPv6 (128-bit) address: 2600:1f18:22ba:8c00:ba86:a05e:a5ba:00FF

### Classless Inter-Domain Routing (CIDR)

```txt
               
      Network identifier (routing prefix)                Host identifier
+-----------------------------------------------+           +------+
| 192       .          0         .         2    |     .     |   0  |       / 24
+-----------------------------------------------+           +------+          
11000000          00000000            00000010              00000000          
                                                         to 11111111           
 Fixed             Fixed                Fixed               Flexible        tell you how many bits are fixed
```

### Open Systems Interconnection (OSI) model

| Layer        | Number | Function                                                                                 | Protocol/Address         |
| ------------ | ------ | ---------------------------------------------------------------------------------------- | ------------------------ |
| Application  |   7    | Means for an application to access a computer network                                    | HTTP(S), FTP, DHCP, LDAP |
| Presentation |   6    | <ul><li>Ensure that the application layer can read the data</li><li>Encryption</li></ul> | ASCI, ICA                |
| Session      |   5    | Enables orderly exchange of data                                                         | NetBIOS, RPC             |
| Transport    |   4    | provides protocols to support host-to-host communication                                 | TCP, UDP                 |
| Network      |   3    | Routing and packet forwarding (routers)                                                  | IP                       |
| Data Link    |   2    | Transfer data in the same LAN network (hubs and switches)                                | MAC                      |
| Physical     |   1    | Transmission and reception of raw bitstreams over a physical medium                      | Signals (1s and 0s)      |

## 2. Amazon VPC

### Amazon VPC

- Enable you to provision a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you define
- Gives you control over your virtual networking resources, including:
  - Selection of IP address range
  - Creation of subnets
  - Configuration of route tables and network gateways
- Enables you to customize the network configuration for your VPC
- Enables you to use multiple layers of security

### VPCs and subnets

- VPCs:
  - logically isolated from other VPCs
  - Dedicated to your AWS account
  - Belong to a single AWS Region and can span multiple Availability Zones
- Subnets:
  - Range of IP addresses that divide a VPC
  - Belong to a single Availability Zone
  - Classified as public or private

### IP addressing

```txt
x.x.x.x/16 or 65,536 addresses (max)
x.x.x.x/28 or 16 addresses (min)
```

- When you create a VPC, you assign it to an IPv4 CIDR block (range of private IPv4 addresses)
- You cannot change the address range after you create the VPC.
- The largest IPv4 CIDIR block size is /16
- The smallest IPv4 CIDR block size is /28
- IPv6 is also supported (with a different block size limit)
- CIDR block of subnets cannot overlap

### Reserved IP addresses

Example: A VPC with an IPv4 CIDR block of 10.0.0.0/16 has 65,536 total IP addresses. The VPC has four equal-sized subnets. Only 251 IP addresses are available for use by each subnet.

```txt
+-------------------------------------------------------+
| VPC: 10.0.0.0/16                                      |
|                                                       |
| +------------------------+ +------------------------+ |
| | Subnet 1 (10.0.0.0/24) | | Subnet 2 (10.0.2.0/24) | |
| |                        | |                        | |
| |  251 Ip addresses      | |  251 Ip addresses      | |
| +------------------------+ +------------------------+ |
| +------------------------+ +------------------------+ |
| | Subnet 4 (10.0.1.0/24) | | Subnet 3 (10.0.3.0/24) | |
| |                        | |                        | |
| |  251 Ip addresses      | |  251 Ip addresses      | |
| +------------------------+ +------------------------+ |
+-------------------------------------------------------+
```

| IP Addresses for CIDR block 10.0.0.0/24 | Reserved for                        |
| --------------------------------------- | ----------------------------------- |
| 10.0.0.0                                | Network address                     |
| 10.0.0.1                                | internal communication              |
| 10.0.0.2                                | Domain Name System (DNS) resolution |
| 10.0.0.3                                | Future use                          |
| 10.0.0.255                              | Network broadcast address           |

### Public IP address types

public Ipv4 address:  

- Manually assigned through an Elastic IP address
- Automatically assigned through the auto-assign public IP address settings  at the subnet level
Elastic IP address:  
- Associated with an AWS account
- Can be allocated and remapped anytime
- Additional costs might apply

### Elastic network interface

- An elastic network interface is a virtual network interface that you can
  - Attach to an instance
  - Detach from the instance, and attach to another instance to redirect network traffic
- its attributes follow when it is reattached to a new instance
- Each instance in your VPC has a default network interface that is assigned a private IPv4 address form the IPv4 address range of your VPC

### Route tables and routes

- A route table contains a set of rules (or routes) that you can configure to direct network traffic from your subnet
- Each route specifies a destination and a target
- By default, every route table contains a local route for communication within the VPC
- Each subnet must be associated with a route table (at most one)

## 3. VPC Networking

### Internet gateway

### Net address translation (NAT) gateway

### VPC sharing

### VPC peering

you can connect VPCs in your own AWS account, between AWS accounts, or between AWS Regions.  
Restricitions:

- IP spaces cannot overlap .
- Transitive peering is not supported
- you can only have one peering resource between the same two VPCs

### AWS site-to-site VPN

### AWS Direct Connect

### VPC endpoints

Two types of endpoints:  

- Gateway endpoints (Amazon S3 and Amazon DynamoDB)
- Interface endpoints (powered by AWS PrivateLink)

### AWS Transit Gateway

## 4. VPC Security

### Security Group

Inbound:

| Type  | Protocol | Port Range | Source         | Description     |
| ----- | -------- | ---------- | -------------- | --------------- |
| HTTP  | TCP      | 80         | 0.0.0.0/0      | All web traffic |
| HTTPS | TCP      | 443        | 0.0.0.0/0      | All web traffic |
| SSH   | TCP      | 22         | 54.24.12.19/32 | Office address  |

Outbound:

| Type        | Protocol | Port Range | Source         | Description     |
| ----------- | -------- | ---------- | -------------- | --------------- |
| All traffic | All      | All        | 0.0.0.0/0      |                 |
| All traffic | All      | All        | ::/0           |                 |

- Security groups have rules to manage instance traffic
- Default security groups are sealed shut to inbound traffic. we need to define rule
- Security groups are stateful. The outbound traffic is always allowed

### Network access control lists (network ACLs)

Inbound:

| Rule # | Type             | Protocol | Port Range | Source     | Allow/Deny |
| ------ | ---------------- | -------- | ---------- | ---------- | ---------- |
| 100    | All IPv4 traffic | All      | All        |  0.0.0.0/0 | ALLOW      |
| *      | All IPv4 traffic | All      | All        |  0.0.0.0/0 | DENY       |

Outbound:

| Rule # | Type             | Protocol | Port Range | Source     | Allow/Deny |
| ------ | ---------------- | -------- | ---------- | ---------- | ---------- |
| 100    | All IPv4 traffic | All      | All        |  0.0.0.0/0 | ALLOW      |
| *      | All IPv4 traffic | All      | All        |  0.0.0.0/0 | DENY       |

- A network ACL has separate inbound and outbound rules and each rule can either allow or deny traffic
- Default network ACLs allow all inbound and outbound IPv4 traffic
- Network ACLs are stateless

### Security groups versus network ACLs

| Attribute       | Security Groups                                                         | Network ACLs                                                         |
| --------------- | ----------------------------------------------------------------------- | -------------------------------------------------------------------- |
| Scope           | Instance Level                                                          | Subnet Level                                                         |
| Supported Rules | Allow rules only                                                        | Allow and deny rules                                                 |
| State           | Stateful (return traffic is automatically allowed, regardless of rules) | Stateless (return traffic must be explicitly allowed by rules)       |
| Order of Rules  | All rules are evaluated before decision to allow traffic                | Rules are evaluated in number order before decision to allow traffic |

## 5. Route 53

### Amazon Route 53 DNS Resolution

```txt
     request: www.example.com                 checks with Route 53 for IP address
user --------------------------> DNS resolver -------------------------------------> Amazon Route 53
     <--------------------------              <-------------------------------------
     return IP address                        return IP address
     192.0.2.0                                192.0.2.0
```

### Amazon Route 53

- is a highly available and scalable Domain Name System (DNS) web service
- is used to route end users to internet applications by translating names (like <www.example.com>) into numeric IP addresses (like 192.0.2.1) that computers use to connect to each other
- is fully compliant with IPv4 and IPv6
- Connects user requests to infrastrucure running in AWS and also outside of AWS
- is used to check the health of your resources
- features traffic flow
- Enables you to register domain names

### Amazon Route 53 supported routing

- Simple routing — Use in single-server environments
- Weighted routing — Assign weights to resouce record sets to specify the frequency
- Latency routing — Help improve your global applicatins
- Geolocation routing — Route traffic based on location of your users
- Geoproximity routing — Route traffic based on location of your resources
- Failover routing — Fail over to a backup site if your primary site becomes unreachable
- Multivalue answer routing — Respond to DNS queries with up to eight healthy records selected at random

### Use case: Multi-region deployment

### Amazon Route 53 DNS failover

Improve the availability of your applications that run on AWS by:

- Configuring backup and failover scenarios for your own applications
- Enabling highly available multi-region architectures on AWS
- Creating health checks

### DNS failover for a multi-tiered web application

## 6. CloudFront

### Content delivery and network latency

### Amazon CloudFront

- Fast, global, and secure CDN service
- Global network of edge locations and Regional edge caches
- Self-service model
- pay-as-you-go pricing

### Amazon CloudFront infrastructure

- Edge location — Network of data centers that CloudFront uses to servce popular content quickly to customers
- Regional edge cache — CloudFront location that caches content that is not popular enough to stay at an edge location. It is located between the origin server and the global edge location.

## 7. Module Summary

Which AWS networking service enables a company to create a virtual network within AWS?

1. AWS Config
2. Amazon Route 53
3. AWS Direct Connect
4. Amazon VPC ✅
