





<head>
 <script src="../js/jquery.js"></script>
        <link rel="stylesheet" href="../css/bootstrap.css" />

</head>

<% String txtsearch = request.getParameter("txtsearch"); %>
<body style ="background-color:red;">
    <div class="col-md-12 container" style="margin-top:40px;background:rgba(255,255,255,0.5);padding:20px 5px">
	<div class="col-md-4">
		<div>
			<ul class="nav nav-pills nav-stacked" style="background-color:white;border-radius:4px">
				<li class="active">
					<a href="index.jsp?p=search&txtsearch=<%=txtsearch%>&tab=searchTweet">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Result
					</a>
				</li>
				<li>
					<a href="index.jsp?p=search&txtsearch=<%=txtsearch%>&tab=searchPeople">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						People
					</a>
				</li>
				<li>
					<a href="index.jsp?p=search&txtsearch=<%=txtsearch%>&tab=searchPhotos">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Photos
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

			

			<div class="col-md-12" style="background-color:white;border-radius:4px;margin-top:15px;font-size:small;padding:10px;color:gray">
				Copyright &copy; Opaque 2013
			</div>

		</div>
	</div>
        
        
	<div class="col-md-8" style="padding-left:0px">
                                            
                                                
               
                                                
             
                                        
                                                

	<!--Tab-->
	<%
		String tab = request.getParameter("tab");	
		String path = "/view/";
		tab=path+tab+".jsp";
	
		if(null == application.getResource(tab)){
	%>
		<jsp:include page="/view/searchTweet.jsp" flush="true"/>
		
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
		
	

