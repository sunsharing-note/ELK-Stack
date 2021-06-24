# 说明
Kubernetes中部署ELK Stack收集pod服务日志
+ 支持的cpu架构
  + [x] `amd64`
  + [x] `arm64`
+ 支持k8s的runtime类别
  + [x] `docker`
  + [x] `containerd`

+ ELK Stack各组件版本
  + [x] `elasticsearch:7.9.3`
  + [x] `filebeat:7.9.3`
  + [x] `kibana:7.9.3`
  + [x] `logstash:7.9.3`

# 部署步骤

## 部署命令

```bash
bash deploy.sh ELK
```

## ingress解析

修改manifests目录下的kibana-ingress.yaml中的域名为自己的域名，然后apply即可
