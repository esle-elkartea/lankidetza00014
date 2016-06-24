<?xml version="1.0" encoding="ISO-8859-1"?>

<jsp:root version="2.0" 
		xmlns:f="http://java.sun.com/jsf/core" 
		xmlns:h="http://java.sun.com/jsf/html" 
		xmlns:x="http://myfaces.apache.org/extensions"
		xmlns:jsp="http://java.sun.com/JSP/Page"
		xmlns="http://www.w3.org/1999/xhtml">
<jsp:directive.page contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"/>

<h:form id="eventForm">

	<jsp:include page="../shared/plannerLabelbar.jsp"/>

	<jsp:include page="toolbar.jsp"/>

	<h:panelGrid columns="2" cellspacing="0" cellpadding="0" columnClasses="lbl,tab-input"> 
        <h:panelGrid columns="1">

            <x:inputCalendar
                id="diaryNavigator"
                monthYearRowClass="surgeryYearMonthHeader"
                weekRowClass="surgeryWeekHeader"
                currentDayCellClass="surgeryCurrentDayCell"
                value="#{planner.date}"
                valueChangeListener="#{planner.calendarValueChanged}"
                binding="#{planner.dateInput}"/>
        </h:panelGrid>

        <h:panelGrid columns="1" cellpadding="2" width="100%">
			<f:facet name="header">
				<x:div style="background-color:#EEF0F3;text-align:left;">
					<h:outputText value="#{bundle.aon_surgery_worktime_label}" style="color:#304478;font-weight:bold;font-size:15px;"/>
				</x:div>
			</f:facet>
			<jsp:include page="action/workingtime.jsp"/>
        </h:panelGrid>
	</h:panelGrid>
</h:form>
<script>
	pattern = new RegExp("[0-9]");
	
	function validate(obj) {
		if ( !pattern.test(obj.value) ) {
			alert('Numero Incorrecto: ' + obj.value);
			obj.focus();
		}
	}
</script>
</jsp:root>

 