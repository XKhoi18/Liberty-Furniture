<%-- 
    Document   : Contact-us
    Created on : Sep 30, 2020, 9:24:59 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!--Bootstrap CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--Font Awesome CDN-->
    <script src="https://kit.fontawesome.com/f7c7209bb8.js" crossorigin="anonymous"></script>
    <!--Slick Slider-->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
    <!--Custom CSS-->
    <link rel="stylesheet" href="css/style.css">
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
            <ol class="breadcrumb px-0">
                <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Contact us</li>
            </ol>
        </nav>

        <!--Showrooms-->
        <div class="row">
            <div class="mapouter col-12">
                <div class="gmap_canvas"><iframe width="100%" height="400px" id="gmap_canvas" src="https://maps.google.com/maps?ll=10.773922,106.6894049&q=264A Nguyễn Thị Minh Khai&t=&z=14&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    <a href="https://techwithlove.com/"></a>
                </div>
            </div>
            <div class="showroom col-12 mt-3">
                <h5>OUR SHOWROOM</h5>
                <ul>
                    <li>
                        Address: 264A - 264B - 264C Nguyen Thi Minh Khai, Ward 6, District 3, Ho Chi Minh City, Vietnam.
                    </li>
                    <li>
                        Hotline: 18006867 - 02873016867
                    </li>
                    <li>
                        Open time: 08h00 - 21h30
                    </li>
                    <li>
                        Email: <a href="mailto:richfield_ntmk@mail.com?subject=your title&body=TThe message">libertyfurniture@mail.com</a>
                    </li>
                </ul>
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
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>
