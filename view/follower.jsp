<%@ page import="java.util.*,java.sql.*,java.text.*" %>
<%@ include file="../connect.jsp" %>
    
    
    
        <%
           
           int flag = 0;
           
			String username = (String)session.getAttribute("username");
		 	String query = "SELECT * FROM user WHERE UserId ='"+username+"'";
				rs = st.executeQuery(query); 
				while(rs.next()){
		%>
    
<div class="col-md-12" style="margin-top:15px;padding-left:0px">
	<div style="background-color:white;padding:5px 15px;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom:thin #CFCFCF solid">
		<h4><%=rs.getString("FullName")%>'s Follower List</h4>
                
            
	</div>
        <%
           }
           %>
            
             <%
		 	String query1 = "SELECT * FROM user us JOIN following fw ON us.UserId = fw.UserId WHERE FollowingUserId ='"+username+"'";
				rs = st2.executeQuery(query1); 
				while(rs.next()){
		%>
	<div style="background-color:white;">
		<div class="col-md-12" style="border-bottom:thin #CFCFCF solid;padding-top:10px;padding-bottom:10px">
			<a href="profile.html" style="text-decoration:none">
				<div style="float:left">
					<img src="img example/1.jpg" width="50px" height="50px" style="background:#fff" class="img-rounded border-img" />
				</div>
			</a>
			<div style="float:left;margin-left:10px;width:86%">
				<div style="float:left">
					<a href="profile.html" style="text-decoration:none">
						<span class="count-profile">
							<%=rs.getString("FullName")%>
						</span>
						<span class="count-type" style="text-transform:inherit">
							@<%=rs.getString("UserId")%>
						</span>
					</a>
				</div>
				<div style="clear:both"></div>
				<div>
					<div style="float:left">
						
					</div>

					<div style="float:right;margin-top:-10px">
						<!-- Single button -->
						<div class="btn-group" style="float:left">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<span class="glyphicon glyphicon-edit"></span>
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li>
									<a data-toggle="modal" href="#myModal">Tweet <%=rs.getString("FullName")%></a>
								</li>
								<li>
									<a href="#">Follow <%=rs.getString("FullName")%></a>
								</li>
							</ul>
						</div>

						<span title="Follow Nick" class="btn btn-default" style="float:left;margin-left:20px">
							<span class="glyphicon glyphicon-transfer"></span>Follow
						</span>
					</div>
					<div style="clear:both"></div>
				</div>

				<div style="float:right;visibility:hidden" id="editpost-1">
					<a data-toggle="modal" href="#myModal">
						<span class="glyphicon glyphicon-screenshot"></span>Reply</a>&nbsp;&nbsp;
					<a href="#" id="btndelete" onclick="deletepost('post-1')">
						<span class="glyphicon glyphicon-trash"></span>Delete</a>&nbsp;&nbsp;
					<!--
	    					<a href="#" id="btnfav"><span class="glyphicon glyphicon-star"></span> Favorite</a>
	    					-->
				</div>
			</div>
			<div style="clear:both"></div>


		</div>
		<div style="clear:both"></div>
	</div>
	<div style="padding:15px;background-color:white">

	</div>
         <%}%>
</div>
            
           
