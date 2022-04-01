<%--  
    Document   : search
    Created on : 24 Mar, 2022, 12:21:24 AM
    Author     : rohit
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%
     
    if(request.getParameter("text").length()==0){
        
    }
    else{
         String text=request.getParameter("text");
         String email=null;
         Cookie c[]=request.getCookies();
         for(int i=0;i<c.length;i++){
         if(c[i].getName().equals("user")){
             email=c[i].getValue(); 
         }
     }
     if(email!=null){
    
                                                   %>
                                                 <div class="container-fluid">
               
                <div class="row">
                    <div class="col-sm-12" style="color:black;" >
                        <span style="font-size:25px" id="movie">Album |Movie Songs</span> 
                        
                        
                    </div>
                                                   
                                                   <%
                                                                
                                                                  int sn=0; 
                                                                  String search=null; 
                                                                    try{
                                                                       
                                                                        Class.forName("com.mysql.jdbc.Driver"); 
                                                                         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                                                                          Statement st=cn.createStatement();
                                                                          Statement st1=cn.createStatement();
                                                                           Statement st2=cn.createStatement();
                                                                          
                                                                        ResultSet rs1=st.executeQuery("select *  from album where title like'%"+text+"%'");  
                                                                          while(rs1.next()){
                                                                              
                                                                              
                                                                             String album_code=rs1.getString("album_code");
                                                                               String title=rs1.getString("title");                                                         
                                                                     
                                                                     %>
                                                                               <div class="col-sm-3"  >
                                                                        <div class="col-sm-12" id="card" >
                                                              <a href="all_song_dashbord.jsp?code=<%=album_code%>"> 
                                                                  <table><tr><td>
                                                           <img src="album/<%=album_code%>.jpg" style="width:200px;height:200px" id="album" class="img-fluid" >
                                           </a> </td>
                                                   </tr>
                                                   <tr> <td><span  style="color:black;font-size:17px"><%=title%></span></td></tr></table>
                                                                        </div>
                                           <div class="col-sm-12"  style="height:50px"></div>                
                                            
                                                            </div>
                                      
                                                                     <%
                                                                             
                                                                          }
                                                                          %>
                                                                           
                                                                          
                                                                          <%
                                                                             
                                                                    }
                                                                    catch(Exception e){}
                                                                   %>
                                                                    </div>
                                                 </div>
                                                                   
                                                                   
                                                                   <%
                                                                             
    }
     
     else{   
                                                                             %>
    
                                       <div class="container-fluid">
               
                <div class="row">
                    <div class="col-sm-12" style="color:black;" >
                        <span style="font-size:25px" id="movie">Album |Movie Songs</span> 
                        
                        
                    </div>
                                                   
                                                   <%
                                                                
                                                                  int sn=0; 
                                                                  String search=null; 
                                                                    try{
                                                                       
                                                                        Class.forName("com.mysql.jdbc.Driver"); 
                                                                         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                                                                          Statement st=cn.createStatement();
                                                                          Statement st1=cn.createStatement();
                                                                           Statement st2=cn.createStatement();
                                                                          
                                                                        ResultSet rs1=st.executeQuery("select *  from album where title like'%"+text+"%'");  
                                                                          while(rs1.next()){
                                                                              
                                                                              
                                                                             String album_code=rs1.getString("album_code");
                                                                              String title=rs1.getString("title");                                                          
                                                                     
                                                                     %>
                                                                               <div class="col-sm-3"  >
                                                                        <div class="col-sm-12" id="card" >
                                                              <a href="all_song.jsp?code=<%=album_code%>"> 
                                                                  <table><tr><td>
                                                      <img src="album/<%=album_code%>.jpg" style="width:200px;height:200px" id="album" class="img-fluid" >
                                           </a>  </td></tr>
                                                   <tr><td><span  style="color:black;font-size:17px"><%=title%></span></td></tr></table>
                                                                        </div>
                                           <div class="col-sm-12"  style="height:50px"></div>                
                                            
                                                            </div>
                                      
                                                                     <%
                                                                             
                                                                          }
                                                                          %>
                                                                           
                                                                          
                                                                          <%
                                                                             
                                                                    }
                                                                    catch(Exception e){}
                                                                             
                                                                             
    }
     %>
       
                </div>
                                                 </div>        
     
     
     <%
    }
                                                                          
                                                                          
        %>        
                
                
                 
               
            
                      
    
    
  