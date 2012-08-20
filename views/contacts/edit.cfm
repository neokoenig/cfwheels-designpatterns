<!--- :::::::::::::::::::::::::::: edit contact  :::::::::::::::::::::::::::: ---> 
<cfparam name="contact">
<cfparam name="technologies">
<cfoutput>
<h1>Editing #contact.fullname#</h1>
<hr />
#hstartFormTag(action="update", key=contact.id)#
#includePartial("form")#
<div class="form-actions">#bsubmitTag()#</div>
#endFormtag()#
<cfdump var="#contact#">
</cfoutput>