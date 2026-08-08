# Usage
#### Add below code to your provider.tf file
````
provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }

  registries = [
    {
      url      = "oci://localhost:5000"
      username = "username"
      password = "password"
    },
    {
      url      = "oci://private.registry"
      username = "username"
      password = "password"
    }
  ]
}
````


#### Add below code to your main.tf file 

```
module name {
  source     = "laurammberk/appdeploy/helm"
  name       = "nginx-ingress-controller"
  namespace  = "default"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"
  wait       = false
}
```
### Run below code
```
terraform init
terraform apply
```