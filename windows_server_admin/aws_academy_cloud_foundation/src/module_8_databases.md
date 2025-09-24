# Databases

## 1. Amazon RDS

### Unmanaged versus managed service

| Unmanaged                                                      | Managed                                                                          |
| -------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| Scaling, fault tolerance, and availability are managed by you. | Scaling, fault tolerance, and availability are typically built in to the service |

### Challenges of relational databases

- Server maintenace and energy foorprint
- Software installation and patches
- Database backups and high availability
- Limits on scalability
- Data security
- Operating System (OS) installation and patches

### Amazon RDS

Manage service that sets up and operates a relational databases in the cloud

### Managed services responsibilites

You manage:

- Application optimization

AWS manages:

- OS installation and patches
- Database software installation and patches
- Database backups
- High availability
- Scaling
- Power, racking and stacking servers
- Server maintenance

### Amazon RDS DB instances

```txt
Amazon RDS
+---------------------------------------------------------------------------------+
| DB instance class                                -+                             |
| - CPU                                             |                             |
| - Memory                                          |                             |
| - Network Performance                             | Amazon RDS DB main instance |       
| DB instance storage                               |                             |
| - Magnetic                                        |                             |
| - Gerneral Purpose (Solid state drive or SSD)     |                             |
| - Provisioned IOPS                               -+                             |
+---------------------------------------------------------------------------------+
```

DB engine:  

- MYSQL
- Amazon Autora
- Microsoft SQL Server
- PostgreSQL
- MariaDB
- Oracle

### Amazon RDS in a virtual private cloud (VPC)

### High availability with Multi-AZ deployment

### Amazon RDS read replicas

Features:

- Offers asynchronous replication
- Can be promoted to master if needed

Functionality:

- Use for read-heavy database workloads
- Offload read queries

### Use cases

|                             |                                                                                                 |
| --------------------------- | ----------------------------------------------------------------------------------------------- |
| Web and mobile applications | <ul><li>High throughput</li><li>Massive storage scalability</li><li>High availability</li></ul> |
| Ecommerce applications      | <ul><li>Low-cost database</li><li>Data security</li><li>Fully managed solution</li></ul>        |
| Mobile and online games     | <ul><li>Rapidly grow capacity</li><li>Automatic scaling</li> <li> Database monitoring</li></ul> |

### When to Use Amazon RDS

Use amazon RDS when your application requires:

- Complex transactions or complex queries
- A medium to high query or write rate — Up to 30,000 IOPS (15000 reads + 15000 writes)
- No more than a single worker node or shared
- High durability

Do not use Amazon RDS when your application requites:

- Massive read/write rates for example: 150,000 write/second
- Sharding due to high data size or thoughput demands
- Simple GET or PUT request and queries that a NoSQL database can handle
- Relational database management system (RDBMS) customization

### Amazon RDS: Clock-hour billing and database characterristics

### Amazon RDS: DB purchase type and multiple DB insances

DB purchase type

- On-demand instances
  - compute capacity by the hour
- Reserved instances
  - Low one-time, upfront payment for database instances that are reserved with a 1-year or 3-year term

Number of DB instances

- Provision multiple DB instances to handle peak tools

### Amazon RDS: Storage

### Amazon RDS: Deployment type and data transfer

## 2. Amazon DynamoDB

|                  | Relational (SQL) | Non-Relational                     |
| ---------------- | ---------------- | ---------------------------------- |
| **Data Storage** | Row and columns  | Key-value, document, graph         |
| **Schemas**      | Fixed            | Dynamic                            |
| **Quetying**     | Uses SQL         | Focuses on collection of documents |
| **Scalability**  | Vertical         | Horizontal                         |
| **Example**      | <table><thead><tr><th>ISBN</th><th>Title</th><th>Author</th><th>Format</th></tr><thead><tr><td>3111115371</td><td>Withering Depths</td><td>Jackson, Mateo</td><td>Paperback</td></tr><tr><td>23437848989</td><td>Willy Willy</td><td>Wang Xiulan</td><td>Ebook</td></tr> <tbody> </tbody></table> | {<br>&nbsp;ISBN: 31111111232349<br>&nbsp;Title: "Withering Depths"<br>&nbsp;Author: "Jackson, Mateo"<br>&nbsp;Format: "Paperback"<br> }                                    |

### What is Amazon DynamoDB?

Fast and flexible NoSQL database service for any scale

|                                                       |
| ----------------------------------------------------- |
| <ul><li>NoSQL database tables </li></ul>              |
| <ul><li>Virtually unlimited storage</li></ul>         |
| <ul><li>Items can have differing attributes</li></ul> |
| <ul><li>Low-latency queries</li></ul>                 |
| <ul><li>Scalable read/write throughput</li></ul>      |

### Amazon DynamoDB core components

- Tables, items, and attributes are the core DynamoDB components
- DynamoDB suppots two different kinds of primary keys. Partition key and partition and short key

### Items in a table must have a key

- Single key
- Compound key

## 3. Amazon Redshift

### Introduction to Amazon Redshift

### Parallel processing architecture

### Automation and scaling

- Manage
- Monitor
- Scale

### Compatibility

Amazon Redshift <------> SQL clients and business intelligence (BI) tools

### Amazon Redshift use cases

- Enterprise data warehouse (EDW)
  - Migrate at a pace that customers are comfortable with
  - Experiment without large upfront cost or commitment
  - Respond faster to business needs
- Big Data
  - Low price point for small customers
  - Managed service for ease of deployment and maintenance
  - Focus more on data and less on database management
- Software as a Service (SaaS)
  - Scale the data warehouse capacity as demand grows
  - Add analytic functionality to applications
  - Reduce hardware and software costs

## 4. Amazon Aurora

### Amazon Autora

|                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------- |
| <ul><li>Enterprise-class relational database </li></ul>                                                                           |
| <ul><li>Compatible with MySQL or PostgreSQL</li></ul>                                                                             |
| <ul><li>Automate time-consuming tasks (such as provisioning, patching, backup, recovery, failure detection, and repair)</li></ul> |

### Amazon Aurora service benefits

- Fast Available
- Simple
- Compatible
- Pay-as-you-go
- Managed service

### High availability

### Resilent Design

## 5. Module Summary

which of the following is a fully managed NoSQL database service?  

1. Amazon RDS
2. Amazon DynamoDB ✅
3. Amazon Aurora
4. Amazon Redshift
