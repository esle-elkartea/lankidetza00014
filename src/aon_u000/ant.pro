# SERVLETS CONTAINER
tomcat.home=/SERVER/apache-tomcat-5.5.17
javax.servlet.api.lib=servlet-api.jar

# INTERNAL LIBRARIES
aon.framework.home=/JAVA/aon.framework-1.9.12
aon.framework.lib=aon.framework-1.9.12.jar

aon.ui.framework.home=/JAVA/aon.ui.framework-1.9.14
aon.ui.framework.lib=aon.ui.framework-1.9.14.jar

org.hibernate.home=/JAVA/hibernate-3.2
org.hibernate.lib=hibernate3.jar

# EXTERNAL LIBRARIES
org.apache.myfaces.home=/JAVA/myfaces-core-1.1.5
org.apache.myfaces.api.lib=myfaces-api-1.1.5.jar
org.apache.myfaces.impl.lib=myfaces-impl-1.1.5.jar

net.sf.jasperreports.home=/JAVA/jasperreports-1.3.2
net.sf.jasperreports.lib=jasperreports-1.3.2.jar

commons-digester.home=/JAVA/commons-digester-1.7
commons-digester.lib=commons-digester-1.7.jar

commons-beanutils.home=/JAVA/commons-beanutils-1.7.0
commons-beanutils.lib=commons-beanutils.jar

org.apache.commons.lang.home=/JAVA/commons-lang-2.2
org.apache.commons.lang.lib=commons-lang-2.2.jar

org.apache.fop.home=/JAVA/fop-0.20.5
org.apache.fop.lib=build/fop.jar

org.velocity.home=/JAVA/velocity-1.4
org.velocity.lib=velocity-1.4.jar

org.velocity-tools.home=/JAVA/velocity-tools-1.1
org.velocity-tools.lib=velocity-tools-1.1.jar

version=1.8
name=aon.ui.report
src.dir=src
build.dir=${java.io.tmpdir}/classes/${name}
dist.dir=dist
api.dir=doc
jar.name=${name}-${version}
