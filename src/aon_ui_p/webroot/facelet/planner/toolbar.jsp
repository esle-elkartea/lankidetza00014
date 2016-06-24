<?xml version="1.0" encoding="ISO-8859-1"?>

<jsp:root version="2.0" 
		xmlns:f="http://java.sun.com/jsf/core" 
		xmlns:h="http://java.sun.com/jsf/html" 
		xmlns:jsp="http://java.sun.com/JSP/Page"
		xmlns="http://www.w3.org/1999/xhtml">
<jsp:directive.page contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"/>

<h:panelGrid styleClass="diaryBtPanel" style="margin-bottom:4px;border-top:none;" 
			columns="3" columnClasses="buttons,middle,last" > 
	<h:commandButton id="accept" value="#{bundle.aon_accept}" styleClass="accept"
					disabled="#{!event.enabled}"
					actionListener="#{event.accept}" />
	<h:commandButton id="remove" value="#{bundle.aon_remove}" styleClass="delete" 
					disabled="#{!event.enabled or event.new}"
					action="#{event.onCancel}"  actionListener="#{event.remove}" 
					onclick="return (confirm('#{bundle.aon_remove_confirm}'))"/>
	<h:commandButton id="exit" value="#{bundle.aon_back}" styleClass="exit" immediate="true"
					action="#{event.onCancel}" />
</h:panelGrid> 

</jsp:root>
 