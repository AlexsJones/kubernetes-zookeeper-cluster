# kubernetes-zookeeper-cluster

## Requirements

`go get github.com/AlexsJones/vortex`

`./build_environment.sh small.yaml`

`kubectl create -f deployment/`

Test with
```
kubectl exec zk-0 cat /opt/zookeeper/conf/zoo.cfg --namespace=zookeeper
kubectl exec zk-0 zkCli.sh create /hello world  --namespace=zookeeper
kubectl exec zk-0 zkCli.sh get /hello  --namespace=zookeeper
```
