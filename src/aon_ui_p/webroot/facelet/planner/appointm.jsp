<?xml version="1.0" encoding="ISO-8859-1"?>

<jsp:root version="2.0" 
		xmlns:f="http://java.sun.com/jsf/core" 
		xmlns:h="http://java.sun.com/jsf/html" 
		xmlns:x="http://myfaces.apache.org/extensions"
		xmlns:jsp="http://java.sun.com/JSP/Page"
		xmlns="http://www.w3.org/1999/xhtml">
<jsp:directive.page contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1"/>

<h:form id="reassignForm">

	<jsp:include page="../shared/plannerLabelbar.jsp"/>

	<x:panelGrid styleClass="diaryBtPanel" style="margin-bottom:4px;border-top:none;" 
				columns="2" columnClasses="middle,last" > 
		<h:commandButton id="reassign" value="#{bundle.aon_planner_reassign_label_short}" styleClass="reassign" 
						onclick="if (this.form.Worker_licenseNumber.value == '') {alert('Introduzca Médico');return false;} if(#{planner.events.rowCount}==0) {alert('El Médico no tiene cupos disponibles');return false;}"
						actionListener="#{diary.reassign}" />
		<h:commandButton id="exit" value="#{bundle.aon_back}" styleClass="exit" immediate="true"
						action="#{reassign.onCancel}" />
	</x:panelGrid> 

	<h:panelGrid columns="2" cellspacing="0" cellpadding="0" columnClasses="lbl,tab-input"> 
        <h:panelGrid columns="1">
            <x:inputCalendar
                id="plannerNavigator"
                monthYearRowClass="surgeryYearMonthHeader"
                weekRowClass="surgeryWeekHeader"
                currentDayCellClass="surgeryCurrentDayCell"
                value="#{planner.date}"
                valueChangeListener="#{planner.calendarValueChanged}"
                binding="#{planner.dateInput}" />
        </h:panelGrid>

		<h:panelGrid columns="1" cellspacing="3" cellpadding="2" width="100%">

			<jsp:include page="../shared/plannerOwnerbar.jsp"/>

			<x:div style="background-color:#EEF0F3;text-align:left;">
				<h:outputText value="#{bundle.aon_planner_event_label}s" style="color:#304478;font-weight:bold;font-size:15px;"/>
			</x:div>
<!--				rowOnClick="sendRow( this )" -->
			<x:dataTable id="plannerData" 
				styleClass="grid" var="to" value="#{planner.events}" rows="20" 
				rowOnMouseOver="selectRow( this )"
				rowOnMouseOut="unselectRow( this )" 
				columnClasses="centerStrCell,centerStrCell,centerStrCell,centerStrCell,strCell,centerStrCell" >

            <x:columns value="#{reassign.columnDataModel}" var="column">
                <f:facet name="header">
                    <h:panelGroup>
                        <h:outputText value="#{column}" />
                    </h:panelGroup>
                </f:facet>
				<h:selectBooleanCheckbox value="#{reassign.columnValue}" styleClass="checkbox" />
            </x:columns>

				<h:column>
					<f:facet name="header">
						<h:outputText value="#{bundle.aon_planner_event_category}" />
					</f:facet>
					<h:outputText value="#{to.category}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="#{bundle.aon_description}" />
					</f:facet>
					<h:outputText value="#{to.description}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="#{bundle.aon_start_date}" />
					</f:facet>
					<h:outputText value="#{to.startTime}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="#{bundle.aon_planner_subject_label}" />
					</f:facet>
					<h:outputText value="#{to.title}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="#{bundle.aon_id}" />
					</f:facet>
					<x:commandLink styleClass="tblLink" action="#{planner.onSelect}"/>
					<h:outputText value="#{to.id}" />
				</h:column>

			</x:dataTable>
			<h:panelGrid columns="2" styleClass="scroll" columnClasses="scrollCell,scrollCell">
				<x:div styleClass="scrollLegend">
					<x:dataScroller id="scroll_1" for="plannerData" rowsCountVar="rowsCount" 
						firstRowIndexVar="firstRowIndex" lastRowIndexVar="lastRowIndex"
						rendered="#{planner.events.rowCount>0}">
						<h:outputFormat value="#{bundle.aon_scroll}" styleClass="" >
							<f:param value="#{firstRowIndex}" />
							<f:param value="#{lastRowIndex}" />
							<f:param value="#{rowsCount}" />
						</h:outputFormat>
					</x:dataScroller>
				</x:div>
			
				<x:div id="navigation" styleClass="scrollLinks">
					<x:dataScroller id="scroll_0" for="plannerData" fastStep="5" paginatorMaxPages="5"
						paginatorActiveColumnClass="scrollPagAct" paginatorColumnClass="scrollPagInAct"
						paginator="true" rendered="#{planner.events.rowCount>20}">
						<f:facet name="first">
							<h:graphicImage url="/images/scroll/arrow-first.gif"/>
						</f:facet>
						<f:facet name="last">
							<h:graphicImage url="/images/scroll/arrow-last.gif"/>
						</f:facet>
						<f:facet name="previous">
							<h:graphicImage url="/images/scroll/arrow-previous.gif" />
						</f:facet>
						<f:facet name="next">
							<h:graphicImage url="/images/scroll/arrow-next.gif" />
						</f:facet>
						<f:facet name="fastforward">
							<h:graphicImage url="/images/scroll/arrow-ff.gif" />
						</f:facet>
						<f:facet name="fastrewind">
							<h:graphicImage url="/images/scroll/arrow-fr.gif" />
						</f:facet>
					</x:dataScroller>
				</x:div>
			</h:panelGrid>
        </h:panelGrid>

	</h:panelGrid>
</h:form>
<h:form id="placeList" target="list" />
</jsp:root>
 