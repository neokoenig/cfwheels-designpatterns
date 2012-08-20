<cfcomponent extends="controller">
<!--- :::::::::::::::::::::::::::: init  :::::::::::::::::::::::::::: ---> 

	<cffunction name="init">
    	<cfscript>
		// Controller Init Functions
		
		// Filters
		filters(through="getContact", only="edit,update,view,delete"); 
		filters(through="getContacts", only="index");
		filters(through="getCompanies", only="add,edit,update");
		filters(through="getTechnologies", only="add,edit,update"); 
		</cfscript>
	</cffunction>    

<!--- :::::::::::::::::::::::::::: Public  :::::::::::::::::::::::::::: ---> 

	<cffunction name="index" 	hint="Just here as a reminder"></cffunction>
    <cffunction name="view" 	hint="Just here as a reminder"></cffunction>

<!--- :::::::::::::::::::::::::::: Admin  :::::::::::::::::::::::::::: ---> 
	<cffunction name="add" hint="Add a New Contact">
        <cfscript>
			newEmailaddress[1]=model("emailaddress").new();
			newContactCompany[1]=model("contactcompany").new();
			newContactTechnology[1]=model("contacttechnology").new();
 
			contact=model("contact").new(
				emailaddresses=newEmailaddress,
				contactCompanies=newContactCompany,
				contactTechnologies=newContactTechnology
			);
		</cfscript>
 	</cffunction>
    
	<cffunction name="create" hint="Creates a contact">
    
        <cfscript>
		contact=model("contact").create(params.contact);
        if(contact.hasErrors())
		{
			flashInsert(error="Errors found!");
        	renderPage(action="add");
		}
        else
		{     	
			flashInsert(success="The contact was added successfully.");
			redirectTo(action="view", key=contact.id);
		}
		</cfscript>
    </cffunction>
    
    <cffunction name="edit" hint="Edits an existing Contact"></cffunction>
	
    <cffunction name="update" hint="Updates an existing Contact"> 
 
        <cfscript>
		contact.update(params.contact);
		if(contact.hasErrors()){
        	 renderPage(action="edit");
		}
        else {        	 
			 checkForNewTechnologies();
			 flashInsert(success="The contact was updated successfully.");
			 redirectTo(action="view", key=contact.id);
		}
        </cfscript>
    </cffunction>
    
    <cffunction name="delete" hint="Kill a contact">
    	<cfscript>
		if(isObject(contact) AND contact.delete()){
			flashInsert(success="Contact deleted");
			redirectTo(action="index");
		}
		else {
			flashInsert(error="Contact couldn't be deleted!");
			redirectTo(action="index");
			}
        </cfscript>
    </cffunction>
 
<!--- :::::::::::::::::::::::::::: Private  :::::::::::::::::::::::::::: ---> 
    <cffunction name="checkForNewTechnologies" hint="Checks for a specific param and adds a new technology">
    <cfscript>
	if(structkeyexists(params, "newtechnology") AND len(params.newtechnology) GT 2) {
		nTechnology=model("technology").create(
			name=params.newtechnology
			);
		nTechnologyAssociation=model("contacttechnology").create(
			contactid=contact.key(), technologyid=nTechnology.key()
			);
	}
	</cfscript> 
    </cffunction>
</cfcomponent>