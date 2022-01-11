<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    /* Make the image fully responsive */
    .carousel-inner img {
      width: 100%;
      height: 100%;
    }

    .col-sm-6 {
      text-align:center;
    }

    .nav-link {
      color:black;
    }
    .header a:hover {
      text-decoration: underline;
      color:black;
    }

    .card {
      display:inline-block;
      margin:10px;
      box-sizing: border-box;
    }
  </style>

  <style>
    .login {
      width:277px;
      margin:auto;
    }
  </style>
</head>
<body style="width:1000px; margin:auto">

<div class="header">
  <nav class="navbar navbar-expand-sm bg-light justify-content-end" style="font-size:12px;">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">로그인</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="#">회원가입</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">마이페이지</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="maincenter.do">고객센터</a>
      </li>
    </ul>
  </nav>
  
  <div class="header-log">
    <img src="../resources/baner.JPG" style="width:100%; height:100%;">
  </div>
</div>

<div class="nav" style="margin-top:10px;">
    <ul class="nav nav-tabs">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">카테고리</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="#">패키지</a>
            <a class="dropdown-item" href="#">저당식단</a>
            <a class="dropdown-item" href="#">칼로리식단</a>
            <br>
            <a class="dropdown-item" href="#">장수식단</a>
        </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">신상품</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">베스트</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">이벤트</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">패키지식단</a>
        </li>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <!-- <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li> -->
        <li class="nav-item">
            <form class="form-inline" action="/action_page.php">
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-primary active" type="submit">검색</button>
            </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">장바구니</a>
        </li>
      </ul>
</div>

</body>
</html>