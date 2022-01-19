<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/main-top.css">
</head>

<body>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6"></div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="${ pageContext.request.contextPath }/customercenter/notice.do?currentPage=1">고객센터</a>
                                <a href="#">마이페이지</a>
                                <a href="#">회원가입</a>
                            </div>
                            <div class="header__top__right__auth">
                                <c:choose>
                                		<c:when test="${ !empty loginUser }"><!-- 로그인 되었을때 -->
                                			<a>${ loginUser.memberName } 님</a>
                                		</c:when>
                                		<c:otherwise><!-- 로그인이 안되었다면 -->
                                			<a href="${pageContext.request.contextPath}/member/login.do">Login</a>
                                		</c:otherwise>
                                	</c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="text-align: center;">
            <div class="header__logo">
                <a href="./index.html"><img src="../resources/logo.png" alt=""></a>
            </div>

                <div>
                    <nav class="header__menu">
                        <ul>
                            <li>
                                <i class="fa fa-bars"></i>
                                <span class="categoryName"><b>카테고리</b></span>

                                <ul class="header__menu__dropdown" style="border: 1px solid lightgray;">
                                    <li><a href="./shop-details.html" class="categoryHover categoryBold" style="color: black; text-decoration: underline;"><b>패키지 도시락</b></a></li>
                                    <li><a href="./shoping-cart.html" class="categoryHover" style="color: black;">저당식당</a></li>
                                    <li><a href="./checkout.html" class="categoryHover" style="color: black;">칼로리식단</a></li>
                                    <li><a href="./checkout.html" class="categoryHover" style="color: black;">장수식단</a></li>
                                    <li><a href="./blog-details.html" class="categoryHover categoryBold" style="color: black; text-decoration: underline;"><b>셀프 도시락</b></a></li>
                                </ul>
                            </li>
                            <li><a href="./shop-grid.html" class="a">신상품</a></li>
                            <li><a href="./shop-grid.html" class="a">베스트</a></li>
                            <li><a href="${ pageContext.request.contextPath }/customercenter/event.do" class="a">이벤트</a></li>
                            <li><a href="./blog.html" class="a">패키지식단</a></li>
                            <li>
                                <form class="form-inline" action="/action_page.php">
                                    <input class="form-control mr-sm-2 inp_search" type="text" placeholder="Search">
                                    <a href="#"><img src="../resources/img/search.png" alt="" style="width: 30px; height: 30px;"></a>
                                </form>
                            </li>
                            <li>
                                <div class="header__top__right__auth">
                                    <a href="#"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>

    </header>
    <!-- Header Section End -->

    </body>
    <script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>
</html>