<cfcomponent extends="Model" output="false">
    <cffunction name="init">
		<cfscript>
       	// Relationships 
		belongsTo(name="contact");
		belongsTo(name="technology");
        </cfscript>
    </cffunction> 
</cfcomponent>	