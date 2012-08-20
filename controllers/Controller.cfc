<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">

	<cffunction name="getContact" hint="Returns a single contact object via key">
    	<cfset contact=model("contact").findOne(where="id=#params.key#", include="emailaddresses,contactCompanies,contactTechnologies")>
        <cfif !arraylen(contact.emailaddresses)>
        	<cfset contact.emailaddresses[1]=model("emailaddress").new()>
        </cfif>
        <cfif !arraylen(contact.contactCompanies)>
        	<cfset contact.contactCompanies[1]=model("contactCompanies").new()>
        </cfif>
        <cfif !arraylen(contact.contactTechnologies)>
        	<cfset contact.contactTechnologies[1]=model("contactTechnologies").new()>
        </cfif>
    </cffunction>
    
    <cffunction name="getContacts"   hint="Returns all contacts">    
    	<cfset contacts=model("contact").findAll(order="fullname")>
    </cffunction>  
      
    <cffunction name="getCompany"   hint="Returns all companies">    
    	<cfset company=model("company").findOne(where="id=#params.key#", order="name")>
    </cffunction>
    
    <cffunction name="getCompanies"   hint="Returns all companies">    
    	<cfset companies=model("company").findAll(order="name")>
    </cffunction>
    
    <cffunction name="getTechnologies"  hint="Returns all technologies">    
    	<cfset technologies=model("technology").findAll(order="name")>
    </cffunction>
    

    
</cfcomponent>