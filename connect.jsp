<%@ page language="java" import="java.sql.*,java.io.*" errorPage="" %>
<%	
        String connectionURL = "jdbc:mysql://localhost:3306/opaque";
        Connection connection = null; 
        Statement st=null;
        ResultSet rs=null;
		Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		try{
			connection = DriverManager.getConnection(connectionURL, "root","root");
			st=connection.createStatement();
		}catch(Exception e){
			out.print(e);
		}
%>