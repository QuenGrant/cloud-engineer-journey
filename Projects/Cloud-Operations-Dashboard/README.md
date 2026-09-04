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
