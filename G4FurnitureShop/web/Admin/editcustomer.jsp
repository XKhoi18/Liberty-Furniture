
<%@page import="com.g4furnitureshop.model.customer"%>
<%@page import="com.g4furnitureshop.dao.customerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Edit Customer</title>
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
            <form action="../editcustomerServlet" method="post" enctype="multipart/form-data">
                <% 
                    int id =Integer.parseInt(request.getParameter("id"));
                    customerDAO cusDAO=new customerDAO();
                    customer rs= cusDAO.findByID(id);
                %>
            <h3 style="text-align:center;"> Edit Customer</h3>
            <table style="width: 700px;">
                <tr>
                    <td>Name: </td>
                    <td>
                        <input type="hidden" name="customer_id" value='<%out.print(rs.getCustomer_id());%>'/>
                        <input type="text" name="customer_name" value='<%out.print(rs.getCustomer_name());%>'/>
                    </td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <select name= "customer_gender" style="width: 200px; height:30px; margin-left:5px;">);                            
                            <%
                                if(rs.getCustomer_gender()==1){
                                    out.print("<option value='1' selected >Male</option>");
                                    out.print("<option value='2'>Female</option>");
                                }
                                else{
                                    out.print("<option value='1'>Male</option>");
                                    out.print("<option value='2'selected >Female</option>");
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Date Of Birth: </td>
                    <td><input type="text" name="customer_DOB" value='<%out.print(rs.getCustomer_DOB());%>'/></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="customer_email" value='<%out.print(rs.getCustomer_email());%>'/></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><input type="text" name="customer_phone" value='<%out.print(rs.getCustomer_phone());%>'/></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="customer_address" value='<%out.print(rs.getCustomer_address());%>'/></td>
                </tr>
                </tr>
                 <tr>
                    <td>UserName: </td>
                    <td><input type="text" name="customer_username" value='<%out.print(rs.getCustomer_username());%>'/></td>
                </tr>
                <tr>
                    <td>PassWord: </td>
                    <td><input type="text" name="customer_pass" value='<%out.print(rs.getCustomer_pass());%>'/></td>
                </tr>
                <tr>
                      <td colspan="2" ><input style="margin-left: 200px;margin-top: 20px;margin-bottom: 20px;" type="submit" value="Update"/> </td>
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
