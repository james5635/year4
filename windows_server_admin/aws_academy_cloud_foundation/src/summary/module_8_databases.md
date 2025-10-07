
# 🧠 **AWS Databases Summary**

## 1. **Amazon RDS (Relational Database Service)** – 🧱 *Managed SQL DB*

* **Managed vs Unmanaged**

  * AWS handles **infrastructure, OS, patches, backups, scaling**, and **high availability**.
  * You focus on **application optimization**.

* **Challenges of self-managed DBs:** maintenance, patches, scalability, backups, security, etc.

* **DB Engines Supported:** MySQL, PostgreSQL, MariaDB, Oracle, Microsoft SQL Server, Amazon Aurora.

* **RDS Features:**

  * **DB Instances:** Configurable CPU, memory, storage (Magnetic, SSD, Provisioned IOPS).
  * **VPC Integration** for network control.
  * **Multi-AZ Deployment** for high availability.
  * **Read Replicas** for scaling read-heavy workloads (asynchronous replication, promotable to master).

* **Use Cases:**

  * Web/mobile apps, e-commerce, gaming — scalable, durable, fully managed relational workloads.

* **When to Use RDS:**
  ✅ Complex transactions, medium–high query/write rates, single-node durability.
  ❌ Massive throughput (e.g., 150k writes/sec), sharding, or simple key-value access (NoSQL is better).

* **Pricing Options:**

  * **On-Demand** – hourly billing.
  * **Reserved Instances** – lower cost for 1–3 year terms.
  * **Multiple DB instances** can be provisioned for peak load handling.

---

## 2. **Amazon DynamoDB** – ⚡ *Managed NoSQL DB*

| Feature     | Relational (SQL) | Non-Relational (NoSQL) |
| ----------- | ---------------- | ---------------------- |
| Storage     | Rows & Columns   | Key-Value / Document   |
| Schema      | Fixed            | Dynamic                |
| Querying    | SQL              | Attribute-based        |
| Scalability | Vertical         | Horizontal             |

* **DynamoDB Overview:**

  * Fully managed, **NoSQL** database.
  * **Virtually unlimited storage**, low-latency performance.
  * **Scales read/write throughput** automatically.
  * Tables → Items → Attributes.
  * Supports **Partition key** or **Partition + Sort key** as primary key types.

✅ Best for applications needing **massive scale**, **dynamic schemas**, and **fast performance** without RDBMS overhead.

---

## 3. **Amazon Redshift** – 📊 *Data Warehouse / Analytics*

* **Fully managed, scalable** data warehouse service.
* Supports **parallel processing** for high performance.
* Integrates with **SQL clients & BI tools** (e.g., Tableau, Power BI).
* **Use Cases:**

  * **Enterprise Data Warehouse** – migrate gradually, respond fast to business needs.
  * **Big Data Analytics** – low entry cost, managed service.
  * **SaaS** – scale analytics capacity and reduce infra costs.

✅ Ideal for **OLAP**, analytics, reporting — **not** for OLTP transactional workloads.

---

## 4. **Amazon Aurora** – 🚀 *High-performance RDBMS*

* **Enterprise-grade relational DB** compatible with **MySQL & PostgreSQL**.
* Automates provisioning, patching, backups, failover, and repair.
* **Service Benefits:** Fast, highly available, pay-as-you-go, managed, simple.
* **Resilient design** with multi-AZ replication and fault tolerance.

✅ Use Aurora when you need **relational features** with **high performance** and **availability**, but want **less management overhead** than RDS engines.

---

## ✅ **Module Summary Question**

> ❓ Which of the following is a fully managed NoSQL database service?
> **✅ Amazon DynamoDB**

---

## 📌 **Quick Comparison Table**

| Service      | Type           | Managed | Use Case                                  | Scaling             |
| ------------ | -------------- | ------- | ----------------------------------------- | ------------------- |
| **RDS**      | Relational     | Yes     | Traditional apps needing SQL features     | Vertical + Read Rep |
| **DynamoDB** | NoSQL          | Yes     | Massive scale, low-latency, flexible data | Horizontal          |
| **Redshift** | Data Warehouse | Yes     | Analytics, BI, reporting                  | Parallel processing |
| **Aurora**   | Relational     | Yes     | High-performance MySQL/PostgreSQL         | Auto scaling        |

