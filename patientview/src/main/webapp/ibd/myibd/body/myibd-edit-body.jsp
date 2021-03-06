<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<div class="row">
	<div class="span12">
        <div class="page-header">
		    <h1>My IBD</h1>
        </div>

        <html:form action="/myibd-update" styleClass="form-horizontal">
            <html:errors/>

            <logic:present name="diagnosisList" scope="session">
                <div class="control-group">
                        <label class="control-label">Primary Diagnosis:</label>
                    <div class="controls">
                        <html:select property="diagnosisId">
                            <html:option value="">Select</html:option>
                            <html:options collection="diagnosisList" property="id" labelProperty="name"/>
                        </html:select>
                    </div>
                </div>
            </logic:present>

            <logic:present name="diseaseExtentList" scope="session">
                <div class="control-group">
                        <label class="control-label">Disease Extent:</label>
                    <div class="controls">
                        <html:select property="diseaseExtentId">
                            <html:option value="">Select</html:option>
                            <html:options collection="diseaseExtentList" property="id" labelProperty="name"/>
                        </html:select>
                    </div>
                </div>
            </logic:present>

            <div class="control-group">
                <label class="control-label" for="yearOfDiagnosis">Year of Diagnosis:</label>
                <div class="controls">
                    <div class="input-append date datePicker" data-date="<bean:write name="myIbdForm" property="yearOfDiagnosis"/>">
                        <input name="yearOfDiagnosis" id="yearOfDiagnosis" class="span2" size="16" type="text" value="<bean:write name="myIbdForm" property="yearOfDiagnosis"/>" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Complications:</label>
                <div class="controls">
                    <html:text property="complications"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Other parts of the body affected:</label>
                <div class="controls">
                    <html:text property="bodyPartAffected"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="yearForSurveillanceColonoscopy">Year for Surveillance Colonoscopy:</label>
                <div class="controls">
                    <div class="input-append date datePicker" data-date="<bean:write name="myIbdForm" property="yearForSurveillanceColonoscopy"/>">
                        <input name="yearForSurveillanceColonoscopy" id="yearForSurveillanceColonoscopy" class="span2" size="16" type="text" value="<bean:write name="myIbdForm" property="yearForSurveillanceColonoscopy"/>" readonly>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                </div>
            </div>

            <div class="control-group">
                    <label class="control-label">Named Consultant:</label>
                <div class="controls">
                    <html:text property="namedConsultant"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Nurses:</label>
                <div class="controls">
                    <html:textarea property="nurses" rows="5" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">IBD Related Family History:</label>
                <div class="controls">
                    <html:text property="familyHistory"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Smoking History:</label>
                <div class="controls">
                    <html:text property="smoking"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Surgery History:</label>
                <div class="controls">
                    <html:text property="surgery"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Vaccination History:</label>
                <div class="controls">
                    <html:text property="vaccinationRecord"/>
                </div>
            </div>

            <div class="form-actions">
                <html:submit value="Save" styleClass="btn btn-primary"/>
                <html:link action="/myibd" styleClass="btn">Cancel</html:link>
            </div>
        </html:form>
	</div>
</div>
