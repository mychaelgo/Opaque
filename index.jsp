<%@ page language="java" import="java.sql.*,java.io.*" errorPage="" %>
<%@include file = "connect.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<title>Opaque</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Bootstrap -->
	<link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="css/addon.css" rel="stylesheet" media="screen">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
      <script src="../js/html5shiv.js"></script>
      <script src="../js/respond.min.js"></script>
    <![endif]-->

	<!--Glyphicons for Mozilla Firefox Browser-->
<!--
	<style>
		@font-face {
		  font-family: 'Glyphicons Halflings';
		  src: url('glyphicons-halflings-regular.woff');
		}
	</style>
-->
</head>
<body style="background-image:url('img example/snsd.jpg');background-size:100% 100%;background-attachment:fixed">
	<%
		if(session.getAttribute("username") == null){
			//Not Login
	%>
			<jsp:include page="view/navLogout.jsp" flush="true"/>
			<jsp:include page="view/beforeLogin.jsp" flush="true"/>
	<%			
		}else{
			// Logged in
	%>
			<jsp:include page="view/navLogin.jsp" flush="true"/>
	<%
		}
	%>
	
	<%
		String p = request.getParameter("p");	
		String path = "/view/";
		p=path+p+".jsp";
	
		if(application.getResource(p) == null){
	   		out.print("homeeee");
	%>
		<jsp:include page="/view/home.jsp" flush="true"/>
	<%
	   	out.print("homeeee2");
		}else{
			out.print(p);
	%>
		<jsp:include page="<%=p%>" flush="true"/>
	<%
		}	
	%>

        <!-- Modal Post Idea-->
<div class="modal fade" id="postIdea" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" style="background-color:#DFE1E1;border-top-left-radius:4px;border-top-right-radius:4px;text-align:center;border-bottom:thin #D7D7D7 solid">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">What are you thinking now?</h4>
			</div>
			<div class="modal-body">
                <form method = "POST" action = "controller/doPost.jsp">
                    
				<textarea style="overflow:hidden;height:100px;width:540px;outline:0" name="isipost"></textarea>
				<div style="padding-top:10px;">
                    
                    
					<div style="float:left">
						<span class="btn btn-success fileinput-button" style="cursor:pointer">
							<span class="glyphicon glyphicon-picture"></span>
						</span>
						<input type='file' style="width:40px;height:35px;margin-top:-35px;background-color:red;cursor:pointer;background-color:red;z-index:1;position:absolute;opacity:0" title="Upload Artwork" name='file' />

					</div>
					<div style="float:right">
						<button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Post</button>
                        
                        </form>
                        
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
        
	<script src="js/jquery.js"></script>
	<script src="js/opaque.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>