<%-- 
    Document   : Bill
    Created on : Jul 12, 2022, 3:50:05 PM
    Author     : DELL
--%>

<%-- 
    Document   : HomePage_ad
    Created on : Jun 21, 2022, 5:19:08 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>HighShop</title>
        <link rel="stylesheet" href="/css/style2.css">
        <script src="/js/cart.js"></script>

        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/style2.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link rel="icon" type="image/x-icon" href="images/new4logo.jpg">
    </head>

    <body>

        <!--start header-->
        <div class="header_section header_main" style="height: 135px; width: 1519px;">
            <jsp:include page="Header.jsp"></jsp:include>
            </div>
            <!--start header-->
            <main>
                <!--start nav-->
                <div class="basket">
                    <div class="basket-module">
                    </div>
                    <div class="basket-labels">
                        <ul>
                            <li style="width: 35%;" class="item item-heading">Bill ID</li>
                            <li style="width: 15%;" class="price">Invoice date</li>
                            <li class="quantity">Staff ID</li>
                            <li style="margin-right: 40px;" class="subtotal">Customer ID</li>
                            <li class="">Total bill</li>
                        </ul>
                    </div>
                <c:forEach items="${list}" var="l">
                    <div class="basket-product">
                        <div class="detail">
                            <ul>
                                <li style="width: 35%;" class="item item-heading">${l.bill_id}</li>
                                <li style="width: 15%;" class="price">${l.purchaseDate}</li>
                                <li class="quantity">${l.staff_id}</li>
                                <li style="margin-right: 84px; margin-left: -35px;" class="subtotal">${l.customer_id}</li>
                                <li class="">${l.total}$</li>
                            </ul>
                        </div>

                        <div class="remove" style="position: relative; top:-3px;">
                            <a href="DetailBill?id=${l.bill_id}">DETAIL</a>
                        </div>
                        <hr  width="100%" size="5px" align="right" color="#d8d8d8" /> 
                    </div>
                </c:forEach>
            </div>
        </main>

        <jsp:include page="Footer.jsp"></jsp:include>
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });
            });


            $('#myCarousel').carousel({
                interval: false
            });

            //scroll slides on swipe for touch enabled devices

            $("#myCarousel").on("touchstart", function (event) {

                var yClick = event.originalEvent.touches[0].pageY;
                $(this).one("touchmove", function (event) {

                    var yMove = event.originalEvent.touches[0].pageY;
                    if (Math.floor(yClick - yMove) > 1) {
                        $(".carousel").carousel('next');
                    } else if (Math.floor(yClick - yMove) < -1) {
                        $(".carousel").carousel('prev');
                    }
                });
                $(".carousel").on("touchend", function () {
                    $(this).off("touchmove");
                });
            });
        </script>
    </body>

</html>
