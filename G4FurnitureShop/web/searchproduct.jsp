<%-- 
    Document   : searchproduct
    Created on : Oct 25, 2020, 5:21:47 PM
    Author     : Admin
--%>

<%@page import="com.g4furnitureshop.model.producttype"%>
<%@page import="com.g4furnitureshop.dao.producttypeDAO"%>
<%@page import="com.g4furnitureshop.model.brand"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*" %>
<%@page import="com.g4furnitureshop.dao.brandDAO"%>
<%@page import="com.g4furnitureshop.model.productlist"%>
<%@page import="com.g4furnitureshop.dao.productlistDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Liberty Furniture</title>
        <!--Bootstrap CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
        <!--Font Awesome CDN-->
        <script src="https://kit.fontawesome.com/f7c7209bb8.js" crossorigin="anonymous"></script>
        <!--Slick Slider-->
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <!--Custom CSS-->
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/Category-site.css" />
    </head>

    <body>
        <!--Header-->
        <div class="container">
            <section class="header mt-3 row">
                <jsp:include page="model/header.jsp"></jsp:include>
                </section>

                <!--Navigation bar-->
                <div class="row mt-3" style="background-color: #6983aa;">
                <jsp:include page="model/navbar.jsp"></jsp:include>
                </div>

                <!-- Main content -->
                <div class="row px-0">
                    <div id="row-tittle" class="col-12">
                    <%session.getAttribute("search");%>
                    <h4>RESULT FOR ${search}</h4>                            
                </div>               
                <%
                    String search = request.getParameter("search");
                    productlistDAO proDAO = new productlistDAO();
                    ArrayList<productlist> list = new ArrayList<>();
                    list = proDAO.findByName(search);
                    if (search != null) {
                        for (productlist item : list) {
                            out.println("<div class=\"col-12 col-sm-6 col-md-3 mt-3\">");
                            out.println("<div class=\"card\">");
                            out.println("<a href=product.jsp?product_id=" + item.getProduct_id() + ">");
                            out.println("<img class=\"img-prd card-img-top\" src=\"images/product/" + item.getImages() + "\" alt=\"Product\"/>");
                            out.println("</a>");
                            out.println("<div class=\"card-footer\">");
                            out.println("<p class=\"card-title content-product-h3\">" + item.getProduct_name() + "</p>");
                            out.println("<p class=\"card-text\">$");
                            out.println("<font class=\"price\">" + item.getPrice() + "</font></p>");
                            out.println("<span type=\"button\" class=\"btn btn-cart\">ADD TO CART</span>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                        }
                    } else {
                        out.println("<div>");
                        out.println("<h4>NO RESULT.</h4>");
                        out.println("</div>");
                        }%>

            </div>

            <!--Footer-->
            <section id="footer" class="row">
                <jsp:include page="model/footer.jsp"></jsp:include>
            </section>
        </div>

        <!--JavaScript-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script type="text/javascript" src="../js/main.js"></script>
    </body>

</html>