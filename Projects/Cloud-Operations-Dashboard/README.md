# Cloud Operations Dashboard

## Project Overview

The Cloud Operations Dashboard is an AWS-based cloud engineering capstone designed to demonstrate the design, deployment, automation, containerization, and operation of a small cloud application.

## Architecture

The application is designed to run inside a dedicated AWS VPC.

### Current Infrastructure

- AWS VPC
- Public application subnet
- Private database subnets across two Availability Zones
- Internet Gateway
- Public and private route tables
- EC2 compute infrastructure
- Security groups for network access control

### Compute

The application compute layer uses an Amazon Linux 2023 EC2 instance running in the public application subnet.

The EC2 instance provides the underlying operating system access required for administration and troubleshooting.

## Repository Structure

- application/ — Application code
- terraform/ — Infrastructure as Code
- automation/ — Python/Boto3 automation
- docker/ — Container configuration
- .github/ — CI/CD workflows

## Capstone Progress

- [x] VPC created
- [x] Public application subnet created
- [x] Private database subnets created
- [x] Internet Gateway configured
- [x] Public route table configured
- [x] Private route table configured
- [x] EC2 security group created
- [x] Database security group created
- [x] EC2 instance deployed and validated

## Cost Control

AWS resources are stopped or removed when they are not required for active development in order to minimize unnecessary AWS charges.

## Status

Capstone in progress.

## EC2 Compute Layer

- Amazon Linux 2023
- Instance type: t3.micro
- EC2 instance: cloud-operations-ec2
- Deployed in the public application subnet
- Protected by cloud-operations-ec2-sg
- SSH connectivity validated
- Instance configuration validated
- Instance stopped when not actively required to control AWS costs


## IAM / Permissions

The Cloud Operations Dashboard capstone uses the IAM user apprenticeship-cli for AWS CLI, Terraform, and automation activities.

### IAM Identity

- IAM user: apprenticeship-cli
- AWS CLI profile: apprenticeship
- AWS account: 432320367829
- Identity validation: confirmed with AWS STS
- Inline policies: none

### Attached AWS Managed Policies

- PowerUserAccess
- IAMReadOnlyAccess
- SignInLocalDevelopmentAccess

### Permission Design

The apprenticeship-cli identity provides broad access to AWS services required to build, deploy, automate, and operate the capstone while intentionally avoiding unrestricted IAM administration.

IAMReadOnlyAccess provides IAM visibility for configuration verification and documentation.

No inline IAM policies are attached to the user.

### Security Consideration

The IAM configuration balances operational capability with account-level protection. The capstone identity has the broad AWS service access required for hands-on development without being granted unrestricted IAM administration privileges.

This reduces the potential blast radius of an accidental or unauthorized IAM change while allowing the capstone to progress without repeatedly adding individual service permissions.

