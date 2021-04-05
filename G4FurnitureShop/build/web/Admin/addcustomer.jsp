<%-- 
    Document   : addcustomer
    Created on : Oct 9, 2020, 6:49:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Add New Customer</title>
        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <script src="lib/chart-master/Chart.js"></script>
    </head>
    </head>
    <body>
        <%
        if(session.getAttribute("adusername")==null)
            {
                response.sendRedirect("adminlogin.jsp");
            }
        %>
        <section id="container">
        <!--header-->
        <header class="header black-bg">
            <jsp:include page="model/adminheader.jsp"></jsp:include>
        </header>

        <!--MAIN SIDEBAR MENU-->
        <aside>
            <jsp:include page="model/adminsidebar.jsp"></jsp:include>
        </aside>

        <!--MAIN CONTENT-->
        <!--main content start-->
        <section id="main-content">
            <div style="float: left;">
            <form action="../addcustomerServlet" method="post">
            <h3 style="text-align:center;"> Add New Customer</h3>
            <table style="width: 700px;">
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="customer_name" /></td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                            <select name= "customer_gender" style="width: 200px; height:30px; margin-left:5px;">);                            
                            <option value="1">Male</option>");
                            <option value="2">Female</option>");
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Date Of Birth: </td>
                    <td><input type="text" name="customer_DOB" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="customer_email" /></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><input type="text" name="customer_phone" /></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="customer_address" /></td>
                </tr>
                </tr>
                 <tr>
                    <td>UserName: </td>
                    <td><input type="text" name="customer_username" /></td>
                </tr>
                <tr>
                    <td>PassWord: </td>
                    <td><input type="text" name="customer_pass" /></td>
                </tr>
                <tr>
                      <td colspan="2" ><input style="margin-left: 200px;margin-top: 20px;margin-bottom: 20px;" type="submit" value="Add New"/> </td>
                </tr>
            </table>     
        </form>
        </div>
        </section>
        <!--main content end-->
    </section>
    </body>
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
    <script src="lib/jquery.scrollTo.min.js"></script>
    <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="lib/jquery.sparkline.js"></script>
    <!--common script for all pages-->
    <script src="lib/common-scripts.js"></script>
    <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="lib/gritter-conf.js"></script> 
</html>
