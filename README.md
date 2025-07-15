# 🚀 GCP Terraform Infrastructure Project

This project provisions GCP infrastructure using Terraform with a modular structure. It creates a VPC network, a VM running Apache on Debian 11, and a Cloud Storage bucket with a data retention policy.

---

## 📁 Project Structure

```bash
.
├── compute/                    # Module to provision VM and firewall rules
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── key.json                   # GCP service account credentials (Get from GCP)
├── main.tf                    # Root module calling submodules
├── network/                   # Module to create VPC network
│   ├── main.tf
│   └── outputs.tf
├── outputs.tf                 # Root module outputs
├── provider.tf                # GCP provider configuration
├── README.md                  # Project documentation
└── storage/                   # Module to create GCS bucket with retention policy
    ├── main.tf
    └── variable.tf
```

## 🧱 Resources Created

### 1. VPC Network
- Creates a GCP Virtual Private Cloud (VPC).

### 2. Compute Instance (VM)
- Launches a VM using Debian 11 image.
- Installs Apache HTTP server via startup script.
- Adds a network tag `http-server` for targeting by firewall.
- Creates a firewall rule to allow inbound traffic on TCP port 80.

### 3. Cloud Storage Bucket
- Creates a **Standard** tier GCS bucket.
- Adds a lifecycle policy to delete objects older than 3 days.

---

# ⚙️ Prerequisites

- A GCP project with billing enabled.
- Service account with the following roles:
  - `roles/compute.admin`
  - `roles/storage.admin`
  - `roles/iam.serviceAccountUser`
- Terraform ≥ 1.0 installed.
- Enabled APIs:
  - Compute Engine API
  - Cloud Storage API

---

# 🚀 Usage

### 1. Authenticate with GCP
Place your service account credentials file as `key.json` in the root directory.

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Review the Plan
```bash
terraform plan
```

### 4. Apply the Configuration
```bash
terraform apply --auto-approve
```

## ✅ Best Practices Followed

- Modular Terraform structure  
- Startup script provisioning  
- Resource tagging and scoped firewall rules  
- GCS lifecycle rules to control storage cost  
- Clear separation of config, infra logic, and variables
