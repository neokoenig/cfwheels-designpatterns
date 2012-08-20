<!--- :::::::::::::::::::::::::::: contact form :::::::::::::::::::::::::::: ---> 
<cfoutput>
    
<!--- :::::::::::::::::::::::::::: contact fields :::::::::::::::::::::::::::: --->  
<fieldset>
	<legend>Required Fields</legend>  
    #btextField(objectName="contact", property="firstname", required="required")#
    #btextField(objectName="contact", property="lastname", required="required")#
</fieldset>

<!--- :::::::::::::::::::::::::::: email :::::::::::::::::::::::::::: --->    
<fieldset>
	<legend>Email</legend>
    #includePartial(contact.emailaddresses)# 
    #includePartial("emailaddressNew")# 
     
</fieldset>

<!--- :::::::::::::::::::::::::::: technologies :::::::::::::::::::::::::::: --->    
<fieldset>
	<legend>Technologies</legend> 
	<div class="row">
    <cfloop query="technologies">
    <div class="span3">
    #hasManyCheckBox(
    objectName="Contact",
    association="contactTechnologies",
        keys="#contact.key()#,#id#",
        label=name, 
        labelPlacement="after", labelClass="checkbox", labelPlacement="around")#
    </div>
    </cfloop>  
    </div>
    
    <div class="row"> 
    #btextFieldTag(name="newTechnology", label="Or add new value:")#
    </div>
</fieldset>

<!--- :::::::::::::::::::::::::::: companies :::::::::::::::::::::::::::: --->   
<fieldset>
	<legend>Companies</legend> 
    <cfloop query="companies"> 
    #hasManyCheckBox(
    objectName="Contact",
    association="contactCompanies",
        keys="#contact.key()#,#id#",
        label=name, 
        labelPlacement="after", labelClass="checkbox", labelPlacement="around")#
    </cfloop>  
</fieldset>

</cfoutput>