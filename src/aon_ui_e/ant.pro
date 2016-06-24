# SERVLETS CONTAINER
tomcat.home=/SERVER/apache-tomcat-6.0.13
javax.servlet.api.lib=servlet-api.jar

# FRAMEWORK LIBRARIES
aon.framework.home=/JAVA/aon.framework-1.9.12
aon.framework.lib=aon.framework-1.9.12.jar

aon.ui.framework.home=/JAVA/aon.ui.framework-1.9.14
aon.ui.framework.lib=aon.ui.framework-1.9.14.jar

aon.security.home=/JAVA/aon-security-1.2.2
aon.security.lib=aon-security-client-1.2.2.jar

aon.security.bridge.home=/JAVA/aon-security-bridge-1.2.3
aon.security.bridge.lib=aon-security-bridge-1.2.3.jar

# INTERNAL LIBRARIES
aon.calendar.home=/PROYECTOS/aon-calendar
aon.calendar.lib=aon.calendar-0.1.jar

aon.planner.home=/PROYECTOS/aon-planner
aon.planner.lib=aon.planner-0.1.jar

aon.config.home=/PROYECTOS/aon-config
aon.config.lib=aon.config-0.1.jar

aon.geozone.home=/PROYECTOS/aon-geozone
aon.geozone.lib=aon.geozone-0.1.jar

aon.registry.home=/PROYECTOS/aon-registry
aon.registry.lib=aon.registry-0.1.jar

aon.company.home=/PROYECTOS/aon-company
aon.company.lib=aon.company-0.1.jar

aon.employee.home=/PROYECTOS/aon-employee
aon.employee.lib=aon.employee-0.1.jar

aon.ui.config.home=/PROYECTOS/aon-ui-config
aon.ui.config.lib=aon.ui.config-0.1.jar

aon.ui.planner.home=/PROYECTOS/aon-ui-planner
aon.ui.planner.lib=aon.ui.planner-0.1.jar

aon.ui.registry.home=/PROYECTOS/aon-ui-registry
aon.ui.registry.lib=aon.ui.registry-0.1.jar

aon.ui.company.home=/PROYECTOS/aon-ui-company
aon.ui.company.lib=aon.ui.company-0.1.jar

aon.ui.report.home=/PROYECTOS/aon-ui-report
aon.ui.report.lib=aon.ui.report-1.8.jar

# EXTERNAL LIBRARIES
ical4j.home=/JAVA/ical4j-0.9.16/build
ical4j.lib=ical4j.jar

antlr.home=/JAVA/antlr-2.7.5
antlr.lib=antlr-2.7.5.jar

org.apache.commons.digester.home=/JAVA/commons-digester-1.7
org.apache.commons.digester.lib=commons-digester-1.7.jar
								
org.apache.commons.beanutils.home=/JAVA/commons-beanutils-1.7.0
org.apache.commons.beanutils.lib=commons-beanutils.jar

org.apache.commons.logging.home=/JAVA/commons-logging-1.1
org.apache.commons.logging.lib=commons-logging-1.1.jar

org.apache.commons.collections.home=/JAVA/commons-collections-3.1
org.apache.commons.collections.lib=commons-collections-3.1.jar

org.apache.commons.lang.home=/JAVA/commons-lang-2.2
org.apache.commons.lang.lib=commons-lang-2.2.jar

org.apache.commons.fileupload.home=/JAVA/commons-fileupload-1.0
org.apache.commons.fileupload.lib=commons-fileupload-1.0.jar

org.apache.commons.codec.home=/JAVA/commons-codec-1.3
org.apache.commons.codec.lib=commons-codec-1.3.jar

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
org.hibernate.annotations.commons.lib=hibernate-commons-annotations.jar
ejb3.persistence.lib=ejb3-persistence.jar

org.apache.myfaces.home=/JAVA/myfaces-core-1.1.5
org.apache.myfaces.api.lib=myfaces-api-1.1.5.jar
org.apache.myfaces.impl.lib=myfaces-impl-1.1.5.jar

org.apache.tomahawk.home=/JAVA/tomahawk-1.1.5
org.apache.tomahawk.lib=tomahawk-1.1.5.jar

com.sun.facelets.home=/JAVA/facelets-1.1.11
com.sun.facelets.lib=jsf-facelets.jar
javax.el.lib=el-api.jar
com.sun.el.lib=el-ri.jar

net.sf.jasperreports.home=/JAVA/jasperreports-1.3.2
net.sf.jasperreports.lib=jasperreports-1.3.2.jar
poi.lib=poi-2.0-final-20040126.jar
com.lowagie.lib=itext-1.3.1.jar
com.javaflow.lib=commons-javaflow-20060411.jar

version=0.1
name=aon-employee
src.dir=src
build.dir=${java.io.tmpdir}/classes
build-web-employee.dir=${build.dir}/web-employee
dist.dir=dist
jar.web-employee.name=${name}-${version}