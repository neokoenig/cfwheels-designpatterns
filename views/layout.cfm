<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>cfWheels Examples</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">   
    
    #stylesheetlinkTag('bootstrap,custom')#
    
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
</head>
<body>
<div class="container">
<!-- :::::::::::::::::::::::::::: Nav  :::::::::::::::::::::::::::: -->
<nav>
<div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="##">cfWheels Design Patterns</a>
          <div class="nav-collapse">
            <ul class="nav"> 
              <li>#linkTo(controller="contacts", text="Contacts")#</li>
              <li>#linkTo(controller="companies", text="Companies")#</li>
           
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
</nav>

<!-- :::::::::::::::::::::::::::: Main output  :::::::::::::::::::::::::::: -->        
<div id="main-content">
<section>
#bflashMessages()#
#includeContent()# 
</section>
</div>

<!-- :::::::::::::::::::::::::::: Footer  :::::::::::::::::::::::::::: -->         
<footer>
<hr />
<p>I am a footer</p>         
</footer>
</div>
<!-- :::::::::::::::::::::::::::: JS  :::::::::::::::::::::::::::: -->
#javascriptincludeTag("http://code.jquery.com/jquery-1.7.2.min.js,bootstrap.min")#
</body>
</html>
</cfoutput>