<cfparam name="id">
<cfoutput>
<div class="btn-group"> 
<a href="" data-toggle="dropdown" class="btn btn-mini dropdown-toggle"><span class="caret"></span> Actions</a>
  <ul class="dropdown-menu">
    <li>#linkTo(text="<i class='icon-pencil'></i> Edit", action="edit", key=arguments.id)#</li>
    <li>#linkTo(text="<i class='icon-trash'></i> Delete", action="delete", key=arguments.id, confirm="Are you sure?")#</li> 
  </ul>
</div>
</cfoutput>