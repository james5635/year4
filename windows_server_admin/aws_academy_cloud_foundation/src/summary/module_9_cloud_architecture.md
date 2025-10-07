# 🌩️ **AWS Cloud Architecture — Summary**

## 🧭 **1. AWS Well-Architected Framework**

* A **guideline for designing secure, high-performing, resilient, and efficient cloud infrastructure**.
* Provides a **consistent evaluation approach** and AWS best practices.
* **5 Pillars**:

  1. **Operational Excellence**
  2. **Security**
  3. **Reliability**
  4. **Performance Efficiency**
  5. **Cost Optimization**

---

## ⚙️ **2. Operational Excellence**

**Focus:** Run & monitor systems to deliver business value and improve continuously.

* **Principles:** Operations as code, annotate docs, small/reversible changes, anticipate failure, learn from events.
* **Key Areas:** Preparation, operation, evolution.

---

## 🔐 **3. Security**

**Focus:** Protect information, systems, and assets through risk management.

* **Principles:** Strong identity foundation, traceability, security at all layers, automation, data protection, preparation.
* **Key Areas:** IAM, detective controls, infrastructure protection, data protection, incident response.

---

## 🧱 **4. Reliability**

**Focus:** Prevent and quickly recover from failures to meet business demand.

* **Principles:** Test recovery, auto recovery, horizontal scaling, capacity planning, automate change.
* **Key Areas:** Foundation, change management, failure management.

---

## 🚀 **5. Performance Efficiency**

**Focus:** Use resources efficiently as demand changes and technologies evolve.

* **Principles:** Democratize tech, go global fast, serverless, frequent experimentation, mechanical sympathy.
* **Key Areas:** Selection, review, monitoring, tradeoffs.

---

## 💰 **6. Cost Optimization**

**Focus:** Deliver business value at the **lowest cost**.

* **Principles:** Consumption model, measure efficiency, stop on-prem costs, analyze spending, use managed services.
* **Key Areas:** Expenditure awareness, cost-effective resources, matching supply & demand, optimizing over time.

---

## 🔄 **7. Reliability & Availability Metrics**

* **Reliability** = System’s ability to function as intended over time.

  * MTBF (Mean Time Between Failures) = MTTF + MTTR.
* **Availability** = Uptime ÷ Total time (e.g., 99.99%).
* **High Availability:** Withstand some failures while staying online.

| Availability | Max yearly downtime | Typical Use Case     |
| ------------ | ------------------- | -------------------- |
| 99%          | 3 days 15 hours     | Batch jobs           |
| 99.9%        | 8 h 45 min          | Internal tools       |
| 99.95%       | 4 h 22 min          | Online commerce      |
| 99.99%       | 52 min              | Video delivery       |
| 99.999%      | 5 min               | ATM, telecom systems |

**Influencing factors:** Fault tolerance, scalability, recoverability.

---

## 🛠️ **8. AWS Trusted Advisor**

* A **real-time online tool** giving recommendations in:

  * Cost Optimization
  * Performance
  * Security
  * Fault Tolerance
  * Service Limits

---

## 📝 **9. Module Summary**

* AWS services like **Elastic Load Balancing, Amazon EBS, and Amazon S3** can be used to **protect data at rest and in transit** → ✅ **All of the above**

---
