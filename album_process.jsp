<%-- 
    Document   : Album_process
    Created on : 13 Mar, 2022, 2:10:50 AM
    Author     : rohit
--%>


<%@page contentType="text/html" import="java.sql.*,java.util.*"pageEncoding="UTF-8"%> 
<%
    
    String cat_code=" ";
    String title=" ";
    String description=" ";
    String album_code=" ";
    String email=" ";
    String category=" ";
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            email=c[i].getValue(); 
        }
        
        
    }
    if(email!=null){
                     if(request.getParameter("title").length()!=0 && request.getParameter("description").length()!=0 && request.getParameter("category").length()!=0){
                         title=request.getParameter("title"); 
                         description=request.getParameter("description");
                         category=request.getParameter("category"); 
                         try{
                              int sn=0;
                              Class.forName("com.mysql.jdbc.Driver");
                              Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                              Statement st=cn.createStatement();
                              ResultSet rs=st.executeQuery("select MAX(sn) from album");
                              if(rs.next()){
                                  
                                  sn=rs.getInt(1); 
                              }
                              sn++;
                              LinkedList l=new LinkedList(); 
                                for(int i=1;i<=9;i++){
                                    l.add(new Integer(i));
                                }
                                for(char i='A';i<='Z';i++){
                                    l.add(i+"");
                                }
                                for(char i='a';i<='z'; i++){
                                    l.add(i+"");
                                }
                                Collections.shuffle(l);
                                for(int i=1;i<=5;i++){
                                          album_code=album_code+l.get(i);
                                 }
                               java.util.Date date=new java.util.Date();
                               java.sql.Date sqlDate=new java.sql.Date(date.getTime()); 
                               String dat=sqlDate+""; 
                               int status=1;
                                ResultSet rs1=st.executeQuery("select* from category where cat_name='"+category+"'");
                              if(rs1.next()){
                                  
                                  cat_code=rs1.getString("cat_code"); 
                              }
                               if(st.executeUpdate("insert into album values('"+sn+"','"+album_code+"','"+cat_code+"','"+title+"','"+description+"','"+category+"','"+email+"','"+dat+"','"+status+"')")>0){
                                   
                                   response.sendRedirect("album_image.jsp?code="+cat_code+"&album_code="+album_code);   
                                   
                                   
                                   
                               }
                             
                         }
                         catch(Exception e){
                             out.print(e.getMessage()); 
                         }
                     }
                    
    }
    
    %>