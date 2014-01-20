<%@ page import="java.util.*,java.sql.*,java.text.*" %>
<%@include file = "../connect.jsp"%>
<%
	String username = (String)session.getAttribute("username");

	String oldPassword = request.getParameter("oldPass");
	String newPassword = request.getParameter("newPass");
	String confirmPassword = request.getParameter("confirmPass");
	
	if(newPassword.equals(confirmPassword) == false){
		response.sendRedirect("../index.jsp?p=setting&tab=settingPassword&result=Password and Confirm Password Must be The Same");
	}
	else{
		String query = "select * from user where UserId = '" + username + "' and Password = '" + oldPassword + "'";
		rs = st.executeQuery(query);
		if(rs.next()){
			query = "update user set Password = '" + newPassword + "' where UserId = '" + username + "'";
			try{
			st.executeUpdate(query);
			}catch(Exception e){
				out.print(e);
			}
			response.sendRedirect("../index.jsp?p=setting&tab=settingPassword&result=Password Has Been Changed");
		}
		else{
			response.sendRedirect("../index.jsp?p=setting&tab=settingPassword&result=Invalid Old Password");
		}
	}
%>