---
title: "**100 Multiple Choice Questions - Software Engineering**"
author: [Sou Chanrojame]
date: "\\today"
# subject: "Markdown"
# keywords: [Markdown, Example]
# subtitle: "Aesculeae domus vincemur et Veneris adsuetus lapsum"
lang: "en"
titlepage: true
documentclass: article
papersize: a4
fontsize: 11pt
header-includes:
  - \usepackage[margin=1in]{geometry}
---

## Section 1: Conceptual Foundations (Questions 1-25)

**1. Which of the following is NOT a challenge of learning software engineering?**
- A) Complexity of software systems
- B) Abstract nature of software
- C) Static technology landscape
- D) Team dependency

**2. What is a key success factor in software development?**
- A) Changing requirements frequently
- B) Clear and frozen requirements
- C) Minimal user involvement
- D) Immature technology adoption

**3. Which factor commonly leads to software development failure?**
- A) Strong stakeholder involvement
- B) Realistic schedules
- C) Scope creep
- D) Proper planning

**4. In traditional Waterfall methodology, when does testing occur?**
- A) Throughout development
- B) At the beginning
- C) At the end
- D) During requirements phase

**5. Which characteristic describes Modern Agile development?**
- A) Linear phases
- B) Rigid requirements
- C) Iterative development
- D) Documentation-driven

**6. What does "Shift-Left Testing" mean?**
- A) Testing only at the end
- B) Testing early and often
- C) Moving testers to different teams
- D) Postponing testing

**7. Which is an attribute of high-quality software?**
- A) High resource consumption
- B) Difficult to modify
- C) Maintainability
- D) Platform-specific only

**8. Software validity refers to:**
- A) Building the product right
- B) Building the right product
- C) Testing without failures
- D) Code efficiency

**9. Software reliability is identified through:**
- A) User acceptance testing only
- B) Stress testing and MTBF tracking
- C) Requirements reviews
- D) Design documents

**10. Which is a key characteristic of a professional software engineer?**
- A) Working in isolation
- B) Resisting new technologies
- C) Lifelong learning
- D) Avoiding communication

**11. What is technical debt?**
- A) Money owed to developers
- B) Cost of choosing easy solutions over better approaches
- C) Budget overruns
- D) Hardware expenses

**12. Which testing type is manual testing good for?**
- A) Load testing
- B) Regression testing
- C) UI/UX and exploratory testing
- D) Automated scripts

**13. What is a functional requirement?**
- A) System performance specification
- B) What the system does
- C) How fast the system runs
- D) Security standards

**14. A non-functional requirement example is:**
- A) User can reset password
- B) System has a login button
- C) Password reset email sent within 5 seconds
- D) Database stores user data

**15. Which method measures software size?**
- A) Lines of Code (LOC)
- B) Number of developers
- C) Project budget
- D) Meeting frequency

**16. Function Points estimate based on:**
- A) Only lines of code
- B) Inputs, outputs, inquiries, files, and interfaces
- C) Team size alone
- D) Project duration

**17. Verification asks:**
- A) Are we building the right product?
- B) Are we building the product right?
- C) Is the product profitable?
- D) Is the product innovative?

**18. Validation asks:**
- A) Are we building the product right?
- B) Are we following standards?
- C) Are we building the right product?
- D) Are we on budget?

**19. Which is a non-functional testing type?**
- A) Unit testing
- B) Integration testing
- C) Load/Performance testing
- D) Acceptance testing

**20. What is scope creep?**
- A) Fixed requirements
- B) Unrealistic or changing requirements
- C) Clear project boundaries
- D) Proper planning

**21. Automated testing is best for:**
- A) One-time exploratory tests
- B) Ad-hoc UI testing
- C) Regression and load testing
- D) Initial user experience evaluation

**22. What is a code smell?**
- A) Well-written code
- B) Indicator of potential problems in code
- C) Code comments
- D) Version control

**23. A "Long Method" code smell means:**
- A) A function doing too many things
- B) A well-optimized function
- C) A short, concise function
- D) Properly documented code

**24. Input validation helps prevent:**
- A) Code optimization
- B) SQL Injection and XSS attacks
- C) User engagement
- D) Database design

**25. Static analysis tools are used for:**
- A) Running the application
- B) Auto-scanning for vulnerabilities
- C) User interface design
- D) Database management

## Section 2: Development Methodologies (Questions 26-45)

**26. Scrum has how many core roles?**
- A) Two
- B) Three
- C) Four
- D) Five

**27. Who is responsible for maximizing product value in Scrum?**
- A) Scrum Master
- B) Developer
- C) Product Owner
- D) Tester

**28. What does the Scrum Master focus on?**
- A) Writing code
- B) Process facilitation
- C) Business value
- D) Testing

**29. A Sprint Backlog contains:**
- A) All future work
- B) Plan for current sprint
- C) Completed features
- D) Bug reports only

**30. The Product Backlog is:**
- A) Completed work
- B) List of all work items
- C) Current sprint tasks only
- D) Test cases

**31. What is an Increment in Scrum?**
- A) Planning document
- B) Finished, potentially shippable work
- C) Meeting agenda
- D) Bug list

**32. Agile welcomes:**
- A) Fixed requirements
- B) No documentation
- C) Changing requirements
- D) Late testing only

**33. Waterfall is characterized by:**
- A) Iterative cycles
- B) Sequential phases
- C) Continuous deployment
- D) Flexible requirements

**34. DevOps unifies:**
- A) Development and Operations
- B) Testing and Design
- C) Planning and Documentation
- D) Frontend and Backend

**35. In DevOps, monitoring data feeds back to:**
- A) Deployment only
- B) Planning phase
- C) Testing only
- D) Release management

**36. Continuous Integration (CI) involves:**
- A) Manual deployments
- B) Automated builds and testing
- C) Annual releases
- D) No version control

**37. Continuous Deployment (CD) means:**
- A) Manual release approval
- B) Automated deployment to production
- C) Quarterly releases
- D) Testing in isolation

**38. The Spiral Model emphasizes:**
- A) Linear progression
- B) Risk analysis
- C) No planning
- D) Single iteration

**39. RAD (Rapid Application Development) focuses on:**
- A) Long planning phases
- B) Quick prototyping and iteration
- C) Extensive documentation
- D) Waterfall approach

**40. Kanban uses:**
- A) Fixed time sprints
- B) Visual workflow boards
- C) No work limits
- D) Annual planning

**41. Throwaway prototyping involves:**
- A) Building the final system first
- B) Creating a mock version then discarding it
- C) No user feedback
- D) Skipping design phase

**42. Scrum ceremonies do NOT include:**
- A) Sprint Planning
- B) Daily Standup
- C) Annual Review
- D) Sprint Retrospective

**43. Agile values working software over:**
- A) Customer collaboration
- B) Comprehensive documentation
- C) Responding to change
- D) Individual interactions

**44. The infinity loop in DevOps represents:**
- A) Linear process
- B) Continuous cycle
- C) One-time deployment
- D) Documentation phase

**45. In modern development, testing is:**
- A) Done at the end only
- B) Integrated throughout lifecycle
- C) Optional
- D) Done before coding

## Section 3: Testing and Quality (Questions 46-65)

**46. Manual testing involves:**
- A) Automated scripts
- B) Human testers playing user role
- C) No interaction
- D) Only code review

**47. Selenium is used for:**
- A) Manual testing
- B) Automated web testing
- C) Database design
- D) Project management

**48. User Acceptance Testing (UAT) verifies:**
- A) Code syntax
- B) System meets user needs
- C) Database structure
- D) Network speed

**49. Regression testing ensures:**
- A) New features work only
- B) Fixes didn't break existing functionality
- C) Performance improves
- D) Documentation is complete

**50. Load testing checks:**
- A) Code quality
- B) System behavior under heavy traffic
- C) User interface design
- D) Database schema

**51. Security testing looks for:**
- A) Performance issues
- B) Vulnerabilities
- C) User experience problems
- D) Design flaws

**52. Mean Time Between Failures (MTBF) measures:**
- A) Code quality
- B) System reliability
- C) User satisfaction
- D) Development speed

**53. Defect Removal Efficiency is a:**
- A) Product metric
- B) Process metric
- C) Design pattern
- D) Programming language

**54. Cyclomatic Complexity measures:**
- A) Team size
- B) Code maintainability
- C) Project cost
- D) User satisfaction

**55. Big O notation is used for:**
- A) Project planning
- B) Algorithm efficiency analysis
- C) Team management
- D) Documentation

**56. SonarQube is a tool for:**
- A) Project management
- B) Static code analysis
- C) Database design
- D) User testing

**57. Unit testing verifies:**
- A) Entire system
- B) Individual functions/components
- C) User interface only
- D) Network connectivity

**58. Integration testing checks:**
- A) Individual components
- B) Components working together
- C) User acceptance
- D) Documentation quality

**59. Stress testing determines:**
- A) Normal operation
- B) System breaking point
- C) User preferences
- D) Code style

**60. Penetration testing is related to:**
- A) Performance
- B) Security
- C) Usability
- D) Documentation

**61. Code coverage measures:**
- A) Lines of documentation
- B) Percentage of code tested
- C) Team productivity
- D) Project timeline

**62. A test case should be:**
- A) Vague and general
- B) Specific and repeatable
- C) Undocumented
- D) Impossible to automate

**63. Smoke testing is:**
- A) Comprehensive testing
- B) Basic functionality check
- C) Security testing
- D) Performance testing

**64. Alpha testing is conducted by:**
- A) End users
- B) Internal team
- C) Third-party testers
- D) Customers

**65. Beta testing is conducted by:**
- A) Developers only
- B) Internal QA team
- C) External users/customers
- D) Management

## Section 4: Software Process and Management (Questions 66-85)

**66. An SRS document is:**
- A) Test plan
- B) Software Requirements Specification
- C) System Release Schedule
- D) Source Code Repository

**67. Good requirements should be:**
- A) Ambiguous
- B) Unverifiable
- C) Unambiguous and verifiable
- D) Incomplete

**68. A Process Model provides:**
- A) Final product
- B) Blueprint for how work should be done
- C) User interface
- D) Database schema

**69. Change Control Board (CCB) decides:**
- A) Code syntax
- B) If maintenance requests are approved
- C) Testing schedules
- D) Developer salaries

**70. A Maintenance Request (MR) originates from:**
- A) Developers
- B) Customers/Help Desk
- C) Management only
- D) Automated systems

**71. Legacy code refers to:**
- A) New features
- B) Old code written previously
- C) Documentation
- D) Test cases

**72. The DRY principle means:**
- A) Document Redundant Yearly
- B) Don't Repeat Yourself
- C) Deploy Regularly Yet
- D) Debug Rigorously Yearly

**73. A "God Object" is:**
- A) Well-designed class
- B) Large class that knows too much
- C) Optimized code
- D) Test framework

**74. Version control systems like Git help with:**
- A) Code compilation
- B) Collaboration and code history
- C) User interface design
- D) Database queries

**75. CI/CD stands for:**
- A) Code Integration/Code Deployment
- B) Continuous Integration/Continuous Deployment
- C) Central Information/Central Data
- D) Code Inspection/Code Documentation

**76. A Pull Request is used for:**
- A) Database queries
- B) Code review before merging
- C) User authentication
- D) Error handling

**77. Release Cycle Time is a:**
- A) Product metric
- B) Process metric
- C) Design pattern
- D) Testing method

**78. GDPR relates to:**
- A) Code quality
- B) Data privacy compliance
- C) Testing frameworks
- D) Design patterns

**79. ACM/IEEE codes provide:**
- A) Programming syntax
- B) Ethical guidelines for engineers
- C) Testing procedures
- D) Design templates

**80. Portability means software can:**
- A) Only run on one OS
- B) Run on different environments/OS
- C) Be easily deleted
- D) Have large file size

**81. Usability focuses on:**
- A) Code efficiency
- B) Ease of use for users
- C) Database design
- D) Network speed

**82. Efficiency in software means:**
- A) Using maximum resources
- B) Using resources wisely
- C) Slow performance
- D) Large memory footprint

**83. Story Points are used for:**
- A) Writing documentation
- B) Relative sizing in Agile
- C) Code compilation
- D) Database indexing

**84. A realistic schedule is important for:**
- A) Project failure
- B) Project success
- C) Scope creep
- D) Poor communication

**85. Stakeholder involvement leads to:**
- A) Project delays
- B) Increased success rate
- C) Unclear requirements
- D) Communication problems

## Section 5: Technical Concepts (Questions 86-100)

**86. A Process is:**
- A) A thread within a program
- B) Independent program with own memory
- C) A function call
- D) A variable

**87. A Thread is:**
- A) Independent program
- B) Lighter execution unit within a process
- C) Database connection
- D) Network protocol

**88. A Race Condition occurs when:**
- A) Code runs too fast
- B) Two threads access shared data simultaneously
- C) Network is slow
- D) Database is full

**89. Deadlock happens when:**
- A) Code executes successfully
- B) Threads wait on each other forever
- C) System runs fast
- D) Memory is available

**90. A Mutex provides:**
- A) Unlimited access
- B) Mutual exclusion lock for resources
- C) No synchronization
- D) Multiple simultaneous access

**91. A Semaphore:**
- A) Blocks all access
- B) Controls access with counter
- C) Has no limit
- D) Is only for processes

**92. SQL Injection is prevented by:**
- A) Fast queries
- B) Input validation and sanitization
- C) Large databases
- D) Multiple tables

**93. XSS (Cross-Site Scripting) is a:**
- A) Performance issue
- B) Security vulnerability
- C) Design pattern
- D) Testing method

**94. Database indexing improves:**
- A) Security only
- B) Query performance
- C) Code readability
- D) User interface

**95. Refactoring means:**
- A) Adding new features
- B) Cleaning up code without changing behavior
- C) Removing functionality
- D) Rewriting from scratch

**96. Technical stakeholders include:**
- A) End users only
- B) Admins and security leads
- C) Customers only
- D) Marketing team only

**97. Productivity is measured in:**
- A) Meetings per day
- B) LOC per person-month
- C) Emails sent
- D) Documentation pages

**98. Labor rate is expressed as:**
- A) Cost per line of code
- B) Cost per person-month
- C) Cost per feature
- D) Cost per bug

**99. Total Effort is calculated by:**
- A) Team size × duration
- B) Total LOC ÷ productivity
- C) Cost ÷ team size
- D) Duration × productivity

**100. The feedback loop in software process ensures:**
- A) No changes needed
- B) Problems found are fixed before release
- C) Documentation is skipped
- D) Testing is avoided

---

## Answer Key
```
1. C | 2. B | 3. C | 4. C | 5. C | 6. B | 7. C | 8. B | 9. B | 10. C
11. B | 12. C | 13. B | 14. C | 15. A | 16. B | 17. B | 18. C | 19. C | 20. B
21. C | 22. B | 23. A | 24. B | 25. B | 26. B | 27. C | 28. B | 29. B | 30. B
31. B | 32. C | 33. B | 34. A | 35. B | 36. B | 37. B | 38. B | 39. B | 40. B
41. B | 42. C | 43. B | 44. B | 45. B | 46. B | 47. B | 48. B | 49. B | 50. B
51. B | 52. B | 53. B | 54. B | 55. B | 56. B | 57. B | 58. B | 59. B | 60. B
61. B | 62. B | 63. B | 64. B | 65. C | 66. B | 67. C | 68. B | 69. B | 70. B
71. B | 72. B | 73. B | 74. B | 75. B | 76. B | 77. B | 78. B | 79. B | 80. B
81. B | 82. B | 83. B | 84. B | 85. B | 86. B | 87. B | 88. B | 89. B | 90. B
91. B | 92. B | 93. B | 94. B | 95. B | 96. B | 97. B | 98. B | 99. B | 100. B
```