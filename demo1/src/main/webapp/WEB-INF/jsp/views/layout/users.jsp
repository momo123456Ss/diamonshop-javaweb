<%-- 
    Document   : index
    Created on : Jun 11, 2023, 6:06:27 PM
    Author     : HOME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title><decorator:title default="Master-Layout"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap styles -->
        <link href="<c:url value = "assets/users/css/bootstrap.css" />" rel="stylesheet"/>
        <!-- Customize styles -->
        <link href="<c:url value = "assets/users/style.css" />" rel="stylesheet"/>
        <!-- font awesome styles -->
        <link href= "<c:url value = "assets/users/font-awesome/css/font-awesome.css" />" rel="stylesheet">
        <!-- Favicons -->
        <link rel="shortcut icon" href="<c:url value = "assets/users/ico/favicon.ico" />">
    </head>
    <body>
        <!-- 
                Upper Header Section 
        -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="topNav">
                <div class="container">
                    <div class="alignR">
                        <div class="pull-left socialNw">
                            <a href="#"><span class="icon-twitter"></span></a>
                            <a href="#"><span class="icon-facebook"></span></a>
                            <a href="#"><span class="icon-youtube"></span></a>
                            <a href="#"><span class="icon-tumblr"></span></a>
                        </div>
                        <a class="active" href="index.html"> <span class="icon-home"></span> Home</a> 
                        <a href="#"><span class="icon-user"></span> My Account</a> 
                        <a href="register.html"><span class="icon-edit"></span> Free Register </a> 
                        <a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
                        <a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
                    </div>
                </div>
            </div>
        </div>

        <!--
        Lower Header Section 
        -->
        <div class="container">
            <div id="gototop"> </div>
            <%@include file="/WEB-INF/jsp/views/layout/users/header.jsp" %>
            
            <decorator:body />
            
            <%@include file="/WEB-INF/jsp/views/layout/users/footer.jsp" %>
        </div>
        <!-- /container -->
        
            <%@include file="/WEB-INF/jsp/views/layout/users/payment.jsp" %>

        <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="<c:url value="assets/users/js/jquery.js"/>"></script>
        <script src="<c:url value="assets/users/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="assets/users/js/jquery.easing-1.3.min.js"/>"></script>
        <script src="<c:url value="assets/users/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
        <script src="<c:url value="assets/users/js/shop.js"/>"></script>
    </body>
</html>