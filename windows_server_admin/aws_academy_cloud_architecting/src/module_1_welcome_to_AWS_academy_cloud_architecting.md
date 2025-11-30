# Welcome to AWS Academy Cloud Architecting
## Complete Module 1 Guide

---

## Module Overview

### Learning Objectives

By the end of this module, you'll be able to:

✓ **Recognize** the basic elements of the café business case used throughout the course  
✓ **Describe** the role of a cloud architect and related cloud computing careers

---

## Part 1: Course Overview

### What You'll Learn in This Course

This course teaches you to design and build secure, high-performing, resilient, and cost-effective cloud architectures using AWS services and the AWS Well-Architected Framework.

#### Core Course Objectives

By completing this course, you'll be able to:

**Apply Architectural Principles**
- Use AWS architectural best practices in decision-making
- Follow design principles from the Well-Architected Framework
- Make informed architectural choices

**Build Scalable Infrastructure**
- Use appropriate AWS services for scalability
- Create reliable systems that grow with demand
- Design for high availability

**Leverage Managed Services**
- Choose AWS managed services for flexibility
- Increase resiliency in your infrastructure
- Reduce operational overhead

**Optimize Performance and Cost**
- Increase system performance
- Reduce infrastructure costs
- Balance cost and performance trade-offs

**Secure Everything**
- Secure user access
- Protect application layers
- Control data access

**Implement Best Practices**
- Apply Well-Architected Framework principles
- Improve existing architectures
- Design solutions that meet business needs

---

### Three Architecture Patterns You'll Master

Throughout this course, you'll explore architectural layers, design principles, and AWS services for three fundamental architecture patterns:

#### 1. Three-Tier Architectures
Traditional web application structure with presentation, application logic, and data layers.

**Use Cases:**
- Web applications
- E-commerce platforms
- Content management systems

#### 2. Serverless Architectures
Event-driven architectures that run code without managing servers.

**Use Cases:**
- APIs and microservices
- Data processing pipelines
- Real-time file processing

#### 3. Streaming Architectures
Real-time data processing and analytics systems.

**Use Cases:**
- Real-time analytics
- IoT data processing
- Log and event processing

---

### Alignment with AWS Certification

#### AWS Certified Solutions Architect – Associate

This course aligns with the knowledge and skills tested in the **AWS Certified Solutions Architect – Associate exam (SAA-C03)**.

**What the Certification Validates:**

**Design Skills:**
- Create solutions based on Well-Architected Framework
- Design for current and future business needs
- Incorporate appropriate AWS services

**Architecture Qualities:**
- Secure architectures
- Resilient systems
- High-performing solutions
- Cost-optimized designs

**Improvement Ability:**
- Review existing solutions
- Identify improvement opportunities
- Implement enhancements

**Important Note:** This is not an exam preparation course, but the lectures and labs align with the exam guide. The final module, "Bridging to Certification," provides additional exam preparation guidance.

---

### Course Structure: 17 Modules

#### Foundation Modules (1-3)
**Module 1: Welcome to AWS Academy Cloud Architecting**
- Course overview and business case introduction

**Module 2: Introducing Cloud Architecting**
- Cloud architecture fundamentals
- AWS Well-Architected Framework introduction

**Module 3: Securing Access**
- Security principles
- Identity and Access Management (IAM)

#### Architectural Layer Modules (4-8)
**Module 4: Adding a Storage Layer with Amazon S3**
- Object storage fundamentals
- S3 features and use cases

**Module 5: Adding a Compute Layer Using Amazon EC2**
- Virtual server management
- Instance types and configurations

**Module 6: Adding a Database Layer**
- Database service options
- Choosing the right database

**Module 7: Creating a Networking Environment**
- Amazon VPC fundamentals
- Network design

**Module 8: Connecting Networks**
- Network connectivity options
- Hybrid architectures

#### Design Principles and Best Practices (9-16)
**Module 9: Securing User, Application, and Data Access**
- Multi-layered security
- Encryption and access control

**Module 10: Implementing Monitoring, Elasticity, and High Availability**
- CloudWatch monitoring
- Auto Scaling strategies
- High availability design

**Module 11: Automating Your Architecture**
- Infrastructure as Code
- AWS CloudFormation

**Module 12: Caching Content**
- CloudFront and caching strategies
- Performance optimization

**Module 13: Building Decoupled Architectures**
- Microservices principles
- Loosely coupled designs

**Module 14: Building Serverless Architectures and Microservices**
- AWS Lambda
- Event-driven design

**Module 15: Data Engineering Patterns**
- Data processing architectures
- Analytics solutions

**Module 16: Planning for Disaster**
- Backup strategies
- Disaster recovery design

#### Certification Preparation (17)
**Module 17: Bridging to Certification**
- Exam preparation strategies
- Practice and resources

---

### Prerequisites: What You Should Know

To be most successful in this course, you should have:

#### Required Knowledge

**AWS Cloud Fundamentals**
- Equivalent to completing AWS Academy Cloud Foundations or similar course
- Basic understanding of AWS services
- Familiarity with cloud concepts

**Distributed Systems**
- Working knowledge of how distributed systems operate
- Understanding of system components
- Basic architectural concepts

**Multi-Tier Architectures**
- Familiarity with presentation, logic, and data layers
- Understanding of layer separation
- Basic web application structure

**General Networking**
- Network concepts and protocols
- IP addressing basics
- How the internet works

#### Need a Refresher?

**AWS Educate Resources:**
Self-paced training available on the content resources page of your course.

**How to Access:**
- Register for a free AWS Educate account
- Verification takes up to one day
- No credit card required
- Available to learners 13 years and older
- Only need an email address

**What You'll Find:**
- Foundational cloud topics
- Self-paced learning paths
- Variety of learning formats
- Training based on knowledge level

**Registration Help:**
See the "Accessing AWS Educate Instructions" PDF in your course resources.

**Important Note:** Modules 2 and 3 review foundational concepts. If these feel unfamiliar, complete a foundations course or AWS Educate training first.

---

### Course Materials: What's Included

#### Learning Materials

**Student Guides**
- Comprehensive written content for each module
- Detailed explanations and examples
- Reference material you can revisit

**Video Content**
- Instructor presentations
- Concept reinforcement videos
- Recorded demonstrations

**Hands-On Labs**
Three types of lab experiences:

**1. Guided Labs**
- Step-by-step instructions
- Detailed click-by-click guidance
- Learn by following along
- Build foundational skills

**2. Challenge Labs (Café Labs)**
- Based on the café business case
- Sections without detailed instructions
- Apply skills from guided labs
- Think critically to solve problems
- Real-world scenarios

**3. AWS Academy Cloud Architecting Capstone**
- Apply learning without detailed guidance
- Long-lived environment (work over multiple days)
- Pick up where you left off
- Comprehensive final project

**Recorded Demonstrations**
- Visual illustrations of concepts
- Included in module materials
- Referenced in student guides

**Instructor-Led Activities**
- Complement lectures
- Collaborative learning
- Practice applying concepts
- Materials provided as needed

#### Knowledge Checks and Assessments

**Module Knowledge Checks (Modules 2-16)**
- 10 questions per module
- Based on slides and student guides
- Unlimited retakes
- Immediate feedback

**Sample Exam Questions (Modules 2-16)**
- One practice question per module
- Similar to certification exam format
- Discussion and explanation included
- Build exam-taking skills

**Course Assessment**
- 25 questions total
- Covers content from all modules
- Unlimited retakes
- Comprehensive review

---

## Part 2: The Café Business Case

### Why a Business Case?

The challenge labs use a fictional café business to explore cloud computing in a relatable context. This scenario helps you understand:

- Real-world applicability of technical concepts
- How business needs drive architectural decisions
- Practical problem-solving with cloud services
- Evolution of architectures over time

**Your Role:** Throughout the course, you'll act as café staff and receive guidance from AWS consultant visitors, architecting cloud solutions to meet the café's growing needs.

---

### Meet Frank and Martha: The Café Owners

**Frank and Martha's Story:**
- Opened a café and bakery in retirement
- Not ready to stop working entirely
- Love baking and wanted to supplement income
- Located at the base of their residential building
- Enjoy interacting with neighborhood community
- Support local events with baked goods and coffee

**Current Situation:**
- Experiencing increased local business
- Receiving inquiries from travelers and tourists
- Ready to grow beyond their local presence
- Need technology to scale their operations

**Technical Background:**
- Frank: Retired from the navy, great baker, minimal tech skills (takes selfies of creations)
- Martha: Retired accountant, comfortable with spreadsheets, otherwise not technical

---

### Meet the Café Staff

#### Sofía
**Role:** Supply chain manager for the café

**Background:**
- Daughter of Frank and Martha
- Runs day-to-day operations
- Manages ingredient sourcing
- Tracks inventory

**Skills:**
- Took programming classes in secondary school
- Planning to pursue business administration degree
- Technical enough to understand cloud possibilities
- Bridge between owners and technology

**Key Contribution:**
- Learned about AWS services
- Educating parents about cloud benefits
- Sees how AWS can automate business tasks
- Understands potential to improve customer experience

#### Nikhil
**Role:** Café employee

**Background:**
- Works part time
- Serves customers at counter
- Assists with various café tasks under Sofía's supervision
- Finished secondary school

**Skills:**
- Visual design experience
- Interested in web development
- Wants to learn cloud computing
- Planning university degree combining design and cloud

**Future Plans:**
- May take on more responsibilities when Sofía starts university
- Growing his technical skills
- Building toward cloud computing career

---

### Meet the AWS Consultant Visitors

Three frequent café visitors who are friends with Sofía and Nikhil provide expert guidance throughout the course.

#### Olivia: AWS Solutions Architect

**Expertise:**
- AWS solutions architecture
- Network engineering background
- Database technologies specialist
- Expert in cloud technologies

**Background:**
- Recently moved to downtown area
- Discovered café through conversations with Sofía and Nikhil
- Enjoys sharing knowledge

**Role in Labs:**
- Provides architectural guidance
- Offers network and database expertise
- Helps design scalable solutions

#### Faythe: AWS Developer

**Expertise:**
- AWS development
- Programming and application development
- Cloud security specialist
- Big data solutions interest

**Background:**
- Completed AWS internship program
- Recently achieved AWS Certified Security – Specialty
- Likes applying technology to business problems
- Regular café customer (loves Frank's baking)

**Role in Labs:**
- Development guidance
- Security best practices
- Application design advice

#### Mateo: AWS SysOps Engineer

**Expertise:**
- AWS systems operations
- Automation specialist
- Fault tolerance design
- Backup and disaster recovery

**Background:**
- Previously worked as developer
- Mentoring Faythe since her internship
- Grabs coffee on way to work
- Enjoys helping others learn

**Role in Labs:**
- Automation strategies
- Operational excellence guidance
- Disaster recovery planning

---

### The Café Architecture Evolution

Across seven challenge labs, you'll help Frank and Martha transform their simple website into a sophisticated, scalable cloud application.

#### Version 1: Getting Started Online

**Business Need:**  
Build a simple online presence for the small business.

**Technical Solution:**  
Host a static website on Amazon S3.

**What You'll Learn:**
- Basic web hosting in AWS
- S3 static website hosting
- Simple, cost-effective presence

**Real-World Application:**  
Many small businesses start here—minimal cost, easy to manage, perfect for basic information.

---

#### Version 2: Adding Interactivity

**Business Need:**  
Update the website to support dynamic content and online ordering.

**Technical Solution:**  
Deploy a web application and database on Amazon EC2.

**What You'll Learn:**
- Running applications on virtual servers
- Database setup and configuration
- Dynamic web application hosting

**Real-World Application:**  
Business growth requires user interaction—ordering systems, content updates, customer accounts.

---

#### Version 3: Reducing Maintenance Burden

**Business Need:**  
Reduce the effort to maintain the database and secure its data.

**Technical Solution:**  
Separate web and database layers. Migrate the database to Amazon RDS on a private subnet.

**What You'll Learn:**
- Managed database services
- Network security with subnets
- Architectural layer separation
- Reduced operational overhead

**Real-World Application:**  
As businesses grow, manual database maintenance becomes unsustainable. Managed services free up time for business value.

---

#### Version 4: Strengthening Security

**Business Need:**  
Enhance the security of the web application.

**Technical Solution:**  
Use Amazon VPC features to configure and secure public and private subnets.

**What You'll Learn:**
- Network security design
- Public vs. private subnet configuration
- Security group implementation
- Defense in depth

**Real-World Application:**  
Handling customer orders and data requires robust security. Proper network design is foundational.

---

#### Version 5: Scaling for Growth

**Business Need:**  
Ensure the website can handle an expected increase in traffic and remain highly available and resilient to failure.

**Technical Solution:**  
Add a load balancer, implement auto scaling on EC2 instances, and distribute compute and database instances across two Availability Zones.

**What You'll Learn:**
- Load balancing strategies
- Auto scaling implementation
- High availability design
- Multi-AZ deployment
- Resilience to failure

**Real-World Application:**  
Success brings traffic spikes. Architecture must scale automatically and survive component failures without downtime.

---

#### Version 6: Automating Deployment

**Business Need:**  
Automate deployments so the café can consistently deploy, manage, and update café resources across Regions.

**Technical Solution:**  
Build a version-controlled CloudFormation template to deploy the network and application layers. Deploy the CloudFormation stack to another Region.

**What You'll Learn:**
- Infrastructure as Code with CloudFormation
- Template development and version control
- Multi-Region deployment
- Consistent, repeatable deployments

**Real-World Application:**  
Manual deployment is error-prone and time-consuming. Automation enables rapid, consistent expansion to new regions.

---

#### Version 7: Intelligence and Optimization

**Business Need:**  
Add reporting capabilities while reducing the operational and maintenance burden, improving performance, and reducing costs.

**Technical Solution:**  
Deploy Lambda functions that connect to the Amazon RDS database and generate reports based on a schedule.

**What You'll Learn:**
- Serverless computing with Lambda
- Event-driven architecture
- Scheduled task automation
- Cost optimization through serverless

**Real-World Application:**  
Businesses need insights from their data. Serverless reporting provides intelligence without managing additional servers.

---

### The Journey Summary

**From → To:**
- Simple static website → Sophisticated cloud application
- Manual processes → Automated operations
- Single point of failure → Highly available system
- Fixed capacity → Elastic scaling
- Basic security → Defense in depth
- Manual deployment → Infrastructure as Code
- Limited insights → Automated reporting

**Business Outcomes:**
- Reduced operational burden
- Improved security posture
- Better performance
- Lower costs
- Ability to scale
- Faster time to market
- Enhanced customer experience

---

## Part 3: Cloud Computing Career Roles

Understanding different roles helps you navigate your career path and work effectively in cloud teams.

---

### IT Professional

**Who They Are:**  
Technical generalists who manage infrastructure and applications.

#### Common Responsibilities

**Application Management:**
- Manage entire application infrastructure
- Understand how all components fit together
- Broad knowledge across services

**Production Environment:**
- Often responsible for production systems
- Ensure uptime and reliability
- Handle day-to-day operations

**Technical Expertise:**
- Highly technical
- Hands-on with systems
- Troubleshoot issues

**Cloud Experience:**
- May have significant cloud experience
- Or may be learning cloud technologies
- Often specialize in one area (security, storage, networking)

#### Typical Job Titles
- IT Administrator
- Systems Administrator
- Network Administrator

#### Key Characteristics
**Strength:** Broad range of skills, strong understanding of how systems work together

**Approach:** Practical, hands-on problem solving

**Knowledge:** Deep understanding of infrastructure components, but may not know every service in detail

---

### IT Leader

**Who They Are:**  
Managers who lead IT teams and make technology decisions.

#### Common Responsibilities

**Team Leadership:**
- Lead team of IT professionals
- Mentor and develop staff
- Assign work and responsibilities

**Operations Management:**
- Responsible for day-to-day operations
- Ensure team meets objectives
- Handle escalations

**Technology Strategy:**
- Stay informed about new technologies
- Choose which technologies to adopt
- Manage technology budget

**Project Involvement:**
- Hands-on during early project stages
- Define architecture and approach
- Delegate implementation to team

#### Typical Job Titles
- IT Manager
- IT Director
- IT Supervisor

#### Key Characteristics
**Strength:** Balance between technical knowledge and management skills

**Approach:** Strategic early on, then empower team for execution

**Knowledge:** Broad understanding with ability to dive deep when needed

---

### Developer

**Who They Are:**  
Code-focused professionals who build applications.

#### Common Responsibilities

**Code Development:**
- Write application code
- Test functionality
- Fix bugs and issues

**Application-Level Thinking:**
- Focus on application functionality
- Design software solutions
- Implement features

**API and SDK Usage:**
- Work with AWS APIs
- Use Software Development Kits (SDKs)
- Integrate services programmatically

**Documentation and Resources:**
- Build and consume documentation
- Use code repositories
- Leverage sample code
- Accelerate development with existing resources

**Specialization:**
- May specialize in security
- Or storage solutions
- Or other technical areas

#### Typical Job Titles
- Software Developer
- System Architect
- Software Development Manager

#### Key Characteristics
**Strength:** Deep understanding of code and application logic

**Approach:** Detail-oriented, focused on making applications work

**Knowledge:** Programming languages, APIs, SDKs, and development best practices

---

### DevOps Engineer

**Who They Are:**  
Infrastructure specialists who build the platforms applications run on.

#### Common Responsibilities

**Infrastructure Building:**
- Build cloud infrastructure for applications
- Create deployment pipelines
- Automate infrastructure provisioning

**Code and Configuration:**
- Write code to install and configure servers
- Improve deployment automation
- Create Infrastructure as Code

**Architectural Guidance:**
- Follow cloud architect guidelines
- Implement architectural decisions
- Ensure infrastructure meets requirements

**Experimentation:**
- Try new approaches to improve deployments
- Learn by doing
- Continuously optimize

**Repeatability:**
- Create repeatable deployment solutions
- Document infrastructure patterns
- Apply engineering principles to operations

#### Typical Job Titles
- DevOps Engineer
- Build Engineer
- Reliability Engineer

#### Key Characteristics
**Strength:** Bridge between development and operations

**Approach:** Automation-first, experiment to improve

**Knowledge:** Infrastructure as Code, CI/CD pipelines, cloud services, and scripting

---

### Cloud Architect

**Who They Are:**  
Strategic designers who create and guide implementation of cloud solutions.

#### Common Responsibilities

**Stay Current:**
- Read about new technologies
- Stay up to date with cloud trends
- Evaluate emerging services
- Understand latest best practices

**Technology Selection:**
- Decide which technologies to use
- Match services to business requirements
- Evaluate service capabilities
- Make informed recommendations

**Developer Support:**
- Provide architectural documentation
- Create processes and guidelines
- Develop tooling
- Give developers freedom to innovate

**Challenge Resolution:**
- Optimize costs
- Improve performance
- Enhance reliability
- Strengthen security
- Apply best practices

**Design Architecture:**
- Create architectural diagrams
- Design system structure
- Plan for scalability and resilience
- Balance trade-offs

#### Typical Job Titles
- Cloud Architect
- Systems Engineer
- Systems Analyst

#### Well-Architected Framework Alignment

Cloud architect responsibilities align closely with the AWS Well-Architected Framework pillars:

**Operational Excellence:**
- Design for efficient operations
- Enable monitoring and improvement

**Security:**
- Implement security at all layers
- Protect data and systems

**Reliability:**
- Design for failure recovery
- Ensure high availability

**Performance Efficiency:**
- Optimize resource usage
- Select appropriate technologies

**Cost Optimization:**
- Manage resources efficiently
- Reduce unnecessary expenses

**Sustainability:**
- Minimize environmental impact
- Maximize resource efficiency

#### Key Characteristics
**Strength:** Strategic thinking combined with technical depth

**Approach:** Design solutions that meet business goals using cloud best practices

**Knowledge:** Broad and deep—understand many services and how they work together

**Your Perspective:**  
The cloud architect role is the perspective you'll take throughout this course. You'll learn to make architectural decisions that balance technical requirements with business needs.

---

## Career Path Considerations

### Which Role Fits You?

**If you enjoy:**
- **Hands-on technical work** → IT Professional or Developer
- **Leading teams and strategy** → IT Leader
- **Automation and infrastructure** → DevOps Engineer
- **Designing solutions** → Cloud Architect

**Remember:**
- Roles often overlap
- You can transition between roles
- Many cloud architects started in other roles
- Continuous learning is essential in all roles

---

## Module Summary

### What You've Learned

This introductory module prepared you to:

✓ **Understand the Course Structure**
- 17 modules covering foundational to advanced topics
- Three architecture patterns: three-tier, serverless, streaming
- Alignment with AWS Certified Solutions Architect – Associate exam

✓ **Know the Café Business Case**
- Frank and Martha's café and bakery
- Staff: Sofía and Nikhil
- AWS consultants: Olivia, Faythe, and Mateo
- Seven-stage architecture evolution

✓ **Recognize Cloud Computing Roles**
- IT Professional: Technical generalist
- IT Leader: Team manager and strategist
- Developer: Code-focused builder
- DevOps Engineer: Infrastructure automator
- Cloud Architect: Solution designer (your course perspective)

---

## What's Next

### Continue Your Journey

**Module 2: Introducing Cloud Architecting**
- Learn cloud architecture fundamentals
- Explore the AWS Well-Architected Framework
- Understand best practices for AWS solutions
- Learn about AWS Global Infrastructure

**Throughout the Course:**
- Apply what you learn in hands-on labs
- Help the café evolve their architecture
- Build skills aligned with AWS certification
- Prepare for a career in cloud architecture

**Remember:**  
Every module builds on the previous ones. The café business case will help you understand how architectural concepts apply to real business problems.

---

## Additional Resources

**For More Information:**
- Contact AWS Academy Support: https://support.aws.amazon.com/#/contacts/aws-academy
- Access additional resources on your course Content Resources page
- Register for AWS Educate for foundational training
- Review the Bridging to Certification module for exam preparation

**Course Materials:**
- Student guides for all modules
- Video presentations and demonstrations
- Hands-on lab environments
- Knowledge checks and assessments
- Sample exam questions

---

## Your Cloud Architect Journey Begins

You're now ready to start your journey to becoming a cloud architect. Throughout this course, you'll:

- Learn architectural principles and best practices
- Gain hands-on experience with AWS services
- Apply concepts to real-world business scenarios
- Develop skills for AWS certification
- Prepare for a career in cloud computing

**Think Like an Architect:**  
As you progress, remember that good architecture starts with understanding business needs and works backward to design the best technical solution. The café business case will help you develop this mindset.

**Welcome to AWS Academy Cloud Architecting!**