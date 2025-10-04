# Grid Terraform

![Grid Banner](../grid-docs/readme-assets/banner.png)

> **Infrastructure as Code modules for Grid Platform** - Reusable, multi-cloud Terraform configurations for the Infrastructure Orchestration Platform

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Terraform](https://img.shields.io/badge/Terraform-7B42BC?logo=terraform&logoColor=white)](https://terraform.io/)
[![HCL](https://img.shields.io/badge/HCL-844FBA?logo=hashicorp&logoColor=white)](https://github.com/hashicorp/hcl)

## 🎯 Overview

Grid Terraform provides a comprehensive collection of reusable Terraform modules for deploying infrastructure across multiple cloud providers. These modules are designed to work seamlessly with the Grid Infrastructure Orchestration Platform and follow infrastructure as code best practices.

## ✨ Key Features

- **🌐 Multi-Cloud Support**: GCP, AWS, and Azure modules
- **📦 Reusable Modules**: Well-documented, parameterized modules
- **🔧 Best Practices**: Security, cost optimization, and reliability built-in
- **📊 Monitoring Ready**: Built-in monitoring and logging configurations
- **🔒 Security First**: Secure defaults and compliance-ready configurations
- **💰 Cost Optimized**: Right-sized resources and cost controls
- **📈 Scalable**: Auto-scaling and high-availability configurations

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Grid Terraform                           │
├─────────────────────────────────────────────────────────────┤
│  Cloud Providers                                            │
│  ├── GCP Modules    ├── AWS Modules    ├── Azure Modules   │
│  └── Multi-Cloud    └── Hybrid Cloud   └── Edge Computing  │
├─────────────────────────────────────────────────────────────┤
│  Infrastructure Types                                       │
│  ├── Compute        ├── Storage        ├── Networking      │
│  ├── Databases      ├── Monitoring     ├── Security        │
│  └── CI/CD          └── Disaster Recovery                  │
├─────────────────────────────────────────────────────────────┤
│  Grid Core API Integration                                  │
└─────────────────────────────────────────────────────────────┘
```

## 🚀 Quick Start

### Prerequisites

- Terraform 1.5+
- Cloud provider CLI tools (gcloud, aws, az)
- Cloud provider credentials configured

### Installation

```bash
# Clone the repository
git clone https://github.com/gridplatform/grid-terraform.git
cd grid-terraform

# Initialize Terraform
terraform init

# Plan your deployment
terraform plan

# Apply the configuration
terraform apply
```

## 📚 Module Structure

```
grid-terraform/
├── modules/
│   ├── gcp/                    # Google Cloud Platform modules
│   │   ├── compute/           # VM instances, instance groups
│   │   ├── networking/        # VPC, subnets, firewall rules
│   │   ├── storage/           # Cloud Storage, persistent disks
│   │   ├── databases/         # Cloud SQL, Firestore
│   │   ├── monitoring/        # Cloud Monitoring, Logging
│   │   └── security/          # IAM, KMS, security policies
│   ├── aws/                   # Amazon Web Services modules
│   │   ├── compute/           # EC2, ECS, Lambda
│   │   ├── networking/        # VPC, subnets, security groups
│   │   ├── storage/           # S3, EBS, EFS
│   │   ├── databases/         # RDS, DynamoDB, ElastiCache
│   │   ├── monitoring/        # CloudWatch, X-Ray
│   │   └── security/          # IAM, KMS, Secrets Manager
│   ├── azure/                 # Microsoft Azure modules
│   │   ├── compute/           # Virtual Machines, App Service
│   │   ├── networking/        # Virtual Network, Load Balancer
│   │   ├── storage/           # Storage Account, Managed Disks
│   │   ├── databases/         # SQL Database, Cosmos DB
│   │   ├── monitoring/        # Monitor, Application Insights
│   │   └── security/          # Azure AD, Key Vault
│   └── shared/                # Cross-cloud modules
│       ├── monitoring/        # Prometheus, Grafana
│       ├── security/          # Common security patterns
│       └── networking/        # VPN, peering configurations
├── examples/                  # Example configurations
├── environments/              # Environment-specific configs
└── tests/                     # Terratest integration tests
```

## 🛠️ Usage Examples

### Basic VPC Deployment (GCP)

```hcl
module "vpc" {
  source = "./modules/gcp/networking/vpc"
  
  project_id = var.project_id
  region     = var.region
  name       = "grid-vpc"
  
  subnets = [
    {
      name          = "web-subnet"
      cidr          = "10.0.1.0/24"
      region        = var.region
      private_access = false
    },
    {
      name          = "db-subnet"
      cidr          = "10.0.2.0/24"
      region        = var.region
      private_access = true
    }
  ]
  
  firewall_rules = [
    {
      name        = "allow-http"
      direction   = "INGRESS"
      ports       = ["80", "443"]
      source_tags = ["web"]
    }
  ]
}
```

### Web Application Stack (AWS)

```hcl
module "web_app" {
  source = "./modules/aws/compute/web-app"
  
  name = "grid-web-app"
  
  # VPC Configuration
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
  
  # Application Configuration
  instance_type = "t3.medium"
  min_size = 2
  max_size = 10
  desired_capacity = 3
  
  # Database Configuration
  database_instance_class = "db.t3.micro"
  database_allocated_storage = 20
  
  # Monitoring
  enable_monitoring = true
  log_retention_days = 30
}
```

### Multi-Cloud Database (GCP + AWS)

```hcl
# Primary database in GCP
module "primary_db" {
  source = "./modules/gcp/databases/cloud-sql"
  
  project_id = var.gcp_project_id
  region     = var.gcp_region
  name       = "grid-primary-db"
  
  database_version = "POSTGRES_14"
  tier = "db-n1-standard-1"
  disk_size = 100
  
  backup_configuration = {
    enabled = true
    start_time = "03:00"
    location = "us"
  }
}

# Read replica in AWS
module "read_replica" {
  source = "./modules/aws/databases/rds"
  
  name = "grid-read-replica"
  
  engine = "postgres"
  engine_version = "14.7"
  instance_class = "db.t3.micro"
  
  # Cross-cloud replication setup
  replicate_from = module.primary_db.connection_name
}
```

## 🔧 Module Configuration

### Common Variables

```hcl
# Environment
variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

# Naming
variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "grid"
}

# Tags
variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Project     = "Grid Platform"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
```

### Provider Configuration

```hcl
# GCP Provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# AWS Provider
provider "aws" {
  region = var.aws_region
}

# Azure Provider
provider "azurerm" {
  features {}
}
```

## 📊 Monitoring Integration

### Built-in Monitoring

All modules include monitoring configurations:

```hcl
# CloudWatch (AWS)
resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${var.name}-dashboard"
  
  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6
        
        properties = {
          metrics = [
            ["AWS/EC2", "CPUUtilization"],
            [".", "NetworkIn"],
            [".", "NetworkOut"]
          ]
          period = 300
          stat   = "Average"
          region = var.aws_region
          title  = "EC2 Metrics"
        }
      }
    ]
  })
}
```

### Prometheus Integration

```hcl
# Prometheus monitoring
module "monitoring" {
  source = "./modules/shared/monitoring/prometheus"
  
  name = "${var.name}-monitoring"
  
  # Prometheus configuration
  prometheus_config = {
    scrape_configs = [
      {
        job_name = "grid-api"
        static_configs = [
          {
            targets = ["grid-api:8080"]
          }
        ]
      }
    ]
  }
  
  # Grafana dashboards
  grafana_dashboards = [
    "./dashboards/infrastructure.json",
    "./dashboards/application.json"
  ]
}
```

## 🔒 Security Features

### IAM and Access Control

```hcl
# Least privilege IAM roles
resource "aws_iam_role" "grid_service" {
  name = "${var.name}-service-role"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# Minimal required permissions
resource "aws_iam_role_policy" "grid_service" {
  name = "${var.name}-service-policy"
  role = aws_iam_role.grid_service.id
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:aws:logs:*:*:*"
      }
    ]
  })
}
```

### Network Security

```hcl
# Security groups with minimal access
resource "aws_security_group" "web" {
  name_prefix = "${var.name}-web-"
  vpc_id      = var.vpc_id
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

## 🧪 Testing

### Terratest Integration

```go
package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestVPCModule(t *testing.T) {
    terraformOptions := &terraform.Options{
        TerraformDir: "../modules/gcp/networking/vpc",
        Vars: map[string]interface{}{
            "project_id": "test-project",
            "region":     "us-central1",
            "name":       "test-vpc",
        },
    }
    
    defer terraform.Destroy(t, terraformOptions)
    terraform.InitAndApply(t, terraformOptions)
    
    vpc_id := terraform.Output(t, terraformOptions, "vpc_id")
    assert.NotEmpty(t, vpc_id)
}
```

### Running Tests

```bash
# Run all tests
go test ./tests/...

# Run specific test
go test ./tests/gcp/vpc_test.go

# Run with verbose output
go test -v ./tests/...
```

## 📈 Cost Optimization

### Right-sizing Resources

```hcl
# Auto-scaling configuration
resource "aws_autoscaling_group" "web" {
  name                = "${var.name}-asg"
  vpc_zone_identifier = var.subnet_ids
  target_group_arns   = [aws_lb_target_group.web.arn]
  health_check_type   = "ELB"
  
  min_size         = var.min_size
  max_size         = var.max_size
  desired_capacity = var.desired_capacity
  
  # Cost optimization policies
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.web.id
        version           = "$Latest"
      }
      
      override {
        instance_type = "t3.medium"
      }
      
      override {
        instance_type = "t3.large"
      }
    }
    
    instances_distribution {
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 20
      spot_allocation_strategy                 = "diversified"
    }
  }
}
```

## 🚀 Deployment

### Environment-specific Configurations

```bash
# Development environment
terraform apply -var-file="environments/dev.tfvars"

# Production environment
terraform apply -var-file="environments/prod.tfvars"
```

### CI/CD Integration

```yaml
# GitHub Actions example
name: Deploy Infrastructure
on:
  push:
    branches: [main]
    paths: ['modules/**']

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: hashicorp/setup-terraform@v2
      
      - name: Terraform Init
        run: terraform init
        
      - name: Terraform Plan
        run: terraform plan -var-file="environments/${{ env.ENVIRONMENT }}.tfvars"
        
      - name: Terraform Apply
        if: github.ref == 'refs/heads/main'
        run: terraform apply -auto-approve
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-module`
3. Write tests for your module
4. Update documentation
5. Commit your changes: `git commit -m 'Add amazing module'`
6. Push to the branch: `git push origin feature/amazing-module`
7. Open a Pull Request

### Module Development Guidelines

- Follow Terraform best practices
- Include comprehensive documentation
- Write tests for all modules
- Use consistent naming conventions
- Include cost optimization features
- Ensure security best practices

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Documentation**: [Grid Docs](https://github.com/gridplatform/grid-docs)
- **Issues**: [GitHub Issues](https://github.com/gridplatform/grid-terraform/issues)
- **Discussions**: [GitHub Discussions](https://github.com/gridplatform/grid-terraform/discussions)

## 🔗 Related Projects

- [Grid Core](https://github.com/gridplatform/grid-core) - Backend API
- [Grid UI](https://github.com/gridplatform/grid-ui) - Frontend interface
- [Grid Operator](https://github.com/gridplatform/grid-operator) - Kubernetes operator
- [Grid Docs](https://github.com/gridplatform/grid-docs) - Documentation

---

**Built with ❤️ by the Grid Platform team**
