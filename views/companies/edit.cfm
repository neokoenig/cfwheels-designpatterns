<!--- :::::::::::::::::::::::::::: edit contact  :::::::::::::::::::::::::::: ---> 
<cfparam name="company"> 
<cfoutput>
<h1>Editing #company.name#</h1>
<hr />
#hstartFormTag(action="update", key=company.id)#
#includePartial("form")#
<div class="form-actions">#bsubmitTag()#</div>
#endFormtag()# 
</cfoutput>