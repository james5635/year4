# 🛡 **AWS Cloud Security – Summary**

## 1. **AWS Shared Responsibility Model**

* **AWS** is responsible for **security *of* the cloud**

  * Physical security (data centers)
  * Hardware & software infrastructure
  * Network infrastructure (intrusion detection)
  * Virtualization (instance isolation)

* **Customer** is responsible for **security *in* the cloud**

  * Data, applications, IAM, OS patching, firewalls
  * Network configuration, account management, encryption

### Responsibility by Service Type:

| Model                          | AWS Responsibility                 | Customer Responsibility |
| ------------------------------ | ---------------------------------- | ----------------------- |
| **IaaS** (e.g., EC2, VPC)      | Infrastructure                     | OS, apps, network, data |
| **PaaS** (e.g., RDS, Lambda)   | Infra + platform (OS, DB patching) | Code/data               |
| **SaaS** (e.g., Shield, Chime) | Full service                       | Configuration & access  |

---

## 2. **AWS Identity and Access Management (IAM)**

* Manages **access to AWS resources** with fine-grained control.

* **Components**:

  * **User** – individual or app with credentials
  * **Group** – collection of users with shared policies
  * **Policy** – JSON document defining permissions
  * **Role** – temporary credentials, assumed by users/services

* **Access types**:

  * **Programmatic**: Access key ID + Secret access key (CLI/SDK)
  * **Console**: Account ID + username + password (+ optional MFA)

* **Policies**:

  * **Identity-based**: Attached to users/groups/roles
  * **Resource-based**: Attached to resources (e.g., S3 buckets)

* **MFA**: Adds extra layer of security beyond password.

---

## 3. **Securing a New AWS Account**

* **Root user** = full control, cannot restrict permissions → Use only for account setup.
* **IAM users** = fine-grained, controlled permissions → Use for daily tasks.

---

## 4. **Securing Accounts**

### **AWS Organizations**

* Centrally manage multiple AWS accounts.
* Use **Organizational Units (OUs)** + **Service Control Policies (SCPs)** to limit permissions organization-wide.
* SCPs set **maximum available permissions**, but don’t grant them.

### **AWS KMS**

* Create and manage encryption keys, integrate with CloudTrail, backed by HSMs (FIPS 140-2).

### **Amazon Cognito**

* Adds sign-up/sign-in, supports social and enterprise identity providers (SAML 2.0), scales to millions of users.

### **AWS Shield**

* Managed DDoS protection
* **Standard** is free and always-on
* **Advanced** is paid with more features

---

## 5. **Securing Data**

* **In Transit**: Use TLS/SSL → HTTPS
* **AWS Certificate Manager** simplifies certificate management.

---

## 6. **Working to Ensure Compliance**

* **AWS Compliance Program** helps meet regulations via certifications, laws, frameworks:

  * Certifications (ISO 27001, etc.)
  * Laws (GDPR, HIPAA)
  * Frameworks (CIS, Privacy Shield)

### **AWS Config**

* Continuously monitors and evaluates resource configurations for compliance.

### **AWS Artifact**

* Provides downloadable compliance reports (ISO, PCI, SOC) and agreements, accessible via console.

---

## 7. **Quick Check**

> **Which of the following is AWS's responsibility under the shared responsibility model?**
> ✅ **Maintaining physical hardware**

---

✅ **In short**:

* AWS secures the **infrastructure**; customers secure their **apps, data, and access**.
* IAM is key to controlling access.
* Use Organizations, KMS, Shield, and compliance tools to strengthen security posture.
