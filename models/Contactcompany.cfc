<cfcomponent extends="Model" output="false">
    <cffunction name="init">
		<cfscript>
       	// Relationships 
		belongsTo(name="contact");
		belongsTo(name="company");
        </cfscript>
    </cffunction> 
</cfcomponent>	