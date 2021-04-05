<%-- 
    Document   : product
    Created on : Oct 24, 2020, 1:41:27 PM
    Author     : Admin
--%>

<%@page import="com.g4furnitureshop.model.producttype"%>
<%@page import="com.g4furnitureshop.dao.producttypeDAO"%>
<%@page import="com.g4furnitureshop.model.brand"%>
<%@page import="java.util.ArrayList"%>
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

                <!--Breadcrumb-->
                <nav aria-label="breadcrumb">
                    <% 
                    int id = Integer.parseInt(request.getParameter("product_id"));
                    productlistDAO pDAO = new productlistDAO();
                    productlist rs = pDAO.findByID(id);    
                    producttypeDAO ptDAO = new producttypeDAO();
                    producttype rst = ptDAO.findByID(rs.getProducttype_id());
                %>
                <ol class="breadcrumb px-0">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>                      
                    <li class="breadcrumb-item"><a href='chairtype.jsp?producttype_id=<%out.print(rs.getProducttype_id());%>'><%out.print(rst.getProducttype_name());%></a></li>  
                    <li class="breadcrumb-item active" aria-current="page"><%out.print(rs.getProduct_name());%></li>
                </ol>

                <!--Chosen Product-->
                <div class="row mt-3 px-3">

                    <!--Product Image-->
                    <div class="col-12 col-xl-6">
                        <img class="img-prd" src="images/product/<%out.print(rs.getImages());%>" width="100%" height="100%">
                    </div>

                    <!--Product Information-->
                    <div class="col-12 col-xl-6">
                        <h2 class="content-product-h3"><%out.print(rs.getProduct_name());%></h2>
                        <% 
                        brandDAO pbDAO = new brandDAO();
                        brand rsb = pbDAO.findByID(rs.getBrand_id());
                        %>
                        <p>Product from <a href='chairbrand.jsp?brand_id=<%out.print(rs.getBrand_id());%>'><%out.print(rsb.getBrand_name());%></a></p>
                        <h1>Today $
                            <font class="price"><%out.print(rs.getPrice());%></font>
                        </h1>
                        <p>Pay it off in up to 24 months with the Overstock Store Credit Card.</p>
                        <p><%out.print(rs.getProduct_detail());%></p>
                        
                        <button type="button" id="addtocart-btn" class="btn btn-primary btn-cart">Add to Cart</button>
                        <button type="button" id="favorites-btn" class="btn btn-light" onclick="Comingsoon()">Favorites</button>
                    </div>
                </div>

                <!--Slider two-->
                <div class="row">
                    <div id="row-tittle" class="col-12">
                        <h4>Office chairs</h4>
                    </div>
                </div>

                <div class="site-slider-two px-0">
                    <div class="row slider-two text-center">
                    <%  ArrayList<productlist> list2 = new ArrayList<>();
                        list2 = pDAO.findByTypeID("OC");
                        for (productlist item : list2) {
                            out.println("<div class=\"col-2 product pt-4\">");
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
                        }%>                     
                    </div>

                    <div class="slider-btn">
                        <span class="prev position-top">
                            <i class="fas fa-chevron-left fa-2x text-secondary"></i>
                        </span>
                        <span class="next position-top right-0">
                            <i class="fas fa-chevron-right fa-2x text-secondary"></i>
                        </span>
                    </div>
                </div>

                <div class="row">
                    <div id="row-tittle" class="col-12">
                        <h4>Christopher Guy's products</h4>
                    </div>
                </div>

                <!--Slider three-->
                <div class="site-slider-three px-0">
                    <div class="row slider-three text-center">
                        <%  productlistDAO proDAO = new productlistDAO();
                    ArrayList<productlist> list = new ArrayList<>();
                    list = proDAO.findByBrandID("CG");
                    for (productlist item : list) {
                        out.println("<div class=\"col-2 product pt-4\">");
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
                    }%>          
                    </div>
                    <div class="slider-btn">
                        <span class="prev position-top">
                            <i class="fas fa-chevron-left fa-2x text-secondary"></i>
                        </span>
                        <span class="next position-top right-0">
                            <i class="fas fa-chevron-right fa-2x text-secondary"></i>
                        </span>
                    </div>
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

