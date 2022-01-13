<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>1:1문의 등록</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	
    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>

    <!-- Header Section Begin -->
    <header class="header">
        <%@ include file="../common/header.jsp" %>
    </header>
    <!-- Header Section End -->

    
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="../resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>고객 센터</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <br><br>
                        <div class="blog__sidebar__item">
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="notice.do?currentPage=1">공지사항</a></li>
                                <li><a href="onevsone.do?currentPage=1">1:1 문의</a></li>
                                <li><a href="faq.do">자주하는 질문</a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>고객센터</h4>
                            <div class="blog__sidebar__recent">
                                
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="../resources/img/blog/sidebar/sr-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h5> <strong>1800-1111</strong></h5>
                                    <span>평일, 토요일</span><br>
                                    <span>7:00 ~ 18:00</span><br>
                                    <span>공휴일 7:00 ~ 13:00</span><br>
                                    <span> (일요일 휴무)</span><br>
                                </div>
                               
                                
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Search By</h4>
                            <div class="blog__sidebar__item__tags">
                                <a href="#">Apple</a>
                                <a href="#">Beauty</a>
                                <a href="#">Vegetables</a>
                                <a href="#">Fruit</a>
                                <a href="#">Healthy Food</a>
                                <a href="#">Lifestyle</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div id="home" class="container tab-pane active"><br>
                        <h3><strong>1:1 문의</strong></h3>
                        <hr>
                        <br>
                        
                        <div id="home2" class="container">
                            <form method="post" action="${pageContext.request.contextPath}/board/saveBoard">
                                                           카테고리 
                                <br>
                                <div >
                                    <select>
                                        <option>교환문의</option>
                                        <option>환불문의</option>
                                    </select>
                                </div>
                                <br>
                                <br>
                                <div class="mb-3">
                                    <label for="title">제목</label>
                                    <input type="text" class="form-control" name="noticeTitle" placeholder="제목을 입력해 주세요">
                                </div>
                
                                <div class="mb-3">
                                    <label for="reg_id">사진 첨부</label>
                                    <input type="file" class="form-control" name="noticeImg" accept="image/png, image/gif, image/jpeg">
                                    png, gif, jpg 파일만 첨부 가능
                                </div>
                
                                <div class="mb-3">
                                    <label for="content">내용</label>
                                    <textarea class="form-control" rows="5" name=noticeContent placeholder="내용을 입력해 주세요" ></textarea>
                                </div>
                                
                                
                
                            
                
                            </form>
                
                            <div align="center">
                                <button type="button" class="btn btn-sm btn-primary active" id="btnSave">저장</button>
                                <button type="button" class="btn btn-sm btn-primary active" id="btnList">목록</button>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <%@ include file="../common/footer.jsp" %>
    </footer>
    <!-- Footer Section End -->

	<script src="../resources/js/jquery-3.3.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/jquery.nice-select.min.js"></script>
    <script src="../resources/js/jquery-ui.min.js"></script>
    <script src="../resources/js/jquery.slicknav.js"></script>
    <script src="../resources/js/mixitup.min.js"></script>
    <script src="../resources/js/owl.carousel.min.js"></script>
    <script src="../resources/js/main.js"></script>


</body>

</html>