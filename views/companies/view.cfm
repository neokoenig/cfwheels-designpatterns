<cfparam name="company">

<cfoutput>
<h1>#h(company.name)#</h1>
<hr />
#includePartial(partial="/shared/actions", id=company.id)#
 <cfdump var="#company#">
</cfoutput>