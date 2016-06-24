# SERVLETS CONTAINER
tomcat.home=/SERVER/apache-tomcat-6.0.13
javax.servlet.api.lib=servlet-api.jar
javax.jsp.api.lib=jsp-api.jar

aon.company.home=/PROYECTOS/aon-company
aon.company.lib=aon.company-0.1.jar

aon.config.home=/PROYECTOS/aon-config
aon.config.lib=aon.config-0.1.jar

aon.registry.home=/PROYECTOS/aon-registry
aon.registry.lib=aon.registry-0.1.jar

# INTERNAL LIBRARIES
aon.framework.home=/JAVA/aon.framework-1.9.12
aon.framework.lib=aon.framework-1.9.12.jar

aon.ui.framework.home=/JAVA/aon.ui.framework-1.9.14
aon.ui.framework.lib=aon.ui.framework-1.9.14.jar

aon.security.home=/JAVA/aon-security-1.2.2
aon.security.lib=aon-security-client-1.2.2.jar

aon.security.bridge.home=/JAVA/aon-security-bridge-1.2.3
aon.security.bridge.lib=aon-security-bridge-1.2.3.jar

org.hibernate.home=/JAVA/hibernate-3.2.3
org.hibernate.lib=hibernate3.jar
org.objectweb.asm.lib=asm.jar
org.objectweb.asm-attrs.lib=asm-attrs.jar
javax.jta.lib=jta.jar
org.dom4j.lib=dom4j-1.6.1.jar
net.sf.cglib.lib=cglib-2.1.3.jar
net.sf.ehcache.lib=ehcache-1.2.3.jar

org.hibernate.annotations.home=/JAVA/hibernate-annotations-3.3.0.GA
org.hibernate.annotations.lib=hibernate-annotations.jar
ejb3.persistence.lib=ejb3-persistence.jar
org.hibernate.annotations.commons.lib=hibernate-commons-annotations.jar

org.apache.myfaces.home=/JAVA/myfaces-core-1.1.5
org.apache.myfaces.api.lib=myfaces-api-1.1.5.jar
org.apache.myfaces.impl.lib=myfaces-impl-1.1.5.jar

version=0.1
name=aon.ui.config
src.dir=src
build.dir=${java.io.tmpdir}/classes/${name}
dist.dir=dist
jar.name=${name}-${version}
