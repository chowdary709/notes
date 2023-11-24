

```
18.207.116.11 | 172.31.21.138 | t2.micro | null
[ root@frontend ~ ]# vim /etc/yum.repos.d/elastic.repo


[elasticsearch]
name=Elasticsearch repository for 8.x packages
baseurl=https://artifacts.elastic.co/packages/8.x/yum
gpgcheck=0
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md



18.207.116.11 | 172.31.21.138 | t2.micro | null
[ root@frontend ~ ]# yum install filebeat -y
```

```
18.207.116.11 | 172.31.21.138 | t2.micro | null
[ root@frontend ~ ]# vim /etc/filebeat/filebeat.yml


######################{ line no - 28 }################################
  # Change to true to enable this input configuration.
  enabled: true
######################################################################


######################{ line no - 32 }################################
  # Paths that should be crawled and fetched. Glob based paths.
  paths:
      - /var/log/nginx/access.log
    #- c:\programdata\elasticsearch\logs\*
######################################################################


######################{ line no - 139 }################################
> add #  to all 
# ---------------------------- Elasticsearch Output -----------------------
#output.elasticsearch:
  # Array of hosts to connect to.
  #hosts: ["localhost:9200"]
######################################################################


######################{ line no - 152 }################################
 ------------------------------ Logstash Output -----------------------------
output.logstash:
  # The Logstash hosts
  hosts: ["172.31.78.110:5044"]
######################################################################
```







```
