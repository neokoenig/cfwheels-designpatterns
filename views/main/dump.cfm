<!---<cfset acontact=model("contact").new()>
<cfdump var="#acontact#">

<cfset aemailaddress=model("emailaddress").new()>
<cfdump var="#aemailaddress#">

<cfset atechnology=model("technology").new()>
<cfdump var="#atechnology#">

<cfset acompany=model("company").new()>
<cfdump var="#acompany#">

<cfscript>
nEmailaddress[1]=model("emailaddress").new();
nContactCompany[1]=model("contactcompany").new();
nContactTechnology[1]=model("contacttechnology").new();

contact=model("contact").new(
	emailaddresses=nEmailaddress,
	contactCompanies=nContactCompany,
	contactTechnologies=nContactTechnology
);
		</cfscript>
<cfdump var="#contact#">--->

<cfset contact=model("contact").findAll(where="id=1", 
		include="emailaddresses,contactCompanies(company),contactTechnologies(technology)",
		returnAs="query")>

<cfdump var="#contact#">

