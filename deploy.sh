deployElk(){
        cd manifests
        echo -n "0. 请输入es持久化的node节点ip: "
        read es_node_ip

        kubectl label node $es_node_ip es=data

        #echo -n 'kibana url: '
        #read kibanaUrl


        echo -e "1. 开始进行ELK部署"
        kubectl apply -f es.yaml
        kubectl apply -f filebeat.yaml
        kubectl apply -f logstash.yaml
        kubectl apply -f kibana.yaml
        

        echo -e "-----------------------------"
        echo -e "部署完毕 "
        echo -e "2. 插件ELK Stack各组件的运行情况"
        echo -e 'kubectl get pod -n kube-system'
        
        echo "3. kibana的访问链接"
        echo -e  http://$es_node_ip:25601
}


function _usage(){
    echo "
    /bin/bash $0 ELK
"
}

case $1 in
ELK)
        . ~/.bashrc
        deployElk ;;
*)
    _usage ;;
esac
