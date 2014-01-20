<!-- Fixed navbar -->
<%String p = request.getParameter("p");	%>
<%String txtsearch = request.getParameter("txtsearch");	%>
<div class="navbar navbar-inverse navbar-fixed-top" style="font-size:small;">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">
				<img src="assets/opaque.png" width="30px" height="30px" style="margin-top:-4px" />Opaque
			</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li>
					<a href="index.jsp?p=message">
						<span class="glyphicon glyphicon-export"></span>Message</a>
				</li>
				<li class="active">
					<a href="index.jsp?p=profile" style="height:45px">
						<span class="glyphicon glyphicon-user"></span>Me</a>
				</li>
				<li class="">
					<a href="index.jsp?p=setting" style="height:45px">
						<span class="glyphicon glyphicon-wrench"></span>Setting</a>
				</li>
			</ul>

			<ul class="nav navbar-nav navbar-right">

				<li>
					<form action="index.jsp?p=search" method="post">
					
						<input name="txtsearch" <%if(txtsearch==null||txtsearch=="")%> placeholder="Search" <%else%>placeholder="<%=txtsearch%>" type="text" style="border-radius:12px;background-color:#EBEBEB;margin-top:8px;padding:2px 18px;outline:0;box-shadow: 2px 2px 6px #e4e4e4 inset;" />
						
						<button type="submit" style="border:0;position:relative;background:0;margin-left:-45px;outline:0">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</form>
				</li>
				<li class="dropdown" style="margin:0px 20px">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="img example/H1vWl.png" width="25px" height="25px" style="border:thin silver solid;background:white;border-radius:4px;vertical-align:central;" />
                        <!--username-->
                        <%=session.getAttribute("username")%>
                        <!--username-->
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu ">
<!--
						<li>
							<a href="#about">
								<span class="glyphicon glyphicon-envelope"></span>Message</a>
						</li>
						<li>
							<a href="#">Another action</a>
						</li>
						<li>
							<a href="#">Something else here</a>
						</li>
						
						
-->
						<li>
							<a href="controller/doLogout.jsp">Logout</a>
						</li>
		
					</ul>
				</li>

				<li>
					<button type="button" title="Post what you are thinking about" class="btn btn-primary" style="outline:0;margin-top:5px">
						<a data-toggle="modal" href="#postIdea" style="color:white;text-decoration:none">
							<span class="glyphicon glyphicon-bullhorn"></span>Post Idea
						</a>
					</button>
				</li>
			</ul>
		</div>

	</div>
</div>
<!--end of navbar-->