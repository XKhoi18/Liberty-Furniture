<%-- 
    Document   : index
    Created on : Sep 30, 2020, 8:46:00 AM
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
</head>

<body>   
    <div class="container">
        <!--Header-->
        <section class="header mt-3 row">
            <jsp:include page="model/header.jsp"></jsp:include>
        </section>

        <!--Navigation bar-->
        <div class="row mt-3" style="background-color: #6983aa;">
            <jsp:include page="model/navbar.jsp"></jsp:include>
        </div>

        <!--slider one-->
        <div class="row">

            <!--Slider one-->
            <div class="col-12 px-0">
                <div class="site-slider">
                    <div class="slider-one">
                        <img src="images/Carousel/carousel6.jpg" class="img-fluid" alt="" />
                        <img src="images/Carousel/carousel7.jpg" class="img-fluid" alt="" />
                        <img src="images/Carousel/carousel4.jpg" class="img-fluid" alt="" />
                    </div>
                    <div class="slider-btn">
                        <span class="prev position-top">
                            <i class="fas fa-chevron-left"></i>
                        </span>
                        <span class="next position-top right-0">
                            <i class="fas fa-chevron-right"></i>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <!--Body area-->
        <section class="body-area">
            <!--Slider two-->
            <div class="row">
                <div id="row-tittle" class="col-12">
                    <h4>Office chairs</h4>
                </div>
            </div>

            <div class="site-slider-two px-0">
                <div class="row slider-two text-center">
                    <%  
                        productlistDAO proDAO = new productlistDAO();
                        ArrayList<productlist> list = new ArrayList<>();
                        list = proDAO.findALL();
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
        <!--Style product-->
            <div class="row mt-3">
                <div class="col-12">
                    <h3 style="text-align: center; color: #2196f3;">Choose your style</h3>
                </div>
            </div>

            <div class="row mt-3">
                <div class="style-image col-12 col-md-6 px-0">
                    <a>
                        <img src="images/style-product/6.jpg">
                    </a>
                </div>
                <div class="col-12 col-md-6 pr-0">
                    <h4>Mid-Century Modern</h4>
                    <p>If sleek lines, geometric shapes, and minimal clutter is what you crave, then Mid-Century Modern style is your interior design match. This throwback style embraces mixed materials - like wood, plastic, and metal - and low-profile furniture
                        with tapered legs to create a look that is trendy, yet timeless. A Mid-Century color palette is flexible, so you can keep it simple with neutral colors or add pops of pumpkin orange, avocado green, or mustard yellow to enhance
                        the retro vibe.</p>
                </div>

                <div class="style-image col-12 col-md-6 px-0 mt-3">
                    <a>
                        <img src="images/style-product/1.jpeg">
                    </a>
                </div>
                <div class="col-12 col-md-6 pr-0 mt-3">
                    <h4>Rustic</h4>
                    <p>There’s beauty in places that are a little rough around the edges. If you love the look of a tranquil lakeside cabin or the cozy feeling of an alpine lodge, bring those hardy and comforting elements home with rustic decor. Southwestern
                        patterns and natural wood textures define this space, while a deep warm color palette creates the atmosphere of a comforting retreat. Add a modern touch using streamlined leather furniture that contrasts with the lovingly worn
                        decor.
                    </p>
                </div>

                <div class="style-image col-12 col-md-6 px-0 mt-3">
                    <a>
                        <img src="images/style-product/7.jpg">
                    </a>
                </div>
                <div class="col-12 col-md-6 pr-0 mt-3">
                    <h4>Shabby Chic</h4>
                    <p>Shabby Chic style blends the beauty and charm of an English country cottage with the quaint familiarity of a farmhouse homestead. Antiqued furniture, whitewashed surfaces, and distressed metals are embellished with burlap and lace
                        details, floral prints, and a pastel color palette help create a Shabby Chic design. The eclectic charm of mismatched furniture and vintage decor keeps the look a unique, heirloom quality. Pale shades of sage green, mint, rose
                        quartz, peony pink, taupe, and white keep the space light and airy.</p>
                </div>
            </div>
        </section>

        <!--Footer-->
        <section id="footer" class="row">
            <jsp:include page="/model/footer.jsp"></jsp:include>
        </section>
    </div>

    <!--JavaScript-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>
