<%-- 
    Document   : index
    Created on : 25 Mar, 2022, 9:41:21 PM
    Author     : rohit
--%>

  
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%      
       String album_dt=" "; 
       String cat=" ";
       String album_name=" ";
       String album_code=" "; 
       String title=" ";
      
     %>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    
    <title>Mp3</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="./images/favicon.png">
    <link rel="stylesheet" href="./vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="./vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <script src="js/jquery2.0.3.min.js"></script>  
</head>
<style>
    
 #abc{
 background-color:#B284BE;
  
}
#card{
 
  
   box-shadow:5px 5px 20px rgba(0,0, 0, 0.4);
    border-radius:10px;
   
    
   
}
#album{
     box-shadow:5px 5px 20px rgba(0,0, 0, 0.4);
    border-radius:10px;
    margin-top:4%;
    margin-bottom:4%;
}

</style>
<script>
    $(document).ready(function(){
       $("#search").keyup(function(){    
          var text= $(this).val();
          
         if(text.length>0){
          $.post(
                  "search.jsp",{text:text},function(data){
                    
                   $("#content").html(data.trim());
           });
         }
                  
           
        
       });
       
       
           $(".fa.fa-themeisle").on("click",function(){
         var id=$(".fa.fa-themeisle").attr("id");
         var count=$(".fa.fa-themeisle").attr("rel");
         
         if(count==1){
            
             $("#abc").css("background-color",id);
              $("#footer").css("background-color",id);
            $(".fa.fa-themeisle").attr("id","id");
            
             $(".fa.fa-themeisle").attr("rel","2");
            
         }
         if(count==2){
             $("#abc").css("background-color",id);
             $("#footer").css("background-color",id);
            $(".fa.fa-themeisle").attr("id","#FFBF00");
            
             $(".fa.fa-themeisle").attr("rel","3");
            
         }
         if(count==3){
             $("#abc").css("background-color",id);
             $("#footer").css("background-color",id);
            $(".fa.fa-themeisle").attr("id","#F19CBB");
            
             $(".fa.fa-themeisle").attr("rel","4");
            
         }
          if(count==4){
             $("#abc").css("background-color",id);
             $("#footer").css("background-color",id);
            $(".fa.fa-themeisle").attr("id","#3DDC84");
            
             $(".fa.fa-themeisle").attr("rel","5");
            
         }
         if(count==5){
             $("#abc").css("background-color",id);
             $("#footer").css("background-color",id);
            $(".fa.fa-themeisle").attr("id","#FF9966");
            
             $(".fa.fa-themeisle").attr("rel","6");
            
         }
         if(count==6){
             $("#abc").css("background-color",id);
             $("#footer").css("background-color",id);
            $(".fa.fa-themeisle").attr("id","#FE6F5E");
            
             $(".fa.fa-themeisle").attr("rel","7");
            
         }
         
       
        
      });
     
        
    });
    
    
    
</script>
<body>

    

    <!--**********************************
        Main wrapper start
    ***********************************-->
    
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header" style="background-color:#232B2B">
           
               <i class="fa fa-user-circle" style="font-size:24px;padding:20px"></i>
                <a href="#"  class="navx-header brand-title" style="font-size:15px"  data-toggle="modal" data-target="#myModal">Login</a>
                <span class="navx-header brand-title">/</span>
                <a href="#" class="navx-header brand-title" style="font-size:15px"  data-toggle="modal" data-target="#myModal1">Sign Up</a>
          
            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header" id="abc">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="search_bar dropdown">
                                <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                                    <i class="mdi mdi-magnify"></i>
                                </span>
                                <div class="dropdown-menu p-0 m-0">
                                    <form  method="post" action="search.jsp">
                                        <input class="form-control" type="text" name="text" placeholder="Search" aria-label="Search"  id="search">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <ul class="navbar-nav header-right">
                            <li class="nav-item dropdown notification_dropdown">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <i class="mdi mdi-bell" style="font-size:30px;color:white"></i>
                                    <div class="pulse-css"></div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <ul class="list-unstyled">
                                        <li class="media dropdown-item">
                                            <span class="success"><i class="ti-user"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Martin</strong> has added a <strong>customer</strong> Successfully
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="primary"><i class="ti-shopping-cart"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Jennifer</strong> purchased Light Dashboard 2.0.</p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="danger"><i class="ti-bookmark"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Robin</strong> marked a <strong>ticket</strong> as unsolved.
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="primary"><i class="ti-heart"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>David</strong> purchased Light Dashboard 1.0.</p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="success"><i class="ti-image"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong> James.</strong> has added a<strong>customer</strong> Successfully
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">3:20 am</span>
                                        </li>
                                    </ul>
                                    <a class="all-notification" href="#">See all notifications <i
                                            class="ti-arrow-right"></i></a>
                                </div>
                            </li>
                            <li class="nav-item dropdown header-profile">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <i class="mdi mdi-account" style="font-size:30px;color:white"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                   
                                   
                                    <a  class="dropdown-item" style="cursor:pointer">
                                        <i class="icon-key"></i>
                                        <span class="ml-2" data-toggle="modal" data-target="#myModal">Login </span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="quixnav" style="background-color:#232B2B">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                  
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="fa fa-home"></i><span class="nav-text">Home</span></a>
                       
                    </li>
                   
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                           <i class="material-icons">&#xe03e;</i><span class="nav-text" data-toggle="modal" data-target="#myModal">Radio</span></a>
                       
                    </li>
                   
                     <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                             <i class="fa fa-music"></i>
                             <span class="nav-text" data-toggle="modal" data-target="#myModal">My Music</span></a>
                        
                    </li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                             <i class="fa fa-star"></i>
                             
                             <span class="nav-text" data-toggle="modal" data-target="#myModal">Favorite</span></a>
                        
                    </li>
                     <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                             
                             <i class="fa fa-themeisle" id="green"  rel="1"aria-hidden="true"></i>
                             <span class="nav-text"   >Change Theme</span></a>
                        
                    </li>
                </ul>
            </div>
           

        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body" style="background-color:white">
            <!-- row -->
         
            <div class="modal" id="myModal">
                                              <div class="modal-dialog">
                                                <div class="modal-content">

                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h4 class="modal-title">Sign in</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>

                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                   
                                                           <div class="login-form">
                                                                        <form action="user_login.jsp"  method="post">
                                                                            <div class="form-group">
                                                                                <label>Email:</label>
                                                                                <input type="email"  name="email"class="form-control"required="required">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Password:</label>
                                                                                <input type="password" name="password" class="form-control" required="required">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <button type="submit" class="btn btn-primary btn-block">Log in</button>
                                                                            </div>
                                                                            <div class="clearfix">
                                                                                <label class="float-left form-check-label"><input type="checkbox"> Remember me</label>
                                                                                <a href="#" class="float-right">Forgot Password?</a>
                                                                            </div>        
                                                                        </form>
                                                                       
                                                                    </div>
							
						 </div>
						
						
                                                       
						 </div>
						 
                                                 

                                                  <!-- Modal footer -->
                                                  <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                  </div>

                                                 </div>
                                              </div>
                                        <!-- login modal end!--->                                      
                        <!-- Register modal start!--->                                              
             <div class="modal" id="myModal1">
                                              <div class="modal-dialog">
                                                <div class="modal-content">

                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h4 class="modal-title">Sign Up</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>

                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                   
                                                           <div class="login-form">
                                                                        <form action="user_register.jsp"  method="post">
                                                                            <div class="form-group">
                                                                                <label>Name:</label>
                                                                                <input type="text"  name="user"class="form-control"required="required">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Email:</label>
                                                                                <input type="email"  name="email"class="form-control"required="required">
                                                                            </div>
                                                                            
                                                                            <div class="form-group">
                                                                                <label>Password:</label>
                                                                                <input type="password" name="pass" class="form-control"  required="required">
                                                                            </div>
                                                                             <div class="form-group">
                                                                                <label>Confirm-Password:</label>
                                                                                <input type="password" name="cpass" class="form-control" required="required">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <button type="submit" class="btn btn-success btn-block">Sign Up</button>
                                                                            </div>
                                                                                   
                                                                        </form>
                                                                       
                                                                    </div>
							
						 </div>
						
						
                                                       
						 </div>
						 
                                                 

                                                  <!-- Modal footer -->
                                                  <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                  </div>

                                                 </div>
                                              </div>
                                       <!-- register modal end!--->
           
                                       <div id="content"  >
                                                                         
                                           <div class="container-fluid">
               
                <div class="row">
                    
                    <div class="col-sm-12" style="color:black;" >
                        <span style="font-size:25px" id="movie">Browse by Category</span> 
                        
                        
                    </div>
                                   
                    
                    <%
        
                                                                
                                                                
                                                                  int sn=0;
                                                                  
                                                                    try{
                                                                       
                                                                        Class.forName("com.mysql.jdbc.Driver"); 
                                                                         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                                                                          Statement st=cn.createStatement();
                                                                          Statement st1=cn.createStatement();
                                                                           Statement st2=cn.createStatement();
                                                                          
                                                                        ResultSet rs1=st.executeQuery("select *  from category");  
                                                                          while(rs1.next()){
                                                                              
                                                                              
                                                                             String cat_name=rs1.getString("cat_name");
                                                                             String cat_code=rs1.getString("cat_code");
                                                                                                                                          
                                                     
                                                                     %>
                                    
                                     
                                            <div class="col-sm-12 card" style="background-color:#B2BEB5;height:40px;" >
                                            
                                                    <a href="index1.jsp?cat_code=<%=cat_code%>&sn=<%=sn%>" style="color:black"> 
                                                        <u> <strong style="font-size:20px"> <%=cat_name%></strong></u>
                                                        
                                                        <span style="color:black;font-size:20px;float:right">Show More</span>
                                                        
                                                    </a>
                                           
                                     
                                       </div>
                                                                   
                                                            <%
                                                                              ResultSet rs2=st1.executeQuery("select *  from album where cat_code='"+cat_code+"' order by sn DESC limit 0,4");  
                                                                          while(rs2.next()){
                                                                              album_code=rs2.getString("album_code");
                                                                              
                                                                              
                                                                              %>
                                                            <div class="col-sm-3"  >
                                                                        <div class="col-sm-12" id="card" >
                                                              <a href="all_song.jsp?code=<%=album_code%>"> 
                                            
                                                      <img src="album/<%=album_code%>.jpg" style="width:200px;height:200px" id="album" class="img-fluid" >
                                           </a>  </div>
                                                            </div>
                                      
                                     <% 
                                                                         }
                                                                          %>
                                                                         
                                                                          <div class="col-sm-12"  style="height:50px"></div>                
                                                                          
                                                                          <%
                                                                          }
                                                                        
                                                                    }
                                                                    catch(Exception e){} 
                                                                         
                                                                         
              
                                                                    
                                                                         %>
                                                                        
                                                            
                </div>
                </div>  
               
            <div class="clearfix"></div>  
                      
                       
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        </div>

        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer" style="background-color:#B284BE;color:white;margin-top:auto" id="footer">  
            <div class="copyright">  
                <p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">Quixkit</a> 2019</p>  
                <p>Distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a></p>   
            </div>  
        </div>  
        <!--**********************************  
            Footer end  
        ***********************************-->

        <!--**********************************
           Support ticket button start  
        ***********************************-->

        <!--**********************************
           Support ticket button end  
        ***************************** * *****-->

    </div>
    </div>  
    <!--**********************************
        Main wrapper end  
    ***********************************-->

    <!--**********************************
        Scripts   
    ***********************************-->
    <!-- Required vendors -->  
    <script src="./vendor/global/global.min.js"></script>  
    <script src="./js/quixnav-init.js"></script>  
    <script src="./js/custom.min.js"></script>  


    <!-- Vectormap -->  
    <script src="./vendor/raphael/raphael.min.js"></script>  
    <script src="./vendor/morris/morris.min.js"></script>  


    <script src="./vendor/circle-progress/circle-progress.min.js"></script>  
    <script src="./vendor/chart.js/Chart.bundle.min.js"></script>  

    <script src="./vendor/gaugeJS/dist/gauge.min.js"></script>  

    <!--  flot-chart js -->  
    <script src="./vendor/flot/jquery.flot.js"></script>  
    <script src="./vendor/flot/jquery.flot.resize.js"></script>  

    <!-- Owl Carousel -->  
    <script src="./vendor/owl-carousel/js/owl.carousel.min.js"></script>  

    <!-- Counter Up -->  
    <script src="./vendor/jqvmap/js/jquery.vmap.min.js"></script>  
    <script src="./vendor/jqvmap/js/jquery.vmap.usa.js"></script>  
    <script src="./vendor/jquery.counterup/jquery.counterup.min.js"></script>  


    <script src="./js/dashboard/dashboard-1.js"></script>  

</body>  

</html>  