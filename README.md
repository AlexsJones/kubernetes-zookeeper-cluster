# kubernetes-zookeeper-cluster

## Requirements

_Set the environment size you want to use e.g. small_

`docker run -v $PWD:/tmp tibbar/vortex:v1 -template /tmp/templates -output /tmp/deployment -varpath /tmp/environments/small.yaml`

`kubectl create -f deployment/`

Test with
```
kubectl exec zk-0 cat /opt/zookeeper/conf/zoo.cfg --namespace=zookeeper
kubectl exec zk-0 zkCli.sh create /hello world  --namespace=zookeeper
kubectl exec zk-0 zkCli.sh get /hello  --namespace=zookeeper
```
