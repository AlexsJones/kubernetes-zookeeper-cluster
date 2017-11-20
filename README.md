# kubernetes-zookeeper-cluster


I don't claim any credit here, completely based on kow3ns work with a few minor tweaks.
Easy to deploy and production ready.

Wonderful!


Based on https://github.com/kow3ns/kubernetes-zookeeper
And: https://kubernetes.io/docs/tutorials/stateful-application/zookeeper/

Test with
```
kubectl exec zk-0 cat /opt/zookeeper/conf/zoo.cfg --namespace=zookeeper
kubectl exec zk-0 zkCli.sh create /hello world  --namespace=zookeeper
kubectl exec zk-0 zkCli.sh get /hello  --namespace=zookeeper
```
