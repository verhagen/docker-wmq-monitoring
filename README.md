# Jetty 9 - IBM WebSphere MQ Monitoring

A web based monitoring tool for [IBM WebSphere MQ](https://github.com/wmq-monitoring/wmq-monitoring)


The WebSphere MQ Monitoring Tool is [downloaded from GitHub](https://github.com/wmq-monitoring/wmq-monitoring)

## 

The base image is [Jetty](https://registry.hub.docker.com/_/jetty/)

	[sudo] docker run -d -p 8888:8080 jetty:9 

http://<docker-host-ip:8888>/wmq-monitoring


Based on Debian / Jessie; with Open Java JRE 8; Jetty 9
