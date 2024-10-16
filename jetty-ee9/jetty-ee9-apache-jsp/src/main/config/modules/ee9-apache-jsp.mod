# DO NOT EDIT THIS FILE - See: https://jetty.org/docs/

[description]
Enables use of the apache implementation of JSP.

[environment]
ee9

[depend]
ee9-servlet
ee9-annotations

[ini]
eclipse.jdt.ecj.version?=@eclipse.jdt.ecj.version@
ee9.jsp.impl.version?=@jsp.impl.version@

[lib]
lib/ee9-apache-jsp/org.eclipse.jdt.ecj-${eclipse.jdt.ecj.version}.jar
lib/ee9-apache-jsp/org.mortbay.jasper.apache-el-${ee9.jsp.impl.version}.jar
lib/ee9-apache-jsp/org.mortbay.jasper.apache-jsp-${ee9.jsp.impl.version}.jar
lib/jetty-ee9-apache-jsp-${jetty.version}.jar
