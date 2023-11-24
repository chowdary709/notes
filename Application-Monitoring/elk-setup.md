# ELK SETUP OF THE SERVER.
>Setting up an ELK stack involves configuring and installing Elasticsearch, Logstash, and Kibana to collect, process, and visualize log data.
* in this servers requires the following dependencies to be installed.

```
✓  Install Kibana
✓  Start Kibana
✓  Install LogStash
✓  Start Logstash
✓  Install Nginx
✓  Start Kibana
```
:::info
in this dependencies directory installed and started of the server.
:::
# 01 - Logstash

----------------------------------------------------------------------------------------------------------------
* ELK is downloaded to the server after a password has been generated.
* --- Security autoconfiguration information---  this location
* password will replace in the password location of the logstash configuration.
----------------------------------------------------------------------

logstash configuration
```shell
vim /etc/logstash/conf.d/logstash.conf
```

```shell
input {
beats {
port => 5044
}
}

output {
elasticsearch {
hosts => ["https://localhost:9200"]
index => "%{[@metadata][beat]}-%{[@metadata][version]}"
user => "elastic"
password => "G3B=uDnqfOumJ_v7h-qe"  
ssl_certificate_verification => false
}
}
```
restart logstash service

```shell
systemctl restart logstash 
```
# 02 - Kibana 

----------------------------------------------------------------
create an enrollment token for Kibana
```shell
/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
```
generate a verification code for Kibana

```shell
 /usr/share/kibana/bin/kibana-verification-code
```

