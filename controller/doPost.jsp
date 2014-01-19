<%@ page import="java.util.*,java.sql.*,java.text.*" %>

    <%@ include file="../connect.jsp"%>
        
        <%
           
    String geo = "geo";
    String isretweet = "n";
	String username = (String)session.getAttribute("username");
	String post = request.getParameter("isipost");
           
    
    java.util.Date date = new java.util.Date();
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
    
	
	String query = "INSERT INTO tweet (UserID , Message, GeoCoordinates, IsRetweet, TotalRetweet, TimeStamp) VALUES ('"+username+"','"+post+"','"+geo+"','"+isretweet+"','0','"+ft.format(date)+"')";
	st.executeUpdate(query);
	
	connection.close();
	
	response.sendRedirect("../index.jsp");


%>