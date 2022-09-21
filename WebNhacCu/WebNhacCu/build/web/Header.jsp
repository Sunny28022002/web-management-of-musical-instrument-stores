<%-- 
    Document   : Header
    Created on : Jul 1, 2022, 1:22:53 PM
    Author     : DELL
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container" style="height: 12%">
    <div class="row">
        <div class="col-sm-2">
            <div class="logo">
                <a href=" # "><img class="logo_header " src="images/new5logo.jpg "></a>
            </div>
        </div>
        <div class="col-sm-10 ">
            <nav class="navbar navbar-expand-lg navbar-light bg-light ">
                <button class="navbar-toggler " type="button " data-toggle="collapse " data-target="#navbarNavAltMarkup " aria-controls="navbarNavAltMarkup " aria-expanded="false " aria-label="Toggle navigation ">
                    <span class="navbar-toggler-icon "></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarNavAltMarkup ">
                    <div class="navbar-nav ">
                        <a class="nav-item nav-link " href="HomeControl">Home</a>
                        <a class="nav-item nav-link " href="GuitarControl">Guitar</a>
                        <a class="nav-item nav-link " href="DrumControl">Drum</a>
                        <a class="nav-item nav-link" href="FluteControl" style="width: 195px;">Bamboo flute</a>
                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                            <a class="nav-item nav-link " href="ManagerProduct" style="width: 240px;">Manager Product</a>
                            <a class="nav-item nav-link" href="BillControl">Bill</a>
                            <a class="nav-item nav-link" href="staff">Staff</a>
                            <a class="nav-item nav-link" href="LogoutControl">Logout</a>
                            <a class="nav-item nav-link last " href="CartControl"><img src="images/cart.jpg "></a>
                            </c:if>
                            <c:if test="${sessionScope.acc.isStaff == 1}">
                            <a class="nav-item nav-link " href="LogoutControl">Logout</a>
                            <a class="nav-item nav-link last " href="CartControl"><img src="images/cart.jpg "></a>
                            </c:if>
                            <c:if test="${sessionScope.acc.isCus == 1}">
                            <a class="nav-item nav-link " href="LogoutControl">Logout</a>
                            <a class="nav-item nav-link last " href="CartControl"><img src="images/cart.jpg "></a>
                            <a class="nav-item nav-link last" href="ProfileControl"><img src="images/icon_user.jpg"></a>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                            <a class="nav-item nav-link " href="LoginControl">Login</a>
                            <a class="nav-item nav-link last " href="LoginControl"><img src="images/cart.jpg "></a>
                            </c:if>
                            <a class="nav-item nav-link last " href="search.jsp"><img src="images/search_icon.png"></a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>