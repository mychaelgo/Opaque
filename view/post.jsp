 <head>
            <script src="../js/jquery.js"></script>
            <link rel="stylesheet" href="../css/bootstrap.css" />
</head>



    <body>
<div class="col-md-12" style="margin-top:15px;padding-left:0px">
	<div style="background-color:white;padding:5px 15px;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom:thin #CFCFCF solid">
		<h4><%=session.getAttribute("username")%>'s Post</h4>

	</div>
	<div style="background-color:white;">
        

        <%
           int flag = 0;
			String username = (String)session.getAttribute("username");
		 	String query = "SELECT * FROM tweet tw LEFT JOIN following fw ON tw.UserId = fw.UserId LEFT JOIN user us ON us.UserID = tw.UserID WHERE FollowingUserID='"+username+"' OR tw.UserId = '"+username+"' ORDER BY TweetId ASC";
		   	try{
				rs = st.executeQuery(query); 
				while(rs.next() && flag < 20){
		%>
		
        <!--Post Tempalate -->
		<div class="col-md-12" style="border-bottom:thin #CFCFCF solid;padding-top:10px;padding-bottom:10px" id="post-1" >
			<a href="profile.jsp" style="text-decoration:none">
				<div style="float:left">
					<img src="img example/H1vWl.png" width="50px" height="50px" style="background:#fff" class="img-rounded border-img" />
				</div>
			</a>
			<div style="float:left;margin-left:10px;width:86%">       
                <div style="float:left">
					<a href='index.jsp?p=profile&id=<%=rs.getString("UserId")%>' style="text-decoration:none">
						<span class="count-profile">
							<%=rs.getString("FullName")%>
						</span>
						<span class="count-type" style="text-transform:inherit">
							@<%=rs.getString("UserId")%>
						</span>
					</a>
				</div>
				<div style="float:right" title="Thu, 15 Oct 01:12 am" class="count-type">
					15 Oct
				</div>
				<div style="clear:both"></div>
				<div>
				<%=rs.getString("Message")%>
				</div>

				<div style="float:right;" id="editpost-1">
					<a data-toggle="modal" href="<span id=" postIdea "></span>
						<span class="glyphicon glyphicon-screenshot"></span>Reply</a>&nbsp;&nbsp;
					<a href="#" id="btndelete" onclick="deletepost('post-1')">
						<span class="glyphicon glyphicon-trash"></span>Delete</a>&nbsp;&nbsp;
					
	    					<a href="#" id="btnfav"><span class="glyphicon glyphicon-star"></span> Favorite</a>
	    			
				</div>
			</div>
			<div style="clear:both"></div>
                        <%flag++;%>
		</div>
        <!--Post Tempalate -->
        
        <%
		   		}	
			}catch(Exception e){
				out.print(e);
			} 	
        %>

		<div style="clear:both"></div>
	</div>
	<div style="padding:15px;background-color:white">

	</div>
</div>
            
            </body>