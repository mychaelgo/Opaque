<%@ page import="java.util.*,java.sql.*,java.text.*" %>

    <%@ include file="../connect.jsp"%>
        
        <%
           
    String geo = "geo";
    String isretweet = "n";
	String username = (String)session.getAttribute("username");
	String post = request.getParameter("isiPost");
	
	String query = "INSERT INTO tweet (UserID , Message, GeoCoordinates, IsRetweet, TotalRetweet, TimeStamp) VALUES ('"+username+"','"+post+"','"+geo+"','"+isretweet+"','0','2013-11-08 00:00:00.000000')";
	st.executeUpdate(query);
	
	connection.close();
	
	response.sendRedirect("../view/home.jsp");


%>