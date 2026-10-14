### Login to Azure Cloud Shell

```
az login --tenant 8c9940ee-5e0b-4ca9-bcfa-83588d87b3f8
```

### Create service principal account

```
az ad sp create-for-rbac -n az-demo-01 --role="Contributor" --scopes="//subscriptions/8d997f5a-4075-48b9-a60e-42e57c76d3d5"
```

### Create environment variables

```
export ARM_CLIENT_ID="ARM_CLIENT_ID"
export ARM_CLIENT_SECRET="ARM_CLIENT_SECRET"
export ARM_SUBSCRIPTION_ID="ARM_SUBSCRIPTION_ID"
export ARM_TENANT_ID="ARM_TENANT_ID"
```

### Terraform commands to be run to create Storage Account

```
terraform init
terraform validate
terraform plan
terraform apply
```