<%@include file="../connect.jsp"%>
<%String txtsearch = request.getParameter("txtsearch");	%>
<div style="background-color:white;padding:5px 15px;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom:thin #CFCFCF solid">

	</div>
	<div style="background-color:white;">
	<div style="background-color:white;padding:5px 15px;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom:thin #CFCFCF solid">
		<h4>Search Photos for <%=txtsearch%> </h4>
		</div>
        <%
           
           int flag = 0;
			String username = (String)session.getAttribute("username");
		 	String query = "SELECT * FROM art ar LEFT JOIN user us ON us.UserID = ar.UserID  WHERE artwork like '%"+txtsearch+"%' ";
				rs = st.executeQuery(query); 
				while(rs.next() && flag < 20){
           String userid = rs.getString("UserID");
		%>
				
        <!--Post Tempalate -->
	
		<div class="col-md-12" style="border-bottom:thin #CFCFCF solid;padding-top:10px;padding-bottom:10px" id="post-1" >
		
			
			<a href="profile.jsp" style="text-decoration:none">
				<div style="float:left">
					<img src="img example/<%=rs.getString("artwork")%>" width="150px" height="150px" style="background:#fff" class="img-rounded border-img" />
				</div>
			</a>
			
                 
              <div style="float:right">
					<a href='index.jsp?p=profile&id=<%=rs.getString("UserId")%>' style="text-decoration:none">
						<span class="count-profile">
							By:<%=rs.getString("FullName")%>
						</span>
						<span class="count-type" style="text-transform:inherit">
							@<%=userid%>
						</span>
					</a>
				</div>
                            
                            <div style="clear:both"></div>
                <div style="float:right;" id="editpost-1">
					<%=rs.getString("description")%>
	    			
				</div>
                        
			
			<div style="clear:both"></div>
		</div>
        <!--Post Tempalate -->
        
        <%
		   flag++;
		   }	
        %>
</div>
		<div style="clear:both"></div>