<%-- 
    Document   : edit_album
    Created on : 22 Mar, 2022, 12:56:03 AM
    Author     : rohit
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
    String album_code=" ";
    String title=" ";
    String email=" "; 
    String cat_code=" ";
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue(); 
        }
    }
    if(email!=null){
        
               if(request.getParameter("album_code").length()!=0 && request.getParameter("cat_code").length()!=0 && request.getParameter("title").length()!=0){
                   album_code=request.getParameter("album_code");
                   cat_code=request.getParameter("cat_code"); 
                   title=request.getParameter("title"); 
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                   Statement st=cn.createStatement();
                   int status=1; 
                   if(st.executeUpdate("update album set title='"+title+"' where album_code='"+album_code+"' AND cat_code='"+cat_code+"' AND email='"+email+"'  AND status='"+status+"'")>0){
                       response.sendRedirect("all_song.jsp?code="+album_code);
                   }
                   
                   
                   
                   
                   
                   
               }
        
        
        
        
    }
    
    
    
    
    
    %>

