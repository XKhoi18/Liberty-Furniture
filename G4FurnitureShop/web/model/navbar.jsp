<%-- 
    Document   : Navbar
    Created on : Sep 30, 2020, 10:36:57 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script language="JavaScript" type="text/javascript" src="js/main.js"></script>

<nav class="navbar navbar-expand-xl navbar-dark col-12 py-xl-2">
    <button style="background-color: rgba(0, 132, 255, 0.788); padding: 1%; font-size: 90%;" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home page</a>
            </li>
            <li class="nav-item dropdown active" style="margin-left: 50px;">
                <a class="nav-link dropdown-toggle" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Available furniture</a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <jsp:include page="/producttypeServlet"></jsp:include> 
                    </div>
            </li>
                <li class="nav-item dropdown active" style="margin-left: 50px;">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Brands</a>
                    <div class="dropdown-menu" aria-labelledby="dropdownId">
                        <jsp:include page="/brandServlet"></jsp:include> 
                    </div>
                </li>
                    <li class="nav-item active" style="margin-left: 50px;">
                        <a class="nav-link" href="Contact-us.jsp">Contact us</a>
                    </li>
                        <% if (session.getAttribute("username") != null) {%>
                        <li class="nav-item dropdown active" style="margin-left: 50px;">
                            <a class="nav-link dropdown-toggle" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Welcome ${username}.</a>
                            <div class="dropdown-menu" aria-labelledby="dropdownId">
                                <a class="dropdown-item" href="#">Your Profile</a>                               
                                <form action="logoutServlet" method="post">
                                <input class="dropdown-item" type="submit" value="Log Out">
                            </div>
                        </li>
                        <%} if (session.getAttribute("username") == null) {%>
                            <li class="nav-item active" style="margin-left: 50px;">
                                <a class="nav-link" href="log_in.jsp">Log in</a>                                                                                     
                            </li>
                        <%}%>
        </ul>
    </div>
</nav>
        
