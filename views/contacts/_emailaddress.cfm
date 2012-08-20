 
<cfparam name="arguments.current" default="">
<cfoutput>  
#btextField(
    objectName="contact", 
    association="emailaddresses", 
    position=arguments.current, 
    property="email", 
    label="Email Address",  
    class="span4"
)# 
</cfoutput>