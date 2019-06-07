# kubernetes-zookeeper-cluster

## Requirements

`go get github.com/AlexsJones/vortex`

_If you absolutely do not want to install vortex or golang you do not have too. Just interpolate the variables in the templates folder then do kubectl create -f templates/ DM me for more info_


`./build_environment.sh small.yaml`

`kubectl create -f deployment/`

Test with
```
kubectl exec zk-0 cat /opt/zookeeper/conf/zoo.cfg --namespace=zookeeper
kubectl exec zk-0 zkCli.sh create /hello world  --namespace=zookeeper
kubectl exec zk-0 zkCli.sh get /hello  --namespace=zookeeper
```
