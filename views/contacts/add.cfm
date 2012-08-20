<!--- :::::::::::::::::::::::::::: add contact  :::::::::::::::::::::::::::: ---> 
<cfparam name="contact">
<cfparam name="technologies">
<cfoutput>
<h1>Add New Contact</h1>
#hstartFormTag(action="create")#
#includePartial("form")#
<div class="form-actions">#bsubmitTag(class="btn")#</div>
#endFormtag()# 
</cfoutput>