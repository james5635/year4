# 🧠 **AWS Storage Summary**

## 1. **Amazon EBS (Elastic Block Store)** – 🧱 *Block Storage*

* Ideal for **EC2 instances**, **databases**, and **enterprise apps**.
* Supports **block-level updates** (e.g., changing 1 character = update one block).
* **Replicated** within its AZ, can be **snapshotted to S3**, and **encrypted** at no extra cost.
* **Volume Types:**

  * SSD (e.g., GP2/GP3 for general use, IO1/IO2 for high IOPS)
  * HDD (e.g., for throughput or cold storage)
* **Pricing Factors:**

  * Provisioned GB/month
  * IOPS (for provisioned SSD)
  * Snapshot storage in S3 (per GB/month)
  * Data transfer (inbound free; outbound across Regions charged)

---

## 2. **Amazon S3 (Simple Storage Service)** – 🪣 *Object Storage*

* Stores data as **objects in buckets**, with **virtually unlimited capacity** (up to 5 TB/object).
* Designed for **11 9s durability** and **scales automatically**.
* Global access via Console, CLI, SDK.
* **Storage Classes:**

  * **Standard** – frequent access, multi-AZ, high durability
  * **Intelligent-Tiering** – automatic tiering based on usage
  * **Standard-IA & One Zone-IA** – infrequent access, cheaper
  * **Glacier & Glacier Deep Archive** – archival storage
* **Pricing Factors:**

  * Storage type and amount
  * Number & type of requests (GET, PUT, COPY, etc.)
  * Data transfer out of Region (inbound free)

---

## 3. **Amazon EFS (Elastic File System)** – 📂 *Managed File Storage*

* **Fully managed NFS** file system for Linux-based EC2 instances.
* **Shared**, **elastic**, and **low-latency**—scales automatically to petabytes.
* Common use cases: big data analytics, media processing, content management, home directories.
* Mounted via **NFSv4**, with **mount targets** in each subnet/AZ.

---

## 4. **Amazon S3 Glacier** – 🧊 *Archival Storage*

* **Very low cost**, designed for **long-term backup** and **compliance archiving**.
* **11 9s durability**, **AES-256 encryption**, and **Vault Lock** for policies.
* **Retrieval Options:**

  * **Expedited:** 1–5 min
  * **Standard:** 3–5 hrs
  * **Bulk:** 5–12 hrs
* Ideal for **rarely accessed** data like regulatory archives, media preservation, or tape replacement.

---

## 📝 **Key Comparison**

| Feature      | EBS            | S3                  | EFS                 | Glacier               |
| ------------ | -------------- | ------------------- | ------------------- | --------------------- |
| Storage Type | Block          | Object              | File (NFS)          | Archival Object       |
| Capacity     | Volume-based   | Virtually unlimited | Elastic             | Virtually unlimited   |
| Access Speed | Low-latency    | ms                  | Low-latency shared  | Minutes to hours      |
| Use Case     | Boot disks, DB | Backup, hosting     | Shared file storage | Archiving, compliance |
| Cost         | Moderate–High  | Lower than EBS      | Varies by usage     | Lowest                |

---

## ✅ **Best Option for Infrequently Accessed Data**

> **Amazon S3 Glacier** — most cost-effective for long-term storage with infrequent access.
