
# Online Shop Microservices Deployment with Kubernetes
This project provides a deployment configuration for an online shop application built using microservices architecture. The application consists of several microservices that communicate with each other over gRPC and HTTP. Each microservice is deployed as a separate Docker container.
## Architecture

**Online Boutique** is composed of 11 microservices written in different
languages that talk to each other over gRPC.

<img width="1778" alt="architecture-diagram" src="https://user-images.githubusercontent.com/47304558/234336982-bc3904bd-8fe1-432d-975f-aed5db0551c5.png">

Find **Protocol Buffers Descriptions** at the [`./pb` directory](./pb).

| Service                                              | Language      | Description                                                                                                                       |
| ---------------------------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [frontend](./src/frontend)                           | Go            | Exposes an HTTP server to serve the website. Does not require signup/login and generates session IDs for all users automatically. |
| [cartservice](./src/cartservice)                     | C#            | Stores the items in the user's shopping cart in Redis and retrieves it.                                                           |
| [productcatalogservice](./src/productcatalogservice) | Go            | Provides the list of products from a JSON file and ability to search products and get individual products.                        |
| [currencyservice](./src/currencyservice)             | Node.js       | Converts one money amount to another currency. Uses real values fetched from European Central Bank. It's the highest QPS service. |
| [paymentservice](./src/paymentservice)               | Node.js       | Charges the given credit card info (mock) with the given amount and returns a transaction ID.                                     |
| [shippingservice](./src/shippingservice)             | Go            | Gives shipping cost estimates based on the shopping cart. Ships items to the given address (mock)                                 |
| [emailservice](./src/emailservice)                   | Python        | Sends users an order confirmation email (mock).                                                                                   |
| [checkoutservice](./src/checkoutservice)             | Go            | Retrieves user cart, prepares order and orchestrates the payment, shipping and the email notification.                            |
| [recommendationservice](./src/recommendationservice) | Python        | Recommends other products based on what's given in the cart.                                                                      |
| [adservice](./src/adservice)                         | Java          | Provides text ads based on given context words.                                                                                   |
| [loadgenerator](./src/loadgenerator)                 | Python/Locust | Continuously sends requests imitating realistic user shopping flows to the frontend.                                              |
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
