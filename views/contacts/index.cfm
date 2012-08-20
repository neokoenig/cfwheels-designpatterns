<cfparam name="contacts">
<cfoutput>

<h1>All Contacts</h1>
<hr />
#linkto(text="Add New Contact", action="add", class="btn btn-primary append")# 
 
<cfif contacts.recordcount>
<table class="table table-condensed">
	<thead>
    	<tr>
        	<th>Name</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <cfloop query="contacts">
    <cfoutput>
    	<tr>
        	<td>#linkTo(text=h(fullname), action="view", key=id)#</td>
            <td>#includePartial(partial="/shared/actions", id=contacts.id[currentrow])#</td>           
        </td>
        </tr>
    </cfoutput>
    </cfloop>
    </tbody>
</table>
<cfelse>
    <div class="alert">No contacts found yet</div>
</cfif>
</cfoutput>