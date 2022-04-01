<%-- 
    Document   : delete_album
    Created on : 22 Mar, 2022, 1:22:57 AM
    Author     : rohit
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
    String album_code=" ";
   String cat_code=" ";
    String email=" "; 
    
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue(); 
        }
    }
    if(email!=null){
        
               if(request.getParameter("album_code").length()!=0 && request.getParameter("cat_code").length()!=0){
                   album_code=request.getParameter("album_code");
                   cat_code=request.getParameter("cat_code");
                   int status=0;
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                   Statement st=cn.createStatement();
                   if(st.executeUpdate("update album set status='"+status+"' where album_code='"+album_code+"' AND cat_code='"+cat_code+"' ")>0){
                      if(st.executeUpdate("update song  set status='"+status+"' where album_code='"+album_code+"'AND email='"+email+"'")>0){
                      
                      }
                      response.sendRedirect("all_album.jsp?code="+cat_code);
                   }
                   
                   
                   
                   
                    
                   
               }
        
        
        
        
    }
    
    
    
    
    
    %>


