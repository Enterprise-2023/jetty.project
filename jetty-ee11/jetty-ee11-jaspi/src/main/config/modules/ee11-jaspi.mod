# DO NOT EDIT THIS FILE - See: https://jetty.org/docs/

[description]
Enables JASPI authentication for deployed web applications.

[environment]
ee11

[tags]
security

[depend]
ee11-security
auth-config-factory

[ini]
ee11.jakarta.authentication.api.version?=@jakarta.authentication.api.version@

[lib]
lib/jetty-ee11-jaspi-${jetty.version}.jar
lib/ee11-jaspi/jakarta.authentication-api-${ee11.jakarta.authentication.api.version}.jar

[xml]
etc/jaspi/jetty-ee11-jaspi-authmoduleconfig.xml

[files]
basehome:etc/jaspi/jetty-ee11-jaspi-authmoduleconfig.xml|etc/jaspi/jetty-ee11-jaspi-authmoduleconfig.xml

