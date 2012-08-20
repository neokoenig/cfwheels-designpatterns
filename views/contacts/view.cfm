<cfparam name="contact">

<cfoutput>
<h1>#contact.fullname#</h1>
<hr />
#includePartial(partial="/shared/actions", id=contact.id)#
 <cfdump var="#contact#">
</cfoutput>