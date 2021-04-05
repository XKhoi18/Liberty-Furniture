<%-- 
    Document   : indexadmin
    Created on : Oct 7, 2020, 9:35:34 PM
    Author     : Admin
--%>

<%@page import="com.g4furnitureshop.model.brand"%>
<%@page import="com.g4furnitureshop.dao.brandDAO"%>
<%@page import="com.g4furnitureshop.model.producttype"%>
<%@page import="java.util.ArrayList"%>
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
        <title>Add New Product</title>
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
            <form action="../addproductServlet" method="post" enctype="multipart/form-data">
<!--            enctype="multipart/form-data"-->
            <h3 style="text-align:center;"> Add New Product </h3>
            <table style="width: 700px;">
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="product_name" /></td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td><input type="text" name="product_detail" /></td>
                </tr>
                 <tr>
                    <td>Price: </td>
                    <td><input type="text" name="price" /></td>
                </tr>
                <tr>
                    <td>Brand_ID </td>
                    <td>
                        <%
                            brandDAO brDAO= new brandDAO();
                            ArrayList<brand> list2 = new ArrayList<>();
                            list2 = brDAO.findALL();
                            out.print("<select style='width: 300px; height:30px; margin-left:5px;' id='brand_id' name='brand_id'>");
                            for(brand item: list2) {
                            out.print("<option value=\""+item.getBrand_id()+"\">"+item.getBrand_name()+"</option>");
                            }
                        out.print("</select>");
                        %>                        
                    </td>
                </tr>
                <tr>
                    <td>Type_ID: </td>
                    <td>
                        <%
                            producttypeDAO ptDAO= new producttypeDAO();
                            ArrayList<producttype> list = new ArrayList<>();
                            list = ptDAO.findALL();
                            out.print("<select style='width: 300px; height:30px; margin-left:5px;' id= 'producttype_id' name= 'producttype_id'>");
                            for(producttype item: list) {
                            out.print("<option value='"+item.getProducttype_id()+"'>"+item.getProducttype_name()+"</option>");
                        }
                        out.print("</select>");
                        %>
                    </td>
                </tr>
                <tr>
                    <td>Images</td>
                    <td><input type="file" id="images" name="images"></td>
                </tr>
                <tr>
                      <td colspan="2" ><input style="margin-left: 200px;margin-top: 20px;" type="submit" value="Add New"/> </td>
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

