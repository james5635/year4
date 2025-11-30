# Securing Access - Module 3
## Complete Study Guide

---

## Module Overview

### Learning Objectives

By the end of this module, you'll be able to:

✓ **Describe** security principles in the AWS Cloud  
✓ **Explain** the purpose of AWS Identity and Access Management (IAM) users, groups, and roles  
✓ **Understand** how IAM policies determine permissions in an AWS account

### Module Structure

**Presentation Sections:**
1. Security principles
2. Authenticating and securing access
3. Authorizing users
4. Parts of an IAM policy

**Hands-On Practice:**
- Activity: Examining IAM Policies
- Guided Lab: Exploring AWS IAM

**Assessment:**
- 10-question knowledge check
- Sample exam question with detailed explanation

### Your Cloud Architect Mindset

As you work through this module, think like a cloud architect:

**Key Challenge:** Apply security best practices when granting access to cloud resources to minimize the risk of unwanted access at each layer of your architecture.

**Practical Application:** Consider the café scenario throughout the course. How would you design secure access for Frank and Martha's staff?

---

## Part 1: Security Principles

### The AWS Shared Responsibility Model

Security in AWS is a **shared responsibility** between AWS and you, the customer.

#### AWS Responsibilities: Security OF the Cloud

AWS manages and secures the underlying infrastructure:

**AWS Global Infrastructure**
- Regions
- Availability Zones
- Edge locations

**AWS Foundation Services**
- Compute resources
- Storage systems
- Databases
- Networking

**Physical Security**
- Host operating system
- Virtualization layer
- Physical facilities

#### Your Responsibilities: Security IN the Cloud

You control security of everything you put in the cloud:

**Data and Content**
- Customer data
- Platform and applications
- Identity and access management

**Configuration**
- Operating system configurations
- Network and firewall settings
- Security group management

**Encryption**
- Client-side data encryption and integrity
- Server-side encryption (file systems and data)
- Network traffic protection (encryption, integrity, identity)

**Key Takeaway:** AWS secures the infrastructure; you secure what you build on it.

---

### The Well-Architected Framework: Security Pillar

Security is one of six pillars in the AWS Well-Architected Framework, alongside operational excellence, reliability, performance efficiency, cost optimization, and sustainability.

**Tool Available:** Use the AWS Well-Architected Tool for self-service access to current best practices and implementation guidance.

#### Seven Design Principles for Security

**1. Implement a Strong Identity Foundation**
- Apply the principle of least privilege
- Enforce separation of duties with appropriate authorization
- Centralize identity management
- Eliminate reliance on long-term static credentials

**2. Protect Data in Transit and at Rest**
- Classify data by sensitivity level
- Use encryption, tokenization, and access control appropriately
- Apply protection mechanisms based on data classification

**3. Apply Security at All Layers**
- Use defense-in-depth approach
- Implement multiple security controls
- Secure every layer: network edge, VPC, load balancers, instances, operating systems, applications, and code

**4. Keep People Away from Data**
- Reduce or eliminate direct access to data
- Use automated tools and mechanisms
- Minimize manual data processing to reduce human error and mishandling risk

**5. Maintain Traceability**
- Monitor, alert, and audit actions in real time
- Integrate log and metric collection
- Enable automatic investigation and response

**6. Prepare for Security Events**
- Establish incident management policies
- Create investigation processes aligned with organizational requirements
- Run incident response simulations
- Use automation to speed detection, investigation, and recovery

**7. Automate Security Best Practices**
- Implement software-based security mechanisms
- Scale security rapidly and cost-effectively
- Define controls as code in version-controlled templates

---

### Principle of Least Privilege

**Definition:** Grant only the permissions required to perform a specific task—nothing more.

#### Best Practices

✓ **Start minimal** - Begin with minimum necessary permissions  
✓ **Add incrementally** - Grant additional permissions only as needed  
✓ **Review regularly** - Revoke unnecessary permissions  
✓ **Research requirements** - Understand what access each task truly needs

#### Practical Example

Consider two users accessing S3 buckets:

**John (Administrator)**
- Full access to S3 buckets 1 and 2
- Read, write, and delete permissions
- Explicitly denied access to specific DynamoDB table

**Mary (Marketing)**
- Read-only access to S3 bucket 1
- Explicitly denied access to S3 bucket 2
- No access to other resources

**The Principle in Action:** Developers might need to create EC2 instances in production but shouldn't be able to stop or terminate them. Grant creation permissions only.

---

### Protecting Data: Encryption Strategies

#### Data in Transit

**What It Is:** Data actively moving between locations (across the internet, through private networks, or between storage devices)

**Protection Method:** Use cryptographic protocols like TLS (Transport Layer Security)

**Example:** When users upload photos to a cloud service, TLS encrypts the transfer to ensure privacy, even if the photos themselves aren't sensitive.

**Why It Matters:** Data in transit is considered more vulnerable than data at rest.

#### Data at Rest: Client-Side Encryption

**How It Works:**
1. Client encrypts data before sending
2. Encrypted data travels to cloud storage
3. Client retrieves encrypted data
4. Client decrypts data for use

**Example:** Encrypting data on mobile devices protects against device loss or theft, ensuring data remains scrambled and inaccessible to unauthorized users.

**Key Benefit:** End-to-end protection from source to storage

#### Data at Rest: Server-Side Encryption

**How It Works:**
1. Unencrypted data sent through secure connection
2. Server encrypts data before storing
3. Server decrypts data when requested
4. Decrypted data returned to client

**Example:** Amazon S3 provides server-side encryption, automatically encrypting objects as they're written to disk and decrypting them when accessed.

**Use Case:** Protecting sensitive personal data like Social Security Numbers stored in cloud databases

---

## Part 2: Authenticating and Securing Access

### Authentication vs. Authorization

Understanding the difference is fundamental to securing your AWS resources.

#### Authentication: Who Are You?

**Question:** Who is requesting access to the AWS account and its resources?

**Process:** Establish identity through credentials

**Banking Analogy:** Before accessing your checking account, the bank verifies you're actually you by requiring:
- Username and password
- Multi-factor authentication code (extra security)

#### Authorization: What Can You Do?

**Question:** After authentication, what should the requester be allowed to do?

**Process:** Determine whether to allow or deny the request

**Banking Analogy:** Once logged in, you can:
- ✓ Access your own accounts
- ✓ Pay bills with your money
- ✗ Cannot access other customers' accounts
- ✗ Cannot pay bills with someone else's money

**Important Note:** The requester can be a person or an application.

---

### AWS Identity and Access Management (IAM)

IAM is your central service for controlling access to AWS resources.

#### Key Capabilities

**Fine-Grained Access Control**
- Configure precise permissions for AWS resources
- Grant unique security credentials to users and groups
- Specify which AWS service APIs and resources are accessible

**Integration**
- Works with most AWS services
- Centralized management through AWS Management Console
- Changes take effect across your entire AWS environment

**Federation Support**
- Grant access using existing identity systems
- Support for corporate systems like Microsoft Active Directory
- Compatible with standards-based identity providers

**Multi-Factor Authentication (MFA)**
- Adds extra security layer beyond passwords
- Requires authentication code from MFA device
- Works with hardware or virtual devices (like Google Authenticator)

**Security by Default**
- Users have no access until permissions are explicitly granted
- Follows principle of least privilege automatically

#### Best Practice: Avoid Root-Like Permissions

Don't create accounts with root user-equivalent permissions. Ask yourself:
- Does the database administrator need to provision EC2 instances?
- If no, don't grant that permission

---

### IAM Terminology Explained

Understanding these terms is essential for working with IAM:

#### IAM Resource
User, group, role, policy, or identity provider object stored in IAM. Like other AWS services, you can add, edit, and remove IAM resources.

#### IAM Entity
IAM resource used by AWS for authentication (users and roles). Entities enable:
- Console sign-in
- Programmatic API requests
- AWS CLI commands

#### IAM Identity
IAM resource used to identify and group entities. You attach policies to identities. Includes users, groups, and roles.

#### Principal
Person or application that authenticates using:
- AWS account root user
- IAM user
- IAM role

Can include assumed roles and federated users (external identities without AWS accounts).

---

### IAM Components: Users, Groups, Roles, and Policies

#### IAM User
**What It Is:** An entity representing a person or application that interacts with AWS

**Characteristics:**
- Given permanent credentials
- Credentials remain until forced rotation
- Used for long-term access

**Example:** John's developer account with access keys for API calls

#### IAM Group
**What It Is:** A collection of IAM users

**Purpose:** Grant the same permissions to multiple users efficiently

**Example:** All developers in a "Developers" group automatically receive the same permissions

#### IAM Role
**What It Is:** An AWS identity with permission policies attached

**Key Differences from Users:**
- No permanent credentials
- Not uniquely associated with one person
- Provides temporary security credentials
- Can be assumed by users, applications, or services

**Example:** An EC2 instance assuming a role to access an S3 bucket

#### IAM Policy
**What It Is:** A document explicitly listing permissions

**Format:** JSON document

**Purpose:** Define what resources can be accessed and how

**Attachment:** Can be attached to users, groups, roles, or any combination

---

### Authentication Credentials

Different ways to interact with AWS require different credentials:

| Access Method | Credentials Required |
|--------------|---------------------|
| **AWS Management Console** | Username and password |
| **AWS CLI** | AWS access key (access key ID + secret access key) |
| **Programmatic API calls** | AWS access key (access key ID + secret access key) |
| **SDKs** | AWS access key (access key ID + secret access key) |

**Important:** You cannot use username and password for CLI, API, or SDK access. Similarly, you cannot use access keys to sign in to the console.

---

### Best Practices for Securing Access

Follow these guidelines to protect your AWS resources:

#### 1. Apply Least Privilege
Grant only minimum necessary permissions. Start restrictive and add permissions as needed rather than starting permissive and restricting later.

#### 2. Enable Multi-Factor Authentication (MFA)
Add an extra security layer requiring a code from a hardware or software token during sign-in, especially for the root user.

#### 3. Use Temporary Credentials for Humans
Instead of long-term credentials, use federated access through identity providers that provide temporary credentials by assuming IAM roles.

#### 4. Rotate Access Keys
For scenarios requiring long-term credentials, regularly rotate access keys using the "access key last used" information.

#### 5. Create Strong, Complex Passwords
Ensure root user and IAM users have strong, unique passwords following AWS password policy guidelines.

#### 6. Secure Local Credentials
Store access keys, passwords, and MFA tokens in secure password managers or hardware tokens—never in plain text.

#### 7. Use AWS Organizations
Consolidate multiple AWS accounts to centrally manage billing, access control, and resources.

#### 8. Enable AWS CloudTrail
Maintain a record of all account actions for security risk identification and audit compliance.

#### 9. Protect the Root User
The root user has complete access to everything. Minimize its use and monitor its activity carefully.

---

### Protecting the Root User

Your root user credentials are like a master key to everything in your AWS account.

#### Why Root User Protection Matters

**The root user can:**
- Access all AWS services and resources
- Change billing information
- Close the account
- Perform any action without restriction

**Treat root credentials like you would:**
- Credit card numbers
- Social Security Numbers
- Any highly sensitive personal information

#### Best Practices

**For Daily Tasks:**
1. Create an administrative user in AWS IAM Identity Center
2. Use temporary credentials (not long-term access keys)
3. Perform most administrative work through this admin user

**For Root User:**
1. Only use for tasks that cannot be performed by other users
2. Enable MFA on the root user
3. Store root credentials extremely securely
4. Monitor root user activity through CloudTrail

#### Setting Up Proper Admin Access

**Step-by-Step Process:**

1. **As root user:** Log in and enable MFA on the root account
2. **As root user:** Create a new admin user with appropriate permissions
3. **As root user:** Add MFA to the admin user and download programmatic keys
4. **Log out** as root user
5. **Log in** as admin user (example: John)
6. **As admin user:** Create individual user accounts for team members with specific permissions (example: John, Ji, and Nikki)

**Result:** Root user is protected, and daily administrative work happens through the admin user.

---

### Managing Users with Groups

Efficiently manage permissions for multiple users.

#### The Best Practice Approach

**Attach policies to groups, not individual users**

**Why This Works:**
- Single policy applies to all group members
- Add user to group → they automatically get permissions
- Remove user from group → permissions automatically revoked
- Easier to manage team changes
- Consistent permissions across similar roles

#### Practical Example

**Sales Group:**
- Attach "Sales Policy" to Sales Group
- Add User 1 and User 2 to Sales Group
- Both users inherit Sales Policy permissions

**IT Group:**
- Attach "IT Policy" to IT Group
- Add User 3, User 4, and User 5 to IT Group
- All users inherit IT Policy permissions

**Benefits:**
- New sales hire? Add to Sales Group—instant appropriate access
- Employee changes roles? Move between groups—permissions update automatically
- Policy update needed? Change once—affects all group members

---

### Understanding IAM Roles

Roles provide temporary access without permanent credentials.

#### Key Characteristics

**Temporary Security Credentials**
- Not permanent like user credentials
- Credentials expire after session ends
- Must be renewed when needed

**Not Person-Specific**
- Can be assumed by anyone authorized
- Not uniquely tied to one identity
- Shared across applications and services

**Flexible Assumption**
- People can assume roles
- Applications can assume roles
- AWS services can assume roles

**Delegation Tool**
- Grant access without sharing permanent credentials
- Useful for temporary or external access

#### Common Use Cases

**1. Applications on EC2 Instances**
**Scenario:** Your application needs to access S3 buckets

**Without Roles:** Store AWS credentials in application code (insecure, difficult to rotate)

**With Roles:**
- Create IAM role with S3 permissions
- Add role to instance profile
- Attach profile to EC2 instance
- Application assumes role at runtime
- Gets temporary credentials automatically

**2. Cross-Account Access**
**Scenario:** User in Account B needs access to resources in Account A

**Solution:**
- Account A creates cross-account role
- Role trusts Account B
- User in Account B switches to this role
- Temporarily accesses Account A resources

**3. Mobile Applications**
**Scenario:** Mobile app needs AWS access

**Without Roles:** Store credentials in app (users can extract them, difficult to rotate)

**With Roles:**
- App assumes role when needed
- Gets temporary credentials
- Credentials rotate automatically

**4. Federated Users**
**Scenario:** External users authenticated by system outside AWS need temporary access

**Solution:**
- Create role for federated access
- External identity provider authenticates users
- Authenticated users assume role for temporary AWS access

---

## Part 3: Authorizing Users

### IAM Policies and Permissions

Policies are the mechanism for defining what actions are allowed or denied.

#### What Are Policies?

**Definition:** Documents that define permissions for the identity or resource they're associated with

**Purpose:** Fine-tune what principals (users, roles, services) can do

**Format:** JSON documents stored in AWS

**Evaluation:** When a principal makes a request, AWS evaluates all applicable policies to determine if the request is allowed or denied

#### Two Types of Policies

**Identity-Based Policies**
- Attached to: IAM user, group, or role
- Answers: "What can this identity do?"
- Example: User can read S3 bucket X

**Resource-Based Policies**
- Attached to: AWS resource
- Answers: "Who can access this resource?"
- Example: S3 bucket X allows User A to read and write

---

### How AWS Determines Permissions

Understanding the evaluation logic helps you design effective policies.

#### The Three-Step Evaluation Process

**Default: Implicit Deny**
- All requests start as denied
- Something must explicitly allow the action

**Step 1: Check for Explicit Deny**
- If any policy explicitly denies the action, request is denied
- No further evaluation needed

**Step 2: Check for Explicit Allow** (only if no explicit deny exists)
- If a policy explicitly allows the action, request is allowed
- If no explicit allow exists, default deny applies

#### Key Rules

✓ **Explicit Deny Always Wins** - Even if another policy allows the action  
✓ **Must Have Explicit Allow** - Without it, default deny applies  
✓ **Order Doesn't Matter** - All policies evaluated together  
✓ **Most Restrictive Wins** - When policies conflict, deny takes precedence

#### Practical Example

**User Bob has two policies:**

Policy 1 (Identity-based): Allow PUT to Bucket X  
Policy 2 (Resource-based): Deny PUT to Bucket X

**Result:** Bob cannot PUT objects to Bucket X because explicit deny overrides explicit allow.

---

### Identity-Based vs Resource-Based Policies

Different perspectives for managing access.

#### Identity-Based Policies

**Question Answered:** What does a particular identity have access to?

**Example Table:**

| User: Carlos | Resource | Read | Write | List |
|--------------|----------|------|-------|------|
| | Resource X | Allow | Allow | Allow |
| | Resource Y | Allow | N/A | N/A |
| | Resource Z | Allow | N/A | N/A |

**Interpretation:** Carlos can read from Resources X, Y, and Z; write to Resource X only; list Resource X only.

#### Resource-Based Policies

**Question Answered:** Who has access to a particular resource?

**Example Table:**

| Resource X | User | Read | Write | List |
|------------|------|------|-------|------|
| | Ana | Allow | Allow | Allow |
| | Akua | Allow | Allow | Allow |

**Interpretation:** Resource X allows Ana and Akua full read, write, and list access.

---

### Policy Examples: Understanding Interactions

#### Example 1: Bob and Bucket X

**Bob's Identity-Based Policy:**
- Bucket X: GET (Allow), PUT (Allow), LIST (Allow)

**Bucket X Resource-Based Policy:**
- Bob: GET (Allow), PUT (Deny), LIST (Allow)

**Question:** Can Bob GET, PUT, or LIST for Bucket X?

**Answer:**
- ✓ GET: Allowed (both policies allow)
- ✗ PUT: Denied (explicit deny overrides allow)
- ✓ LIST: Allowed (both policies allow)

#### Example 2: Bob and Bucket Y

**Bob's Identity-Based Policy:**
- Bucket Y: GET (N/A), PUT (N/A), LIST (Allow)

**Bucket Y Resource-Based Policy:**
- Bob: GET (Allow), PUT (N/A), LIST (Allow)

**Question:** Can Bob GET or LIST for Bucket Y?

**Answer:**
- ✓ GET: Allowed (resource policy explicitly allows, even though identity policy doesn't mention it)
- ✓ LIST: Allowed (both policies allow)

**Key Insight:** An explicit allow from either identity-based or resource-based policy is sufficient, as long as there's no explicit deny.

---

## Part 4: Parts of an IAM Policy

### IAM Policy Document Structure

Policies are JSON documents with specific elements.

#### Core Elements

| Element | Description | Required |
|---------|-------------|----------|
| **Version** | Policy language version to use | Yes |
| **Statement** | Container for all other elements | Yes |
| **Effect** | Allow or Deny | Yes |
| **Principal** | Who the policy applies to | For resource-based only |
| **Action** | Actions allowed or denied | Yes |
| **Resource** | Resources the actions apply to | For identity-based |
| **Condition** | Circumstances when policy applies | Optional |

#### How Statements Work

**Multiple Statements:**
- A policy can contain multiple statements
- AWS applies logical OR across statements
- At least one statement must allow for access to be granted

**Statement Logic:**
- Each statement is evaluated independently
- If any statement explicitly denies, access is denied
- If at least one allows (and none deny), access is allowed

---

### Example: Resource-Based Policy

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["dynamodb:*", "s3:*"],
      "Resource": [
        "arn:aws:dynamodb:region:account-number:table/course-notes",
        "arn:aws:s3:::course-notes-web",
        "arn:aws:s3:::course-notes-mp3/*"
      ]
    },
    {
      "Effect": "Deny",
      "Action": ["dynamodb:*", "s3:*"],
      "NotResource": [
        "arn:aws:dynamodb:region:account-number:table/course-notes",
        "arn:aws:s3:::course-notes-web",
        "arn:aws:s3:::course-notes-mp3/*"
      ]
    }
  ]
}
```

**What This Policy Does:**

**First Statement (Allow):**
- Explicitly allows all DynamoDB and S3 actions
- Only on specific resources: course-notes table and two S3 buckets

**Second Statement (Deny):**
- Explicitly denies all DynamoDB and S3 actions
- On everything EXCEPT the resources listed in NotResource

**Combined Effect:**
- Users can only access the three specified resources
- All other DynamoDB tables and S3 buckets are blocked
- Explicit deny ensures this restriction can't be overridden by other policies

---

### Example: Identity-Based Policy

```json
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": [
      "iam:*LoginProfile",
      "iam:*AccessKey*",
      "iam:*SSHPublicKey*"
    ],
    "Resource": [
      "arn:aws:iam::account-id:user/${aws:username}"
    ]
  }]
}
```

**What This Policy Does:**

**Allowed Actions (with wildcards):**
- `iam:*LoginProfile` → Create, delete, get, update login profile (password)
- `iam:*AccessKey*` → Create, delete, list, update access keys
- `iam:*SSHPublicKey*` → Create, delete, get, list, update SSH keys

**Resource Scope:**
- `${aws:username}` → Dynamic variable that represents the current user

**Combined Effect:**
- Users can manage their own credentials
- Cannot manage other users' credentials
- Self-service password and key management

**Key Feature:** The policy uses a wildcard (*) for convenient grouping of related actions and a dynamic variable for the username.

---

### Example: Cross-Account Resource-Based Policy

```json
{
  "Version": "2012-10-17",
  "Statement": {
    "Sid": "AccountBAccess1",
    "Principal": {"AWS": "111122223333"},
    "Effect": "Allow",
    "Action": "s3:*",
    "Resource": [
      "arn:aws:s3:::DOC-EXAMPLE-BUCKET",
      "arn:aws:s3:::DOC-EXAMPLE-BUCKET/*"
    ]
  }
}
```

**Scenario:** Account A owns the bucket and creates this policy

**What This Policy Does:**

**Principal:**
- `111122223333` → AWS Account B's account number
- Grants access at account level, not specific users

**Allowed Actions:**
- `s3:*` → All S3 actions (read, write, delete, list, etc.)

**Resources:**
- The bucket itself: `DOC-EXAMPLE-BUCKET`
- All objects in bucket: `DOC-EXAMPLE-BUCKET/*`

**Combined Effect:**
- Account A allows Account B to access the bucket
- Account B must create identity-based policies to grant specific users access
- Two-step process: resource policy allows account, identity policy grants users

---

## Activity: Examining IAM Policies

Practice analyzing policies to understand what they allow and deny.

### Policy Analysis 1: Read-Only IAM Access

```json
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": [
      "iam:Get*",
      "iam:List*"
    ],
    "Resource": "*"
  }
}
```

**Question 1:** Which AWS service does this policy grant access to?  
**Answer:** The IAM service (indicated by the `iam:` prefix)

**Question 2:** Does the policy allow the user to create an IAM user, group, policy, or role?  
**Answer:** No. The wildcards only match Get and List actions, which are read operations. This policy grants read-only permissions. Create actions would require `iam:Create*`.

**Question 3:** What are at least three specific actions that `iam:Get*` allows?  
**Answer:** Examples include:
- `iam:GetGroup` - Get information about a group
- `iam:GetPolicy` - Get information about a policy
- `iam:GetRole` - Get information about a role
- `iam:GetUser` - Get information about a user

### Policy Analysis 2: Conditional EC2 Termination

```json
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": "ec2:TerminateInstances",
    "Resource": "*"
  },
  {
    "Effect": "Deny",
    "Action": "ec2:TerminateInstances",
    "Condition": {
      "NotIpAddress": {
        "aws:SourceIp": [
          "192.0.2.0/24",
          "203.0.113.0/24"
        ]
      }
    },
    "Resource": "*"
  }]
}
```

**Question 1:** Does the policy allow the user to terminate any EC2 instance at any time without conditions?  
**Answer:** No. While the first statement allows termination, the second statement applies a condition that restricts where the call can come from.

**Question 2:** Does the policy allow the user to terminate an EC2 instance from anywhere?  
**Answer:** No. The call must originate from one of two IP address ranges:
- `192.0.2.0/24` (addresses 192.0.2.0 - 192.0.2.255)
- `203.0.113.0/24` (addresses 203.0.113.0 - 203.0.113.255)

**Question 3:** If the user's IP address is 192.0.2.243, could they terminate an EC2 instance?  
**Answer:** Yes. The IP 192.0.2.243 falls within the range 192.0.2.0/24 (which includes 192.0.2.0 through 192.0.2.255).

**Key Concept:** `NotIpAddress` condition means "deny if NOT from these IP ranges."

### Policy Analysis 3: Instance Type Restrictions

```json
{
  "Version": "2012-10-17",
  "Statement": [{
    "Condition": {
      "StringNotEquals": {
        "ec2:InstanceType": [
          "t2.micro",
          "t2.small"
        ]
      }
    },
    "Resource": "arn:aws:ec2:*:*:instance/*",
    "Action": [
      "ec2:RunInstances",
      "ec2:StartInstances"
    ],
    "Effect": "Deny"
  }]
}
```

**Question 1:** What actions does the policy allow?  
**Answer:** None. The effect is "Deny," not "Allow." This policy only restricts actions; it doesn't grant permissions.

**Question 2:** If the policy also included this statement, what would be the impact?
```json
{
  "Effect": "Allow",
  "Action": "ec2:*"
}
```

**Answer:** Combined effect would be:
- Allow full EC2 access in general
- BUT deny running or starting instances that are NOT t2.micro or t2.small
- Effectively: only t2.micro and t2.small instances can be launched or started
- All other EC2 actions (terminate, stop, describe, etc.) allowed without restriction

**Question 3:** With both statements, could the user terminate an m3.xlarge instance?  
**Answer:** Yes. The deny statement only restricts RunInstances and StartInstances actions for non-t2 instance types. Terminating instances is not restricted by this policy, regardless of instance type.

**Key Insight:** The deny applies only to the specific actions and conditions listed. Other actions remain unaffected.

---

## Hands-On Lab: Exploring IAM

### Lab Overview

**Duration:** Varies (access through your online course)

**Main Tasks:**
1. **Experiment with IAM policies** - See how different policies affect access
2. **Add users to IAM groups** - Practice efficient user management
3. **Use the IAM sign-in URL** - Access AWS with specific user credentials

### Lab Debrief Questions

After completing the lab, reflect on these questions:

**Question 1:** Where do you access the AWS Identity and Access Management (IAM) service?  
**Answer:** Through the AWS Management Console, typically by searching for "IAM" or accessing it from the Security, Identity, & Compliance section.

**Question 2:** What happens when a managed policy is updated?  
**Answer:** The updated permissions immediately apply to all users, groups, and roles that have the managed policy attached. This is one of the key benefits of managed policies—centralized updates.

---

## Module Summary and Key Takeaways

### Core Security Principles

✓ **Shared Responsibility Model** - AWS secures the infrastructure; you secure what you build on it

✓ **Well-Architected Framework** - Security pillar provides seven design principles for architecting secure solutions

✓ **Least Privilege** - Grant only minimum necessary permissions; it's easier to add than to remove

✓ **Encryption** - Protect data both in transit (TLS) and at rest (client-side or server-side encryption)

### IAM Fundamentals

✓ **IAM Service** - Configure fine-grained access control to AWS resources

✓ **Root User Protection** - Don't use the root user for daily tasks; create administrative users instead

✓ **Groups Best Practice** - Attach policies to groups, assign users to groups for efficient management

✓ **Roles for Temporary Access** - Use roles for temporary credentials instead of long-term access keys

### Policy Management

✓ **Two Policy Types** - Identity-based (attached to principals) and resource-based (attached to resources)

✓ **Evaluation Logic** - Default deny, explicit allow overrides default, explicit deny overrides everything

✓ **JSON Documents** - Policies define Effect, Action, Resource, and optional Conditions

✓ **Testing Tools** - Use IAM Policy Simulator to test and troubleshoot policies before deployment

---

## Applying to the Café Business

### Thinking Like a Cloud Architect

Consider Frank and Martha's café staff and their access needs:

**Potential Roles:**
- **Café Managers** - Need full access to sales data, inventory management, customer information
- **Baristas** - Need access to order system, limited customer data, no financial information
- **Website Developer** - Needs access to web hosting resources, not business data
- **Accountant** - Needs financial data access, not system configuration permissions

**Security Questions to Answer:**
1. What IAM groups would you create?
2. What permissions should each group have?
3. Should any staff have temporary access via roles?
4. How would you protect sensitive customer data?
5. What MFA requirements would you implement?

**Best Practice Approach:**
- Create groups for each role type
- Apply least privilege to each group
- Use MFA for administrative access
- Implement roles for any automated systems
- Regular audit of permissions as staff changes

---

## Assessment: Module Knowledge Check

**Format:** 10 questions delivered online in your course  
**Content:** Based on slides, notes, and this guide  
**Retakes:** Unlimited attempts available

**Access:** Log in to your online course to take the assessment

---

## Sample Exam Question: Deep Dive

### The Question

**A team of developers needs access to several services and resources in a virtual private cloud (VPC) for 9 months. Team members are likely to change during the project. Which option fulfills this requirement and follows key security principles?**

### Step 1: Identify Key Information

Before looking at answers, extract the critical details:

**Key Phrase 1:** "Team of developers"
- Multiple people need access
- They likely need similar permissions
- Not just one person

**Key Phrase 2:** "Likely to change during the project"
- People will be added to the team
- People will leave the team
- Need flexible, easy-to-update access management

**Key Phrase 3:** "For 9 months"
- Temporary project duration
- Access needed for specific time period
- Suggests need for easy removal after project ends

**Key Phrase 4:** "Follows key security principles"
- Must apply least privilege
- Should maintain individual accountability
- Needs to be manageable and secure

**What We're Looking For:**
A solution that handles multiple users with similar permissions, adapts easily to team changes, maintains security, and provides individual accountability.

---

### Step 2: Review Answer Choices

**Choice A:** Create a single IAM user for the developer team, and attach the required IAM policies to the user.

**Choice B:** Create an IAM user for each developer, and attach the required IAM policies to each user.

**Choice C:** Create an IAM user for each developer, put them all in an IAM group, and attach the required IAM policies to the group.

**Choice D:** Create a single IAM user for the developer team, place it in an IAM group, and attach the required IAM policies to the group.

---

### Step 3: Analyze Each Choice

#### Choice A: Single Shared IAM User

**The Approach:**
- One IAM user account
- Entire team shares this account
- All team members use same credentials
- Policies attached directly to this user

**Why This Fails:**

❌ **Security Violation: Shared Credentials**
- Everyone knows the same password
- Password must be shared with all team members
- When someone leaves, password must be changed and redistributed to everyone

❌ **No Individual Accountability**
- All actions appear to be performed by one "user"
- Cannot determine which team member did what
- Impossible to audit individual activity
- Security investigations become extremely difficult

❌ **Compliance Issues**
- Violates most security compliance frameworks
- Fails audit requirements
- Cannot meet regulatory standards for access tracking

❌ **Access Revocation Problems**
- When one person leaves, you can't revoke just their access
- Must change credentials for entire team
- Creates operational burden and security gaps

**Verdict:** Never use this approach. It violates fundamental security principles.

---

#### Choice D: Single Shared User in Group

**The Approach:**
- One IAM user account
- Place this user in an IAM group
- Entire team shares the user account
- Policies attached to the group

**Why This Fails:**

❌ **Same Fundamental Problems as Choice A**
- Still sharing credentials among team members
- Still no individual accountability
- Still must change password when anyone leaves
- Still violates security best practices

❌ **Group Doesn't Help**
- Putting a shared user in a group doesn't solve the sharing problem
- Group is just a different way to attach policies
- Core issue (shared credentials) remains

❌ **Adds Unnecessary Complexity**
- Group provides no benefit in this scenario
- More complicated than Choice A without solving any problems

**Verdict:** Adding a group doesn't fix the fundamental flaw of credential sharing.

---

#### Choice B: Individual Users with Individual Policies

**The Approach:**
- Create separate IAM user for each developer
- Attach policies directly to each individual user
- Each person has their own credentials

**Why This Works (Partially):**

✓ **Individual Credentials**
- Each developer has unique username and password
- Individual accountability for actions
- Can track who did what in CloudTrail logs

✓ **Individual Access Control**
- Can revoke one person's access without affecting others
- Just delete their IAM user when they leave
- No need to change passwords for other team members

✓ **Security Compliance**
- Meets basic security requirements
- Provides audit trail
- Supports regulatory compliance

**Why This Isn't Optimal:**

⚠️ **Management Overhead**
- Must attach policies to each user individually
- New developer joins? Manually attach all required policies
- Need to update permissions? Update each user separately
- High risk of inconsistency

⚠️ **Difficult to Scale**
- With team changes, you'll constantly be attaching/detaching policies
- Easy to make mistakes when managing many individual user policies
- Time-consuming as team grows

⚠️ **Error-Prone**
- Might forget to attach a policy to a new user
- Might accidentally give different permissions to different developers
- Hard to ensure everyone has exactly the same access

**Example Scenario:**
- Team has 5 developers
- Each needs 3 policies attached
- New developer joins: Must manually attach 3 policies
- Policy needs updating: Must update 6 users individually
- Developer leaves: Must manually remove 3 policies

**Verdict:** Works but is inefficient and error-prone, especially with team changes.

---

#### Choice C: Individual Users in Group (BEST ANSWER)

**The Approach:**
- Create separate IAM user for each developer
- Create one IAM group (e.g., "ProjectDevelopers")
- Add all developers to this group
- Attach policies to the group (not individual users)

**Why This Is Best:**

✓ **Individual Accountability**
- Each developer has unique credentials
- Can track individual actions
- Maintains audit trail
- Supports compliance requirements

✓ **Efficient Permission Management**
- Policies attached once to the group
- All group members automatically inherit permissions
- Consistent permissions across entire team

✓ **Easy Team Changes - Adding Members**
1. Create new IAM user for new developer
2. Add user to the ProjectDevelopers group
3. Done! User automatically has all necessary permissions

✓ **Easy Team Changes - Removing Members**
1. Remove user from ProjectDevelopers group
2. User immediately loses all project access
3. No policy detachment needed

✓ **Easy Permission Updates**
- Need to add a new permission? Update the group policy once
- All members automatically receive new permission
- Need to remove a permission? Update group policy once
- All members automatically lose that permission

✓ **Prevents Errors**
- Impossible to forget to grant a permission to a new team member
- Impossible to have inconsistent permissions across team
- Centralized management reduces mistakes

✓ **Follows Best Practices**
- Aligns with principle of least privilege
- Enables role-based access control (RBAC)
- Supports defense-in-depth security strategy

**Example Scenario:**
- Team has 5 developers
- Group has 3 policies attached
- New developer joins: Create user, add to group (2 steps) → automatically gets all 3 policies
- Policy needs updating: Update group policy once → all 6 developers updated
- Developer leaves: Remove from group → instantly loses all 3 policies

**Comparison to Choice B:**

| Task | Choice B (Individual Policies) | Choice C (Group Policy) |
|------|-------------------------------|------------------------|
| Add new developer | Create user + attach 3 policies | Create user + add to group |
| Update permissions | Update 6 users individually | Update 1 group |
| Remove developer | Remove 3 policies from user | Remove user from group |
| Ensure consistency | Manual verification needed | Automatic via group |

**Real-World Benefits:**
- **Time Savings:** Minutes instead of hours for team changes
- **Error Reduction:** Centralized control prevents mistakes
- **Audit Compliance:** Easy to demonstrate consistent access
- **Future Scalability:** Works just as well for 5 or 50 developers

**Verdict:** This is the correct answer. It balances security, efficiency, and manageability perfectly.

---

### The Correct Answer

**C. Create an IAM user for each developer, put them all in an IAM group, and attach the required IAM policies to the group.**

### Why This Matters in Real-World Architecture

Understanding this principle extends beyond this specific question:

**Broader Applications:**
- Use groups for any team with shared responsibilities
- Apply same pattern for different roles (admins, analysts, operators)
- Scales from small teams to large organizations
- Foundation for more advanced access management

**Cloud Architect Thinking:**
When designing access management, always ask:
1. Who needs similar permissions? → Create a group
2. Do permissions change frequently? → Groups make updates easy
3. Does team membership change? → Groups handle this seamlessly
4. Must I maintain individual accountability? → Groups + individual users provide both

This question tests whether you understand not just IAM mechanics, but fundamental principles of secure, scalable cloud architecture.

---

## Additional Resources

**For More Information:**
- Contact AWS Academy Support: https://support.aws.amazon.com/#/contacts/aws-academy
- Access additional resources on your course Content Resources page
- Review AWS IAM Best Practices documentation
- Practice with the IAM Policy Simulator

**Continue Learning:**
- Apply these concepts in the guided lab
- Review the Well-Architected Framework Security Pillar
- Study real-world IAM policy examples
- Practice creating and testing your own policies

---

## Module Complete

You've now covered:
- ✓ Security principles and shared responsibility
- ✓ Authentication and authorization concepts
- ✓ IAM users, groups, roles, and policies
- ✓ Policy structure and evaluation logic
- ✓ Best practices for secure access management

**Next Steps:**
1. Complete the hands-on lab
2. Take the 10-question knowledge check
3. Apply these concepts to the café scenario
4. Review any areas where you need more practice

**Remember:** Security is not a one-time setup—it's an ongoing practice of applying least privilege, monitoring access, and adapting to changing requirements while maintaining strong accountability and protection.