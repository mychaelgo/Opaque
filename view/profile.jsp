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
                                                
                 <div class="col-md-12" style="padding-left:0px;background-color:white;margin-top:10px;border-radius:4px;padding-left:15px;">
                   <%@ include file="writepost.jsp" %>
                 </div>
                                                
                <div class="col-md-12" style="padding-left:0px;background-color:white;margin-top:10px;border-radius:4px;padding-left:15px;">
                   <%@ include file="post.jsp" %>
                 </div>
                                        
                                                
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


        
        
        

<!-- Modal Post Idea-->
<div class="modal fade" id="postIdea" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" style="background-color:#DFE1E1;border-top-left-radius:4px;border-top-right-radius:4px;text-align:center;border-bottom:thin #D7D7D7 solid">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">What are you thinking now?</h4>
			</div>
			<div class="modal-body">
				<textarea style="overflow:hidden;height:100px;width:540px;outline:0"></textarea>
				<div style="padding-top:10px;">
					<div style="float:left">
						<span class="btn btn-success fileinput-button" style="cursor:pointer">
							<span class="glyphicon glyphicon-picture"></span>
						</span>
						<input type='file' style="width:40px;height:35px;margin-top:-35px;background-color:red;cursor:pointer;background-color:red;z-index:1;position:absolute;opacity:0" title="Upload Artwork" name='file' />

					</div>
					<div style="float:right">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Reply Post</button>
					</div>
					<div style="clear:both"></div>
				</div>
			</div>

		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
        
        
        </body>

