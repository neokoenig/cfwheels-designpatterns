 <cfparam name="companies">
<cfoutput>

<h1>All Companies</h1>
<hr />
#linkto(text="Add New Company", action="add", class="btn btn-primary append")# 
 
<cfif companies.recordcount>
<table class="table table-condensed">
	<thead>
    	<tr>
        	<th>Name</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <cfloop query="companies">
    <cfoutput>
    	<tr>
        	<td>#linkTo(text=h(name), action="view", key=id)#</td>
            <td>#includePartial(partial="/shared/actions", id=companies.id[currentrow])#</td>           
        </td>
        </tr>
    </cfoutput>
    </cfloop>
    </tbody>
</table>
<cfelse>
    <div class="alert">No companies found yet</div>
</cfif>
</cfoutput>