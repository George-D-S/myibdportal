<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insert definition="patient.layout" flush="true" >

    <tiles:put name="body" value="/body/patient/aboutme_display.jsp" />

</tiles:insert>