<div class="col-md-12 container" style="margin-top:40px;background:rgba(255,255,255,0.5);padding:20px 5px">
	<div class="col-md-4">
		<div>
			<ul class="nav nav-pills nav-stacked" style="background-color:white;border-radius:4px">
				<li class="active">
					<a href="index.jsp?p=setting&tab=settingAccount">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Account
					</a>
				</li>
				<li>
					<a href="index.jsp?p=setting&tab=settingProfile">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Profile
					</a>
				</li>
				<li>
					<a href="index.jsp?p=setting&tab=settingPassword">
						<span class="pull-right">
							<strong>&gt;</strong>
						</span>
						Password
					</a>
				</li>
			</ul>
		</div>
	</div>
	
	<!--Tab-->
	<%
		String tab = request.getParameter("tab");	
		String path = "/view/";
		tab=path+tab+".jsp";
	
		if(null == application.getResource(tab)){
	%>
		<jsp:include page="/view/settingAccount.jsp" flush="true"/>
	<%
		}else{
	%>
		<jsp:include page="<%= tab %>" flush="true"/>
	<%
		}	
	%>
	<!--End of Tab--> 