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
			<jsp:include page="view/home.jsp" flush="true"/>
	<%
		}
	%>
	
	<%
		String p = request.getParameter("p");	
		String path = "/view/";
		p=path+p+".jsp";
	
		if(null == application.getResource(p)){
			out.print("null");
		}else{
			out.flush();
			out.print(p);
	%>
		<jsp:include page="<%=p%>" flush="true"/>
	<%
		}	
	%>

	<script src="js/jquery.js"></script>
	<script src="js/opaque.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>