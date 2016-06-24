# local build.properties
#
# $Id: build.properties,v 1.10 2003/10/14 23:03:56 marino Exp $
#
tools.path=${basedir}
tools.lib.path=${tools.path}/lib

commons-beanutils.jar=${tools.lib.path}/commons-beanutils.jar
commons-collections.jar=${tools.lib.path}/commons-collections.jar
commons-digester.jar=${tools.lib.path}/commons-digester.jar
commons-logging.jar=${tools.lib.path}/commons-logging.jar
commons-validator.jar=${tools.lib.path}/commons-validator.jar
dom4j.jar=${tools.lib.path}/dom4j.jar
servlet.jar=${tools.lib.path}/servlet.jar
struts.jar=${tools.lib.path}/struts.jar
sslext.jar=${tools.lib.path}/sslext.jar
velocity.jar=${tools.lib.path}/velocity-dep-1.3.1.jar
velocity-dvsl.jar=${tools.lib.path}/velocity-dvsl-0.43.jar

# JDK 1.3 users will need to specify this
# in order to compile VelocityStruts
#
#jdbc.jar=${lib.repo}/jdbc2_0-stdext.jar

# JDK 1.3 users can specify this to avoid
# warnings when building the project javadoc
#
#xerces.jar=${lib.repo}/xerces.jar
