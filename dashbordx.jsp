<%-- 
    Document   : dashbord
    Created on : 21 Mar, 2022, 1:49:55 AM
    Author     : rohit
--%>

<%
         
       String album_dt=" "; 
       String cat=" ";
          String  cat_code=" ";
       String album_name=" ";
       String album_code=" "; 
       String title=" ";
       int total_track=0;
       int status=1;
       int first=0;
       int last=4;
       int total_count=0; 
       int total_pages=0;   
       int pages=0;
     String email=null;
     Cookie c[]=request.getCookies();
     for(int i=0;i<c.length;i++){
         if(c[i].getName().equals("user")){
             email=c[i].getValue(); 
         }
         
        
     }
     if(email!=null){
                         if(request.getParameter("cat_code").length()!=0){ 
                           cat_code=request.getParameter("cat_code");
                          }
      
    %>




<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
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
 <style>
    
  #abc{
background-color:#B284BE;
  
}
img{
    box-shadow:5px 5px 20px rgba(0,0, 0, 0.4);
    border-radius:10px;
    margin-top:4%;
    
}
#button{
    width:20px;
}
.card{
 
   box-shadow:5px 5px 20px rgba(0,0, 0, 0.4);
    border-radius:10px;
   
    
   
}


     
     </style>
   
       
       
       
       
       
</head>

<body>


    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header" style="background-color:black">
           
            <img src="album/download.png" style="width:80px;height:60px">
               
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
        <div class="header" style="background-color:" id="abc">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="search_bar dropdown">
                                <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                                    <i class="mdi mdi-magnify"></i>
                                </span>
                                <div class="dropdown-menu p-0 m-0">
                                    <form method="post" action="search.jsp">
                                        <input class="form-control" type="search" name="text" placeholder="Search..." aria-label="Search" >
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
                                    <a href="#" class="dropdown-item">
                                        <i class="icon-user"></i>
                                        <span class="ml-2">Profile </span>
                                    </a>
                                    <a href="#" class="dropdown-item">
                                        <i class="icon-envelope-open"></i>
                                        <span class="ml-2">Inbox </span>
                                    </a>
                                    <a href="logout.jsp" class="dropdown-item">
                                        <i class="icon-key"></i>
                                        <span class="ml-2">Logout </span>
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
        <div class="quixnav" style="background-color:black">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                  
                    <li><a class="has-arrow"  href="user_index.jsp"href="javascript:void()" aria-expanded="false">
                            <i class="fa fa-home"></i><span class="nav-text">Home</span></a>
                       
                    </li>
                   
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                           <i class="material-icons">&#xe03e;</i><span class="nav-text">Radio</span></a>
                       
                    </li>
                   
                     <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
                             <i class="fa fa-music"></i>
                             <span class="nav-text">My Music</span></a>
                        
                    </li>
                     <li><a class="has-arrow" href="fav_list.jsp" aria-expanded="false">
                             <i class="fa fa-star"></i>
                             <span class="nav-text">Favorite</span></a>
                        
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
         
                                                                            
                                                                            
                  <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12" style="color:black;" >
                        <span style="font-size:25px" id="movie">Albums | Movie Songs</span> 
                        
                        
                    </div>
                    
                    <%
        
                                                                
                                                                 
                                                                      int flag=0;
                                                                       
                                                                      try{
                                                                            
                                                                            if(request.getParameter("page").length()!=0){
                                                                    
                                                                               pages=Integer.parseInt(request.getParameter("page"));  
                                                                              
                                                                            }
                                                                             first=(pages*8); 
                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                                                                             Statement st1=cn.createStatement();
                                                                             Statement st2=cn.createStatement();
                                                                            ResultSet rs1=st1.executeQuery("SELECT count(*) FROM album  where status="+status+" AND cat_code='"+cat_code+"'" ); 
                                                                            if(rs1.next()){
                                                                                 total_count=rs1.getInt(1); 
                                                                            }
                                                                            total_count=total_count-8;
                                                                            total_pages=total_count/8;
                                                                            
                                                                            ResultSet rs2=st2.executeQuery("SELECT * FROM album  where status="+status+" AND cat_code='"+cat_code+"' order by dt DESC limit "+first+",8 "); 
                                                                            while(rs2.next()){
                                                                                flag=1;
                                                                                album_name=rs2.getString("title");
                                                                                album_dt=rs2.getString("dt");
                                                                                cat=rs2.getString("category");
                                                                                album_code=rs2.getString("album_code");
                                                                                title=rs2.getString("title");
                                                                             
                                                                         
                                                                         
                                     %> 
                                         
                                      <div class="col-sm-3" style="margin-top:2%" id="album">
                                            <div class="col-sm-12 card">
                                            <a href="all_song_dashbord.jsp?code=<%=album_code%>"> 
                                            <table><tr><td>
                                            <img src="album/<%=album_code%>.jpg" style="width:200px;height:200px"class="img-fluid" >
                                            </td></tr>
                                            <tr  style="color:black;font-size:17px"><td>
                                             <%=title%>   
                                            </td></tr>
                                            </table>  
                                              </a>   
                                       </div>
                                       </div>
                                     <% 
                                                                         }
                                                                    }
                                                                    catch(Exception e){} 
                                                                         
                                                                         
                                                                         
                                                                         %>
            </div>
               <div class="row">
              <div class="col-sm-3">
                     
                </div>
                <div class="col-sm-3">
                   
                </div>
                  <div class="col-sm-3">
                      <%
                           for(int i=0;i<=total_pages;i++){
                                 
         %>
                 
         <a href="dashbordx.jsp?page=<%=i%>&cat_code=<%=cat_code%>"><button id="button"><%=i%></button> </a>      
         <%
                           }                     
                                                                      %>
                    
               
                </div>  
                  <div class="col-sm-3">
                     
                </div>
                
                                                                         </div> 
            <div class="clearfix"> </div>
                      
                       
        </div>
        </div>
            
            
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer" style="background-color:#B284BE;margin-top:auto;margin-bottom:0px;color:white"> 
           
          <div class="copyright">
                <p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">Quixkit</a> 2019</p>
                <p>Distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a></p> 
            </div>
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
<% 
     }
     else{
         response.sendRedirect("index.jsp");
     }
                                                                                        
                                                                    
                                                                    
                                                                    
                                                                    %> 
</html>
