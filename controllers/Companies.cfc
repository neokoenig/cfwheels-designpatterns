 <cfcomponent extends="controller">
<!--- :::::::::::::::::::::::::::: init  :::::::::::::::::::::::::::: ---> 

	<cffunction name="init">
    	<cfscript>
		// Controller Init Functions
		
		// Filters 
		filters(through="getCompanies", only="index");
		filters(through="getCompany", only="view,edit,update");
		</cfscript>
	</cffunction>    

<!--- :::::::::::::::::::::::::::: Public  :::::::::::::::::::::::::::: ---> 

	<cffunction name="index" 	hint="Just here as a reminder"></cffunction>
    <cffunction name="view" 	hint="Just here as a reminder"></cffunction>
    
    <cffunction name="add"></cffunction>
    
    <cffunction name="create" hint="Creates a contact">
  
        <cfscript>
		company=model("company").create(params.company);
        if(contact.hasErrors())
		{
			flashInsert(error="Errors found!");
        	renderPage(action="add");
		}
        else
		{     	
			flashInsert(success="The company was added successfully.");
			redirectTo(action="view", key=company.id);
		}
		</cfscript>
    </cffunction>
    
    
    <cffunction name="edit"></cffunction>
    
    <cffunction name="update" hint="Updates an existing Contact"> 
        <cfscript>
		company.update(params.company);
		if(company.hasErrors()){
        	 renderPage(action="edit");
		}
        else {        	 
			 flashInsert(success="The company was updated successfully.");
			 redirectTo(action="view", key=company.id);
		}
        </cfscript>
    </cffunction>
    
 
</cfcomponent>