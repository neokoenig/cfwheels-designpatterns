<cfcomponent extends="Model" output="false">
    <cffunction name="init">
		<cfscript> 
		// Relationships 
		hasMany(name="contacttechnologies");	
        </cfscript>
    </cffunction> 
</cfcomponent>	