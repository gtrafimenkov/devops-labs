# Demo of deploying a simple Amazon Kubernetes (EKS) cluster

- [Deploying the cluster](#deploying-the-cluster)
- [Removing the cluster](#removing-the-cluster)
- [Consulting](#consulting)
- [License](#license)

## Deploying the cluster

1. Make sure you have AWS account ready, aws cli configured, Terraform version >= 0.12.20
   installed.

2. Change [terraform.tf](./infra/terraform/terraform.tf),
   [provider.tf](./infra/terraform/provider.tf),
   [variables.tf](./infra/terraform/variables.tf), and [.eks-env](./.eks-env)
   settings if necessary.

3. Deploy infrastructure:

   ```
   cd terraform
   terraform init
   terraform apply
   ```

   It will take approximately 15 minutes to deploy the infrastructure.

4. Fetch kubeconfig.

- go back to the root of the repository
- apply set of environment variables: `. .eks-env`
- fetch kubeconfig: `make k8s-eks-get-config`

5. Make sure the cluster is accessible.

   ```
   kubectl get nodes
   ```

## Removing the cluster

```
cd terraform
terraform destroy
```

Also check that there are no loadbalancers or persistent volumes left
behind.

## Consulting

If you need help with DevOps work,
don't hesitate to contact gennady.trafimenkov@gmail.com.

## License

MIT
