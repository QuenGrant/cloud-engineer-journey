# Day 01 - Linux Foundation

## Objective

## Environment Setup

## Concepts Learned

## Commands Practiced

## Challenges & Troubleshooting

## Key Takeaways

## Next Steps


## 🐧 Linux Bash Scripting Milestone — Conditional Logic & User Input

**Completed:** August 7, 2026

### Overview

Built and debugged Bash scripts to automate decision-making using conditional logic. Practiced collecting user input, storing variables, retrieving values, comparing data, and controlling script behavior with `if/else` statements.

### Skills Practiced

- Bash scripting fundamentals
- Script execution permissions (`chmod +x`)
- Shebang usage (`#!/bin/bash`)
- User input collection with `read -p`
- Variable creation and storage
- Variable retrieval using `$`
- Conditional statements:
  - `if`
  - `else`
  - `fi`
- Comparison operators
- Bash syntax troubleshooting and debugging

### Project: User Access Validation Script

Created a Bash script that:

- Prompts users for a username
- Stores the user input in a variable
- Checks whether the username matches an administrator account
- Provides different responses based on the result

Example workflow:





### Projects Completed

#### 1. Role Access Verification Script

Created a Bash script that evaluates user roles and provides appropriate access responses.

Example logic:

- Admin → Full Access Granted
- Developer → Development Access Granted
- Analyst → Data Access Granted
- Other Roles → Standard Access Granted

#### 2. Server Access Verification Script

Created a Bash script that determines server access based on environment type.

Example logic:

- Production → Production Server Access
- Development → Development Server Access
- Testing → Testing Server Access
- Unknown → Limited Server Access

#### 3. Backup Status Verification Script

Created a Bash script that evaluates backup operation status.

Example logic:

- Complete → Backup Completed Successfully
- Running → Backup Currently Running
- Failed → Backup Failed - Review Logs
- Unknown → Unknown Backup Status

### Skills Demonstrated

✅ Bash scripting  
✅ Conditional logic  
✅ Automation fundamentals  
✅ User input handling  
✅ Variable usage  
✅ Debugging and troubleshooting  
✅ Testing multiple execution paths  
✅ Git version control workflow

### Cloud Engineering Connection

Conditional logic is a foundation of cloud automation.

The same decision-making principles are used in:

- AWS IAM permission checks
- Deployment validation scripts
- Infrastructure automation
- Monitoring and alerting workflows
- CI/CD pipeline decisions
