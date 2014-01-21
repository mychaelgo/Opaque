<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>

<%@ include file="../connect.jsp" %>
    <%
	String username= request.getParameter("inputName1"); 
	String fullname= request.getParameter("inputFullName1");
	String pass = request.getParameter("inputPassword1");
       
    String insertintodb = "INSERT INTO user (UserID, FullName, AccountType, TotalFollowing, TotalFollowers, Password, Photo) VALUES ('" + username + "', '" + fullname + "','0','0','0', '" + pass + "','profile.jpg')";
	st.executeUpdate(insertintodb);
    connection.close();
    response.sendRedirect("../index.jsp?err=Success!!");
   %>