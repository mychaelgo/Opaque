<%@ page import="java.util.*,java.sql.*,java.text.*" %>
<%@ include file="../connect.jsp" %>
<%

String id = request.getParameter("TweetID");	
   
String query = "DELETE FROM tweet WHERE TweetID='"+id+"'";
   
   st.executeUpdate(query);
	
	connection.close();
   
response.sendRedirect("../index.jsp");
   
%>