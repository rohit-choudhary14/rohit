<%-- 
    Document   : category
    Created on : 11 Mar, 2022, 11:19:35 PM
    Author     : rohit
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
    String email=" ";
    String cat_name="  ";
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            
            email=c[i].getValue();
        }
        
    }
    if(email!=null){
        
                  if(request.getParameter("category").length()==0){
                       response.sendRedirect("dashbord.jsp?category_cant_be_empty");
                      
                  }
                  else{
                      
                      
                       int sn=0;
                       String cat_code=" ";
                       cat_name=request.getParameter("category"); 
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
                                 cat_code=cat_code+l.get(i);
                        }
                        
                        try{
                              Class.forName("com.mysql.jdbc.Driver");
                              Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                              Statement st=cn.createStatement();
                              Statement st1=cn.createStatement();
                              ResultSet rs=st.executeQuery("select MAX(sn) from category");  
                              if(rs.next()){
                                  
                                  sn=rs.getInt(1);
                                  
                              }
                              sn++; 
                              java.util.Date date=new java.util.Date();
                              java.sql.Date sqlDate=new java.sql.Date(date.getTime()); 
                              String dat=sqlDate+"";
                              ResultSet rs1=st1.executeQuery("select * from category where cat_name='"+cat_name+"'");    
                              if(rs1.next()){
                                  response.sendRedirect("dashbord.jsp?category_is alredy_exit");
                                 
                              
                              }
                              else{
                                    if(st.executeUpdate("insert into category values('"+sn+"','"+cat_code+"','"+cat_name+"','"+dat+"','"+email+"')")>0){
                                         response.sendRedirect("dashbord.jsp?success");

                                    }
                              }
                             
                            
                        }
                        catch(Exception e){ 
                            
                            
                            
                        }
                          
                      
                      
                      
                      
                  }
        
        
        
        
    }
    
    
    
    
    
    %>