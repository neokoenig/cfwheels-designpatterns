<cfcomponent extends="Model" output="false">
    <cffunction name="init">
		<cfscript>
        // Model init functions		
		property(name="firstname", label="First Name");
		property(name="lastname", label="Last Name");
		
		//Calculated Properties
		property(name="fullname", sql="CONCAT(firstname, ' ', lastname)");
		
		// Relationships
		hasMany(name="emailaddresses", dependent="deleteAll");
		hasMany(name="contacttechnologies", dependent="deleteAll");
		hasMany(name="contactcompanies", dependent="deleteAll");
		
		// Nested properties
		nestedProperties(associations="emailaddresses,contacttechnologies,contactcompanies", allowDelete=true);

        </cfscript>
    </cffunction> 
</cfcomponent>	