<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="userfront.jsp"><img src="assets/images/icon/logo.png" alt="logo"></a>
                </div>
            <style type="text/css">
                .logo
                {
                    margin: 10px;
                }
                #logosize
                {
                    height: 80px;
                    width: 200px;
                }
                </style>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <ul class="metismenu" id="menu">
                            <li>
                                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Budget
                                            </span></a>
                                            <span class="num">???</span>
                                             <span class="counter">
                                            <%
                                                String username=session.getAttribute("userid").toString();
                                                  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("userid")==null)
  {
      response.sendRedirect("index.html");
  }      
try
{
    String budget1="";
    String dept="";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
String sql = "SELECT dname FROM user where username='"+username+"'";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
if(rs.next())
{
    dept=rs.getString("dname");
}
sql = "SELECT budget FROM department where dname='"+dept+"'";
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
if(rs.next())
{
    budget1=rs.getString("budget");
}
out.print(budget1);
%>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
                       
                        </span>
                    <style type="text/css">
                        .counter
                        {
                            font-size: 40px;
                            color: #858FA4;
                            font-family:Verdana, Geneva, Tahoma, sans-serif;
                            margin: 20px 10px 10px 0;
                            padding: 10px;
                            position: relative;
                            right: -20px;
                            left:40px;
                            bottom: -5px;
                        
                        }
                        .num
                        {
                            font-size: 40px;
                            color: #858FA4;
                            font-family:Verdana, Geneva, Tahoma, sans-serif;
                            left: 50px;    
                            position: relative;
                            right: -30px;
                            bottom: -5px;
                        
                        }
                    </style>
                    <script type="text/javascript">
                       $('.counter').counterUp({
                            delay: 10,
                            time: 1000,
                            offset: 70,
                            formatter: function (n) 
                            {
                                return n.replace(/,/g, '.');
                            }
                       });
                    </script>
                            </li>
                            
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-pie-chart"></i><span>Order</span></a>
                                <ul class="collapse">
                                    <li><a href="productpurchase.jsp">New Order</a></li>
                                    <li><a href="previousorders.jsp">Previous Orders</a></li>
                                    
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-palette"></i><span>Status</span></a>
                                <ul class="collapse">
                                    <li><a href="accept.jsp">Accepted</a></li>
                                    <li><a href="inprocess.jsp">In Process</a></li>
                                    <li><a href="reject.jsp">Rejected</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-slice"></i><span>Request New Product</span></a>                            
                            </li>
                            
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        <div class="search-box pull-left">
                            <form action="#">
                               <!--input type="text" name="search" placeholder="Search..." required>
                                <i-- class="ti-search"></i-->
                                <h2><span id="Welcome">Welcome <%out.print(username);%>!!!</span></h2>
                                 <style>
                                    #Welcome
                                    {
                                        font-family: 'Acme', sans-serif;
                                    }
                                </style>
                            </form>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li id="full-view"><i class="ti-fullscreen"></i></li>
                            <li id="full-view-exit"><i class="ti-zoom-out"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Dashboard</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="userfront.jsp">Home</a></li>
                                <li><span>Dashboard</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right">
                            <img class="avatar user-thumb" src="assets/images/author/avatar1.jpg" alt="avatar">
                            <h4 class="user-name dropdown-toggle" data-toggle="dropdown">
                            <% out.print(username);%>
                            <i class="fa fa-angle-down"></i></h4>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Message</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <a class="dropdown-item" href="logout.jsp">Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <div class="main-content-inner">
                <!-- sales report area start -->
            
                <!-- market value area end -->
                <!-- row area start -->
                <div class="row">
                    <!-- Live Crypto Price area start -->
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Notifications</h4>
                                <div class="cripto-live mt-5">
                                    <ul>
                                        
                                            
                                                <%
                                                    try{
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject2","root","root");
                                                    PreparedStatement pst = conn.prepareStatement("select * from userchooses where status='"+1+"'");
                                                    ResultSet rs = pst.executeQuery();
                                                    while(rs.next())
                                                    {
                                                    String ordate=rs.getString("order_placed");
                                                %>
                                                <li>
                                                <a href="#" class="notify-item">
                                                <div class="notify-text">
                                                <div class="notify-thumb">
                                                    <img src="assets/images/author/avatar1.jpg" alt="image">
                                                </div>
                                                    <p>Purchase Admin</p>
                                                    <span class="msg"><p>Order is approved by purchase admin and order details are Sent to Vendors For Quotation.</p></span>
                                                    <span><%out.print(ordate);%></span>
                                                    </div>
                                            </a>
                                                    </li>
                                                    <style>
                                                        .msg
                                                        {
                                                            position: relative;
                                                            top: -26px;
                                                            right:-20px;
                                                            text-align: left;
                                                        }                                                        
                                                    </style>
                                            <%
                                            }
                                        }
                                        catch(Exception e)
                                        {
                                                System.out.print(e);
                                                e.printStackTrace();
                                        }       
                                            %>
                                        </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- trading history area end -->
                </div>
            </div>
        </div>
        <!-- main content area end -->  
    </div>
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>
