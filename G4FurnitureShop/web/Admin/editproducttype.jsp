<%-- 
    Document   : editproducttype
    Created on : Oct 22, 2020, 9:38:58 AM
    Author     : Admin
--%>

<%@page import="com.g4furnitureshop.model.producttype"%>
<%@page import="com.g4furnitureshop.dao.producttypeDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Edit Product Type</title>
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
            <form action="../editproduct_typeServlet" method="post" enctype="multipart/form-data">
                <% 
                String id =request.getParameter("id");
                producttypeDAO proDAO=new producttypeDAO();
                producttype rs= proDAO.findByID(id);
                %>
            <h3 style="text-align:center;"> Edit Product Type</h3>
            <table style="width: 700px;">
                <tr>
                    <td>Product Type Name: </td>
                    <td>
                        <input type="hidden" name="producttype_id" value='<%out.print(rs.getProducttype_id());%>' />
                        <input type="text" name="producttype_name" value='<%out.print(rs.getProducttype_name());%>'/>
                    </td>
                </tr>
                <tr>
                      <td colspan="2" ><input style="margin-left: 200px;margin-top: 20px;margin-bottom: 20px;" type="submit" value="UPDATE"/> </td>
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
