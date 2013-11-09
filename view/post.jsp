bbbbbb
<%=session.getAttribute("username")%>
<div class="col-md-8" style="margin-top:15px;padding-left:0px">
	<div style="background-color:white;padding:5px 15px;border-top-left-radius:4px;border-top-right-radius:4px;border-bottom:thin #CFCFCF solid">
		<h4><%=session.getAttribute("username")%>'s Post</h4>

	</div>
	<div style="background-color:white;">
        
<!--
        <%
		   out.print("saaaaaaaa");
            String username = session.getAttribute("username");
            out.print(username);
		   	String query = "SELECT * FROM tweet";
            try{
                ResultSet rs = st.executeQuery(query); 
                while(rs.next()){
                    out.print("aa ");
                }
                
            }catch(Exception e){
                out.print(e);
            }  
        %>
-->
        <!--Post Tempalate -->
		<div class="col-md-12" style="border-bottom:thin #CFCFCF solid;padding-top:10px;padding-bottom:10px" id="post-1" >
			<a href="profile.jsp" style="text-decoration:none">
				<div style="float:left">
					<img src="img example/H1vWl.png" width="50px" height="50px" style="background:#fff" class="img-rounded border-img" />
				</div>
			</a>
			<div style="float:left;margin-left:10px;width:86%">       
                <div style="float:left">
					<a href="profile.jsp" style="text-decoration:none">
						<span class="count-profile">
							Patrick Star
						</span>
						<span class="count-type" style="text-transform:inherit">
							@patrickstar
						</span>
					</a>
				</div>
				<div style="float:right" title="Thu, 15 Oct 01:12 am" class="count-type">
					15 Oct
				</div>
				<div style="clear:both"></div>
				<div>
					<a href="profile.jsp" style="color:#0099FF">@yennykamal</a>Tante yekaaa, Happy Birthday yaa Wish you all the best!! Sukses kuliah dan sehat selalu.. smoga kumlods terus. Have a gr8 day XD
				</div>

				<div style="float:right;visibility:hidden" id="editpost-1">
					<a data-toggle="modal" href="<span id=" postIdea "></span>">
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
        <!--Post Tempalate -->
        
        
		<div style="clear:both"></div>
	</div>
	<div style="padding:15px;background-color:white">

	</div>
</div>