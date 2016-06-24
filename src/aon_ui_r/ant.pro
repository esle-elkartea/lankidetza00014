# SERVLETS CONTAINER
tomcat.home=/SERVER/apache-tomcat-6.0.13
javax.servlet.api.lib=servlet-api.jar

# FRAMEWORK LIBRARIES
aon.framework.home=/JAVA/aon.framework-1.9.12
aon.framework.lib=aon.framework-1.9.12.jar

aon.ui.framework.home=/JAVA/aon.ui.framework-1.9.14
aon.ui.framework.lib=aon.ui.framework-1.9.14.jar

# INTERNAL LIBRARIES
aon.config.home=/PROYECTOS/aon-config
aon.config.lib=aon.config-0.1.jar

aon.geozone.home=/PROYECTOS/aon-geozone
aon.geozone.lib=aon.geozone-0.1.jar

aon.registry.home=/PROYECTOS/aon-registry
aon.registry.lib=aon.registry-0.1.jar

# EXTERNAL LIBRARIES
jboss.home=/SERVER/jboss-4.0.2/client
jboss.jmx.ant.lib=jbossjmx-ant.jar

org.apache.commons.beanutils.home=/JAVA/commons-beanutils-1.7.0
org.apache.commons.beanutils.lib=commons-beanutils.jar

org.apache.myfaces.home=/JAVA/myfaces-core-1.1.5
org.apache.myfaces.api.lib=myfaces-api-1.1.5.jar

org.apache.tomahawk.home=/JAVA/tomahawk-1.1.5
org.apache.tomahawk.lib=tomahawk-1.1.5.jar

org.hibernate.annotations.home=/JAVA/hibernate-annotations-3.3.0.GA
org.hibernate.annotations.lib=hibernate-annotations.jar
ejb3.persistence.lib=ejb3-persistence.jar

jboss.client.home=/SERVER/jboss-4.0.2/client
jboss.jmx.ant.client.lib=jbossjmx-ant.jar

version=0.1
name=aon.ui.registry
src.dir=src
src-ui-security.dir=/PROYECTOS/aon-ui-security/src
build.dir=${java.io.tmpdir}/classes/ui-registry
dist.dir=dist
jar.name=${name}-${version}