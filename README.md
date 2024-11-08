# Cloud Resume Azure Infrastructure

This repository contains the infrastructure code for deploying a cloud resume project on Azure using Terraform. The configuration includes various Azure resources to support a serverless and highly available web application.

## Table of Contents
- [Overview](#overview)
- [Infrastructure Components](#infrastructure-components)
- [Setup](#setup)
- [Usage](#usage)
- [File Structure](#file-structure)
- [License](#license)

## Overview

This project is part of the Cloud Resume Challenge, designed to deploy a static website on Azure with various backend integrations. The code in this repository utilizes Terraform to provision and manage the necessary resources on Azure, including storage, serverless functions, and a CDN.

## Infrastructure Components

The following Azure services are deployed:
- **Azure Storage Account**: Stores the static website files.
- **Azure CDN**: Delivers the website content globally with low latency.
- **CosmosDB**: Provides NoSQL database storage.
- **Azure Functions**: Hosts serverless functions to handle backend logic, such as tracking visitors.
- **Resource Groups**: Organizes resources by grouping them together.
- **Service Principal**: Ensures secure access to Azure resources.

## Setup

To deploy this infrastructure on Azure:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/gabbyTI/cloud-resume-azure-infrastructure.git
   cd cloud-resume-azure-infrastructure
   ```

2. **Initialize Terraform**:
   ```bash
   terraform init
   ```

3. **Configure Azure Credentials**:
   Ensure that you have the appropriate Azure credentials set up. You can authenticate with a Service Principal or using the Azure CLI.

4. **Apply the Terraform configuration**:
   ```bash
   terraform apply
   ```
   Confirm the prompt to provision the infrastructure.

5. **Verify Deployment**:
   After the deployment completes, verify that all resources are created successfully in the Azure Portal.

## Usage

Once deployed, the static files for the resume site can be uploaded to the Azure Storage Account configured for static website hosting. The Azure Functions can be used to implement backend logic like visitor tracking or other integrations.

## File Structure

- `.github/workflows/`: Contains GitHub Actions workflows for CI/CD.
- `backend.tf`: Configures the backend storage for Terraform state.
- `cdn.tf`: Configures the Azure CDN for the static website.
- `cosmosdb.tf`: Defines the CosmosDB setup.
- `functions.tf`: Configures the Azure Functions service.
- `main.tf`: Main Terraform configuration file.
- `outputs.tf`: Outputs resources and variables after the infrastructure is provisioned.
- `provider.tf`: Defines the Azure provider settings.
- `resource_groups.tf`: Configures resource groups for the project.
- `sp.tf`: Manages the Service Principal for secure access.
- `variables.tf`: Defines variables for the infrastructure.

## License

This project is open source and available under the [MIT License](LICENSE).


This README provides a high-level overview of your repository and instructions for setup and usage. If you have specific configuration details or prerequisites, you might want to add those in the relevant sections.
