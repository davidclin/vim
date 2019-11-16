# Google Kubernetes Engine

## Prime useful env variables
<pre>
export my_zone=us-central1-a
export my_cluster=standard-cluster-1
</pre>

## Create a cluster
<pre>
gcloud container clusters create $my_cluster --num-nodes 3 --zone $my_zone --enable-ip-alias
</pre>

## Resize a cluster
<pre>
gcloud container clusters resize $my_cluster --zone $my_zone --size=4
</pre>

## Connect to a cluster from Cloud Shell
<pre>
gcloud container clusters get-credentials $my_cluster --zone $my_zone
vim ~/.kube/config
</pre>

## Use kubectl to inspect a GKE cluster
<pre>
kubectl config view
kubectl cluster-info
kubectl config current-context
kubectl config get-contexts
kubectl config use-context gke_${GOOGLE_CLOUD_PROJECT}_us-central1-a_standard-cluster-1
kubectl top nodes
kubectl top pods
</pre>


## Execute the following command to enable bash autocompletion for kubectl
<pre>
source <(kubectl completion bash)
</pre>

## Deploy 1 pod to GKE
<pre>
kubectl run nginx-1 --image nginx:latest
kubectl get pods

export my_nginx_pod=[your_pod_name]
kubectl describe pod $my_nginx_pod
</pre>

## Push a file into a container
<pre>
nano ~/test.html
</pre>

<html> <header><title>This is title</title></header>
<body> Hello world </body>
</html>

<pre>
kubectl cp ~/test.html $my_nginx_pod:/usr/share/nginx/html/test.html
</pre>

## Expose pod for testing
<pre>
kubectl expose pod $my_nginx_pod --port 80 --type LoadBalancer
kubectl get services
</pre>

## How to create a pod using a manifest (best practice and better than using kubectl CLI commands)
<pre>
git clone https://github.com/GoogleCloudPlatformTraining/training-data-analyst
cd ~/training-data-analyst/courses/ak8s/04_GKE_Shell/
view the new-nginx-pod.yaml manifest
kubectl apply -f ./new-nginx-pod.yaml
</pre>

## Use shell redirection to connect to a pod
<pre>
kubectl exec -it new-nginx /bin/bash
apt-get update
apt-get install [any package as an example]
</pre>

## How to set port forwarding from Cloud Shell so you don't need to create a Service
<pre>
kubectl port-forward new-nginx 10081:80
curl http://127.0.0.1:10081/test.html 
</pre>

## How to view logs of a pod
<pre>
kubectl logs new-nginx -f --timestamps
</pre>
