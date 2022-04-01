<%-- 
    Document   : song_delete
    Created on : 22 Mar, 2022, 11:15:07 PM
    Author     : rohit
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
    String song_code=" ";
    String email=" "; 
    String album_code=" ";
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue(); 
        }
    }
    if(email!=null){
        
               if(request.getParameter("album_code").length()!=0 && request.getParameter("song_code").length()!=0){
                   album_code=request.getParameter("album_code");
                   song_code=request.getParameter("song_code"); 
                   int status=0;
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                   Statement st=cn.createStatement();
                   if(st.executeUpdate("update song  set status='"+status+"' where album_code='"+album_code+"' AND song_code='"+song_code+"' AND email='"+email+"' ")>0){
                       
                   }
                   
                   
                   
                   
                   
                   
                   
               }
        
        
        
        
    }
    
    
    
    
    
    %>

