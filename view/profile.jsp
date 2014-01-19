<head>
 <script src="../js/jquery.js"></script>
        <link rel="stylesheet" href="../css/bootstrap.css" />

</head>

<body style ="background-color:red;">
    <div class="col-md-12 container" style="margin-top:40px;background:rgba(255,255,255,0.5);padding:20px 5px">
	<div class="col-md-4">
		<div>
			<ul class="nav nav-pills nav-stacked" style="background-color:white;border-radius:4px">
				<li class="active">
					<a href="index.jsp?p=profile&tab=post">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Post
					</a>
				</li>
				<li>
					<a href="index.jsp?p=profile&tab=following">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Following
					</a>
				</li>
				<li>
					<a href="index.jsp?p=profile&tab=follower">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Follower
					</a>
				</li>
				<!--
				  <li>
				    <a href="#">
				      <span class="pull-right"><strong>&gt;</strong></span>
				      My Design
				    </a>
				  </li>
					-->
			</ul>

			<div class="col-md-12" style="background-color:white;border-radius:4px;margin-top:15px">
				<a href="index.jsp?p=artwork">
					<div style=";padding:10px 0px">
						Artwork List
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
					</div>
				</a>
				<div class="col-md-12" style="background-color:white;padding:0px">
					<div style="margin-bottom:10px">
						<a href="">
							<img src="img example/1.jpg" style="width:100px;height:80px;margin-left:5px;margin-bottom:10px" class="img-rounded" />
						</a>
						<a href="">
							<img src="img example/1.jpg" style="width:100px;height:80px;margin-left:5px;margin-bottom:10px" class="img-rounded" />
						</a>
						<a href="">
							<img src="img example/1.jpg" style="width:100px;height:80px;margin-left:5px;margin-bottom:10px" class="img-rounded" />
						</a>
						<a href="">
							<img src="img example/1.jpg" style="width:100px;height:80px;margin-left:5px;margin-bottom:10px" class="img-rounded" />
						</a>
						<a href="">
							<img src="img example/1.jpg" style="width:100px;height:80px;margin-left:5px;margin-bottom:10px" class="img-rounded" />
						</a>
						<a href="">
							<img src="img example/1.jpg" style="width:100px;height:80px;margin-left:5px;margin-bottom:10px" class="img-rounded" />
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-12" style="background-color:white;border-radius:4px;margin-top:15px;font-size:small;padding:10px;color:gray">
				Copyright &copy; Opaque 2013
			</div>

		</div>
	</div>
        
        
	<div class="col-md-8" style="padding-left:0px">
                                            <div style="background:url(img example/1.jpg');background-size:100% 100%;height:260px;padding:25px;border-top-left-radius:4px;border-top-right-radius:4px">
                                                <div class="col-md-4" style="float:left">
                                                    <img src="img example/1.jpg" class="img-rounded border-img" width="180px" height="180px" />
                                                </div>
                                                <div style="color:white;text-shadow:2px 2px 3px gray;float:left">
                                                    <a href="profile.jsp">
                                                        <h2 style="margin-top:10px;color:white;font-weight:bold">
                                                            Patrick Star
                                                        </h2>
                                                    </a>
                                                    <h3 style="margin-top:0px">
                                                        @<%=session.getAttribute("username")%>
                                                    </h3>
                                                    <h4 style="font-size:11pt">
                                                        <em>Don't mess with the best</em>
                                                    </h4>
                                                    <h4 style="font-size:11pt">
                                                        Jakarta, ID
                                                    </h4>
                                                    <h4 style="font-size:11pt">
                                                        <a style="color:white" href="">www.facebook.com</a>
                                                    </h4>
                                                </div>
                                                <div style="clear:both"></div>
                                            </div>
		<div style="clear:both"></div>
                    <div style="background-color:white;border-bottom-left-radius:4px;border-bottom-right-radius:4px;padding:10px;border:thin silver solid">
                                                <div class="col-md-2 text-center" style="padding:0px;border-right:thin #e4e4e4 solid">
                                                    <a href="index.jsp?p=profile&tab=post" class="count-profile">
                                                        <span>
                                                            25
                                                        </span>
                                                        <br/>
                                                        <span class="count-type">
                                                            Post
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="col-md-2 text-center" style="padding:0px;border-right:thin #e4e4e4 solid">
                                                    <a href="index.jsp?p=artwork" class="count-profile">
                                                        <span>
                                                            25
                                                        </span>
                                                        <br/>
                                                        <span class="count-type">
                                                            Artwork
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="col-md-2 text-center" style="padding:0px;border-right:thin #e4e4e4 solid">
                                                    <a href="index.jsp?p=profile&tab=following " class="count-profile">
                                                        <span>
                                                            25
                                                        </span>
                                                        <br/>
                                                        <span class="count-type">
                                                            Following
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="col-md-2 text-center" style="padding:0px;border-right:thin #e4e4e4 solid">
                                                    <a href="index.jsp?p=profile&tab=follower" class="count-profile">
                                                        <span>
                                                            25
                                                        </span>
                                                        <br/>
                                                        <span class="count-type">
                                                            Follower
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="col-md-3 col-md-offset-1 text-center">
                                                    <a href="editprofile.jsp">
                                                        <button class="btn btn-primary">
                                                            <span class="glyphicon glyphicon-pencil"></span>&nbsp; Edit Profile
                                                        </button>
                                                    </a>
                                                </div>
            
                        <div style="clear:both"></div>
                        
                        
                    </div>
                                                
               
                                                
             
                                        
                                                

	<!--Tab-->
	<%
		String tab = request.getParameter("tab");	
		String path = "/view/";
		tab=path+tab+".jsp";
	
		if(null == application.getResource(tab)){
	%>
		<jsp:include page="/view/post.jsp" flush="true"/>
	<%
		}else{
	%>
		<jsp:include page="<%=tab%>" flush="true"/>
	<%
		}	
	%>
	<!--End of Tab--> 
</div>


        
        
        


        
        
        </body>

