# DO NOT EDIT THIS FILE - See: https://jetty.org/docs/

[description]
Demo Proxy Webapp

[environment]
ee11

[tags]
demo
webapp

[depends]
ee11-deploy

[files]
basehome:modules/demo.d/ee11-demo-proxy.properties|webapps/ee11-demo-proxy.properties
maven://org.eclipse.jetty.ee11.demos/jetty-ee11-demo-proxy-webapp/${jetty.version}/war|webapps/ee11-demo-proxy.war