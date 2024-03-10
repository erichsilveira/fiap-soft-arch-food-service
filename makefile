k apply -f postgres-service.yaml,postgres-deployment.yaml,postgres-data-persistentvolumeclaim.yaml
k apply -f food-service-backend-service.yaml,food-service-backend-deployment.yaml,food-service-backend-autosacling.yaml

k get hpa
k get pods

k delete pod,svc --all
k delete --all deployments --namespace=default


aws eks --region us-east-1 update-kubeconfig --name apps_cluster
k port-forward food-service-backend-svc 30001:30001
