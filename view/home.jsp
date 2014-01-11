<!-- POST ORANG YANG DIFOLLOW + POST DARI DIRI SENDIRI" -->


<%@ page import="java.util.*,java.sql.*,java.text.*" %>
    <%@ include file="../connect.jsp" %>
        
        
        <html>
            <head></head>
            
            
            
            
            <body>
            <%
               
               int flag = 0;
               
               //kwkw diganti (String)session.getAttribute("username")
               String Username = "kwkw";
               
               String query = "SELECT TweetId,tw.UserId, Message, GeoCoordinates, TotalRetweet, TimeStamp FROM tweet tw LEFT JOIN following fw ON tw.UserId = fw.UserId WHERE FollowingUserID='"+Username+"' OR tw.UserId = '"+Username+"' ORDER BY TweetId ASC";
               ResultSet showpost= st.executeQuery(query);
               
               
               while(showpost.next() && flag <20){              
				%>
                
                <div style = "background-color:yellow;margin-bottom:10px;padding:10px;width:500px;">
                    
                <b style ="font-size:20px"><%=showpost.getString("UserId")%> :</b> 
                <br><span style ="font-size:30px;"><%=showpost.getString("Message")%></span>
                <br><b style ="font-size:11px">#Datenya  </b>
                <br><b style ="font-size:11px">Tweeted from <%=showpost.getString("GeoCoordinates")%></b>
                <br><b style ="font-size:11px">Retweeted <%=showpost.getString("TotalRetweet")%> Times</b>
                    
                    
                    
                </div>
                
                
                
                <%
                   flag++;
                   }
                   %>
            
            </body>
        
        
        
        
        
        </html>