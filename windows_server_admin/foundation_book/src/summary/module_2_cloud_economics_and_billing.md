# Cloud Economics And Billing

## 1. Fundamentals of Pricing

* **Cost drivers**:

  1. **Compute** – charged per second/hour by instance type.
  2. **Storage** – charged per GB.
  3. **Data transfer** – outbound charged per GB, inbound mostly free.
* **Pricing principles**:

  * Pay only for what you use (no upfront).
  * Pay less when you reserve (e.g., Reserved Instances).
  * Pay less as you use more (tiered discounts).
  * Pay even less as AWS grows (lower costs passed to customers).
* **Free tier**: 1-year free usage for new customers.
* **Always-free services**: VPC, IAM, Elastic Beanstalk, Auto Scaling, CloudFormation (*note: usage of related services may incur costs*).

## 2. Total Cost of Ownership (TCO)

* **TCO** = Total direct + indirect costs of running IT.
* **Why TCO?** → Compare on-prem vs AWS, budget & justify migration.
* **On-prem costs** include servers, storage, networking, IT labor, facilities.
* **AWS benefits**: No upfront costs, self-service, scalability, agility.
* **Savings**: Up to 96% yearly savings possible by moving to AWS.
* **AWS Pricing Calculator** helps estimate, model, and optimize costs.
* **Additional benefits**:

  * *Hard* → Reduced spend (infra, ops, disaster recovery).
  * *Soft* → Faster innovation, global agility, higher productivity, better customer satisfaction.

## 3. AWS Organizations

* **Purpose**: Centralized multi-account management.
* **Features**:

  * Policy-based and group-based account management.
  * Consolidated billing.
  * Automation with APIs.
* **Security**:

  * IAM → permissions per user/group/role.
  * Service Control Policies (SCPs) → allow/deny access org-wide.
* **Setup**: Create org → create OUs → attach SCPs → test.
* **Access**: Console, CLI, SDKs, APIs.

## 4. AWS Billing

* **Tools**:

  * **AWS Budgets** → set custom cost/usage budgets.
  * **AWS Cost & Usage Report** → detailed billing data.
  * **AWS Cost Explorer** → visualize, analyze, and forecast spend.
* **Billing Dashboard** → view monthly bills and track charges.

## 5. Technical Support Models

* **AWS Support includes**: Guidance, best practices, Trusted Advisor, account assistance.
* **Support plans**:

  1. **Basic** → Free resources, FAQs, health checks.
  2. **Developer** → Early dev/test support.
  3. **Business** → Production workloads.
  4. **Enterprise** → Mission-critical workloads, TAM guidance.

## Module Summary

* Learned AWS pricing fundamentals.
* Reviewed TCO and cost comparison.
* Explored AWS Pricing Calculator.
* Reviewed billing tools (Budgets, Cost Explorer, Cost & Usage Report).
* Understood AWS Support models.

**Sample exam Q:**
Which AWS service provides infrastructure security optimization recommendations?
✅ **AWS Trusted Advisor**
