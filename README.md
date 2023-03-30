
# Online Shop Microservices Deployment with Kubernetes
This project provides a deployment configuration for an online shop application built using microservices architecture. The application consists of several microservices that communicate with each other over gRPC and HTTP. Each microservice is deployed as a separate Docker container.

# Getting Started
Before you can deploy the application, you need to have the following tools installed:

- Kubernetes CLI (kubectl)
- Helm
- Docker

You also need to have access to a Kubernetes cluster. If you don't have a Kubernetes cluster, you can create one using a cloud provider, such as Google Cloud Platform or AWS.

# Installation
- Clone this repository to your local machine.
- Navigate to the project directory.
- Run the `deploy.sh` script to deploy the application. The script will create Kubernetes resources for each microservice, including deployments, services, and ingresses.

# Usage
Once the deployment is complete, you can access the application by navigating to the URL of the ingress controller. The ingress controller URL is defined in the `deploy.sh` script.

Cleaning Up
To clean up the deployment, run the `cleanup.sh` script. The script will delete all Kubernetes resources created by the deploy.sh script.

# Contributing
Contributions to this project are welcome. If you would like to contribute, please submit a pull request.

# Authors
Mahmoud M.Abdelwahab
# License
This project is licensed under the MIT License. See the LICENSE file for details.
