# Artifact Kubernetes (GCP Terraform)

This is a  project to deploy a kubernetes cluster managed on GCP with Terraform. This architecture allow to discover the product but can't be use in cluster production. 

## What is Kubernetes? 

Kubernetes (k8s) is an open-source system which deploys, scales and manages containerized applications. It provides an centralized platform to automate container deployment. 

## How does it work?
K8s works with pods. It adds a higher level of abstraction by grouping conterized components. Pods allow users to access services. 

## How to test it locally?

Fill your credentials and variables values in the .env file then run this command:
```
. ./.env
```

Then run Terraform using this command:

to init and retrieve the provider: 
```
terraform init
```

to apply and deploy the application: 

```
terraform apply
```

Our engine will execute the same kind of instructions.


## Any trouble?
If you have any questions or trouble, you can create an issue on the GitHub repository.