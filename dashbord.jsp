<%-- 
    Document   : dashbord
    Created on : 11 Mar, 2022, 10:43:40 PM
    Author     : rohit
--%>

<%
     String email=" ";
   
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("login")){
            
            email=c[i].getValue();
        }
        
    }
    if(email!=null){
        
    
    
    
    
    
    %>
<%@page contentType="text/html"import="java.sql.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
<title>mp3</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<style>
    
.login-form {
    width: 340px;
    margin: auto;
  	font-size: 15px;
}
.login-form form {
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-control, .btn {
    min-height: 38px;
    border-radius: 2px;
}
.btn {        
    font-size: 15px;
    font-weight: bold;
}

button.input-group-addon {
  position: absolute;
  right: -38px;
  top: 0;
  padding: 2px;
  z-index: 999;
  height: 38px;
  width: 38px;
}

</style>
</head>

<body>
<section id="container" >
<!--header start-->
<header class="header fixed-top clearfix" style="background-color:#801818">
<!--logo start-->
<div class="brand" style="background-color:#536878">
    <a  class="logo">
      Admin
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
    
    <ul class="nav pull-right top-menu" style="margin-right:50%">
         <li >
           
           <div class="input-group" >
               <form metho="post" action="search.jsp">
        <input type="text"  name="text"class="form-control"/>
        <button class="input-group-addon" type="submit">
            <i class="fa fa-search" ></i>
        </button>
               </form>
           </div>
        </li>
        
           
           
               
         
        
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse" style="background-color:#536878" >
        <!-- sidebar menu start-->
        <div class="leftside-navigation" >
            <ul class="sidebar-menu" id="nav-accordion">
               
                <li>
                    <a style="cursor:pointer">
                       
                        <span data-toggle="modal" data-target="#myModal"> Add category</span>
                        <!-- Button to Open the Modal -->


                        
                    </a>
                </li>
               
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>

     <section id="main-content"style="background-color:white">
	<section class="wrapper">
		<!-- //market-->
		<div class="container-fluid">
                                  <!-- The Modal -->
                                            <div class="modal" id="myModal">
                                              <div class="modal-dialog">
                                                <div class="modal-content">

                                                  <!-- Modal Header -->
                                                  <div class="modal-header">
                                                    <h4 class="modal-title">Add Category</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                  </div>

                                                  <!-- Modal body -->
                                                  <div class="modal-body">
                                                   
                                                           <div class="login-form">
                                                                        <form method="post="action="category.jsp">
                                                         
                                                         <label>Category</label>
                                                             <div class="form-group">
                                                                   
                                                                    <select class="form-control" name="category">
                                                                      <option value="Blues Music">Blues Music</option>
                                                                        <option value="Jazz Music">Jazz Music</option>
                                                                        <option value="Rhythm and Blues Music">Rhythm and Blues Music</option>
                                                                        <option value="Rock and Roll Music">Rock and Roll Music</option>
                                                                        <option value="Rock Music">Rock Music</option>
                                                                        <option value="Dance Music">Dance Music</option>
                                                                       
                                                                    </select>
                                                                  </div>
                                                                    
                                                                  
                                                                        
                                                             
                                                        <button class="btn btn-danger">Save</button>
                                                         
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
                                   
                                  
                                                                 <div class="row">
                                      <div class="col-sm-4"></div><div class="col-sm-8"><strong style="font-size:30px">Categories</strong></div>
                                      <div class="col-sm-12" style="background-color:black"></div>
                                       <%
        
                                                                   try{
                                                                        String album_code=" "; 
                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                                                                          Statement st=cn.createStatement();
                                                                         ResultSet rs=st.executeQuery("select *  from category where email='"+email+"'");  
                                                                          while(rs.next()){
                                                                              
                                                                              
                                                                             String cat_name=rs.getString("cat_name");
                                                                             String cat_code=rs.getString("cat_code");
                                                                            
                                                                              
                                                            
                                                                     %>
                                      <div class="col-sm-4">
                                               <a href="show_album.jsp?code=<%=cat_code%>">
                                                   <table class="table table-bordered w3-card">
                                                       <strong style="font-size:20px"><%=cat_name%></strong>
                                                  </table></a>
                                          
                                      </div>
                                          
                                                                     <%
                                                                       }                 
                                                                     }
                                                          catch(Exception e){



                                                          } 

                                                                     
                                                                          
                                                                              
                                                                              
                                                                              %>
                                  </div>                      
		   <div class="clearfix"></div> 
                      
                  </div>
                   
</section>
 <!-- footer --> 
		  <div class="footer" style="background-color:#801818;margin-top:40%"> 
			<div class="wthree-copyright"> 
			  <p>© 2017 Visitors. All rights reserved | Design by <a href="http://w3layouts.com">Rohit Choudhary</a></p 
			</div>
		  </div>
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() { 
		  jQuery(this).find('.box-button').fadeIn('fast'); 
	   }, function() { 
		  jQuery(this).find('.box-button').fadeOut('fast'); 
	   }); 
	   jQuery('.small-graph-box .box-close').click(function() { 
		  jQuery(this).closest('.small-graph-box').fadeOut(200); 
		  return false; 
	   });  
	   
	    //CHARTS
	    function gd(year, day, month) { 
			return new Date(year, month - 1, day).getTime(); 
		}
		
		graphArea2 = Morris.Area({ 
			element: 'hero-area', 
			padding: 10, 
        behaveLikeLine: true, 
        gridEnabled: false, 
        gridLineColor: '#dddddd', 
        axes: true, 
        resize: true, 
        smooth:true, 
        pointSize: 0, 
        lineWidth: 0, 
        fillOpacity:0.85, 
			data: [ 
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649}, 
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051}, 
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910}, 
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695}, 
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300}, 
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891}, 
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598}, 
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185}, 
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038}, 
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'], 
			xkey: 'period', 
            redraw: true, 
            ykeys: ['iphone', 'ipad', 'itouch'], 
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'], 
			pointSize: 2, 
			hideHover: 'auto', 
			resize: true 
		}); 
		
	   
	}); 
	</script>  
<!-- calendar --> 
	<script type="text/javascript" src="js/monthly.js"></script> 
	<script type="text/javascript"> 
		$(window).load( function() { 

			$('#mycalendar').monthly({ 
				mode: 'event', 
				
			}); 

			
                       

		

		});  
	</script>
        <%
                                                                    
    }                                                       
                                                                    
          %>
	<!-- //calendar -->
</body>
</html>
