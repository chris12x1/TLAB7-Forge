# AWS Automated DevSecOps Pipeline & Infrastructure Security

A keyless continuous deployment pipeline built with Terraform, GitHub Actions, and AWS IAM to automate infrastructure provisioning, enforce security quality gates, and prevent misconfigurations in cloud environments.

## Technologies Used

* **Infrastructure as Code:** Terraform (HCL), S3 Remote Backend
* **CI/CD & Security:** GitHub Actions, `tfsec` (SAST Quality Gate)
* **Identity & Access Management:** AWS IAM, GitHub OIDC Federation, AWS STS
* **Cloud Infrastructure:** AWS VPC, Security Groups, IAM Roles
