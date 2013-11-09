<!--    Added by GO-->
<%@include file = "../connect.jsp"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	
   if(username == "") { 
        response.sendRedirect("../index.jsp?err=Username must be filled!"); 
   }else if(password == "") { 
        response.sendRedirect("../index.jsp?err=Password must be filled!"); 
   } else {
        String query = "select * from user where UserId='"+username+"' and Password='"+password+"'"; 
        
        try{
            rs = st.executeQuery(query); 
            if(rs.next()) { 
                session.setAttribute("username",username); 
                response.sendRedirect("../index.jsp"); 
            } else { 
                response.sendRedirect("../index.jsp?err=Invalid Username or Password"); 
            } 
        }catch(Exception e){
            out.print(e);
        }  
        
   } 
%>
<!--    Added by GO-->