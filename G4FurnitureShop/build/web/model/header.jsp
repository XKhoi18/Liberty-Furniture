<%-- 
    Document   : header
    Created on : Sep 30, 2020, 9:25:49 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="logo col-3 col-xl-2 px-0 d-none d-md-block">
    <img src="images/logoLF.png" width="140px" height="140px" style="float: left;">
</div>
<div class="logo col-2 px-0 d-block d-md-none">
    <img src="images/logo-mobile.png" width="40px" height="35px" style="float: left;">
</div>

<div class="search-container col-5 col-md-6 col-xl-7 px-0 pt-md-5">   
    <form class="searchbar" action="searchServlet" method="get">
        <input type="text" placeholder="Search..." name="search" id="search" style="float: left;" class="col-11 col-md-11 col-xl-11">
        <button type="submit" class="col-1 col-md-1 col-xl-1">
            <i class="fa fa-search"></i>
        </button>
    </form>
</div>

<div class="addtocart col-3 col-md-2 px-0 pt-md-5">
    <form class="shopping-cart">
        <button id="cart" type="button">
            <i class="fa fa-shopping-cart"></i>
        </button>
        <label>Cart</label>
    </form>
</div>

<div id="myModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Cart</h5>
            <span class="close">&times;</span>
        </div>
        <div class="modal-body">
            <div class="cart-row">
                <span class="cart-item cart-header cart-column">Products</span>
                <span class="cart-price cart-header cart-column">Price</span>
                <span class="cart-quantity cart-header cart-column">Quantity</span>
            </div>
            <div class="cart-items">
            </div>
            <div class="cart-total">
                <strong class="cart-total-title">Total:</strong>
                <span class="cart-total-price">$ 0</span>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary close-footer">Close</button>
            <%
                if (session.getAttribute("sername") == null) {
                    response.sendRedirect("log_in.jsp");
                }
            %>
            <button type="button" class="btn btn-primary order">Payment</button>
        </div>
    </div>
</div>
