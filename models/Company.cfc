<cfcomponent extends="Model" output="false">
    <cffunction name="init">
		<cfscript> 
		// Relationships 
		hasMany(name="contactcompanies");	
        </cfscript>
    </cffunction> 
</cfcomponent>	