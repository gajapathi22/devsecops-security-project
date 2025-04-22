#!/bin/bash

# Docker image scan
echo "Scanning Docker image..."
docker build -t devsecops-app ./docker-app
trivy image devsecops-app

# Terraform IaC scan
echo "Scanning Terraform files..."
trivy config terraform/
