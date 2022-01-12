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
    <title>자주하는 질문</title>

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
    <style>
	
        #main{
            width: 100%;
        }
        #contact{
            font-size: 25px;
        }
        #outer{
            height : 1200px;
        }
       
          .answer {
               display: none;
            padding-bottom: 30px;
          }
          #faq-title {
               font-size: 25px;
          }
          .faq-content {
            border-bottom: 1px solid #e0e0e0;
          }
          .question {
            font-size: 19px;
            padding: 30px 0;
            cursor: pointer;
            border: none;
            outline: none;
            background: none;
            width: 100%;
            text-align: left;
          }
          .question:hover {
            color: #2962ff;
          }
          [id$="-toggle"] {
            margin-right: 15px;
          }
          .selectBox{
              height:20px;
          }
        .menubar{
            color:black;
        }
       
    </style>
    
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="../resources/img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="../resources/img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="../resources/img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="#"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="../resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li><a href="./shop-grid.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="./blog.html">Blog</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
                                <li><a href="notice.do">공지사항</a></li>
                                <li><a href="onevsone.do">1:1 문의</a></li>
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
                    <div id="menu2" class="container tab-pane active"><br>
                        <h3><strong>자주 묻는 질문</strong></h3>
                          <hr>
                          <br>
                          <table>
                            <td width="25%">&nbsp;&nbsp;&nbsp;전체 52개</td>
                            <td width="36.5%"></td>
                            <td>
                                <form class="form-inline" action="/action_page.php">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search..">
                                    <button class="btn btn-success" type="submit">Search</button>
                                  </form>
                              </td>
                        </table>
                          <div class="faq-content">
                            <button class="question" id="que-1"><span id="que-1-toggle">▷</span><span>wo9wo9는 무슨 의미입니까?</span></button>
                            <div class="answer" id="ans-1">wo9wo9는 와구와구 먹을 거리를 제공한다는 의미를 갖고 있습니다.</div>
                          </div>
                        <div class="faq-content">
                              <button class="question" id="que-2"><span id="que-2-toggle">▷</span><span>셀프 도시락이 무엇인가요?</span></button>
                              <div class="answer" id="ans-2">고객님이 원하는 반찬을 단계별로 고를 수 있는 기회를 제공해 주는 서비스입니다.</div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-3"><span id="que-3-toggle">▷</span><span>오프라인에서는 구매할 수 없나요?</span></button>
                              <div class="answer" id="ans-3">아쉽게도 저희 서비스는 온라인으로만 진행중입니다...</div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-4"><span id="que-4-toggle">▷</span><span>주문취소 어떻게 하나요?</span></button>
                              <div class="answer" id="ans-4">마이페이지 > 주문/배송조회 > 주문취소 가능한 상품의 주문취소 버튼 클릭하여 취소 사유와 함께 주문 취소 신청을 할 수 있습니다.
상품준비중 단계부터는 주문취소가 어려우니 참고부탁드립니다. </div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-5"><span id="que-5-toggle">▷</span><span>상품 반품 및 교환은 어떻게 하나요?</span></button>
                              <div class="answer" id="ans-5">주문 즉시 제작되는 Order made 상품 특성상 단순 변심으로 인한 반품/교환은 불가능합니다.
상품의 문제 발생으로 인한 반품/교환이 필요한 경우 그리팅 고객센터(1800-0700)으로 전화주시거나, 1:1문의 또는 카카오톡으로 문의하시면 신속하게 도움드리겠습니다.</div>
                        </div>
                        <div class="faq-content">
                              <button class="question" id="que-6"><span id="que-6-toggle">▷</span><span>반품 교환 배송비는 어떻게 처리되나요?</span></button>
                              <div class="answer" id="ans-6">
                              <p>
                              wo9ow9 상품 특성상 일부 상품에 한해서만 반품/교환이 가능하며, 단순 변심에 의한 반품/교환이 진행될 경우 고객님 부담의 배송비가 발생됩니다.<br>
                            ※ 반품/교환 배송비: 6,000원 (이미 배송비를 부담하신 경우에는 3,000원 발생)<br>
                            <br>
                            [고객님 부담의 경우]<br>
                            - 상품에 이상이 없거나 상품의 특성적인 부분의 경우<br>
                            - 단순변심에 의한 반품 및 교환하는 경우<br>
                            - 옵션 및 상품, 상품수량을 잘못 선택하여 주문했을 경우<br>
                            <br>
                            [wo9ow9 부담의 경우]<br>
                            - 수령한 상품이 파손/불량인 경우<br>
                            - 상품이 제공된 상품상세정보와 다른 경우<br>
                            - 주문한 상품과 다른 상품이 배송되거나 배송중 문제가 발생했을 경우<br></div>
                            </p>
                        </div>
                      	<br>
                      	<div id="paging" align="center" class="container">                 
									  <ul class="pagination justify-content-center">
									    <li class="page-item"><a class="page-link" href="">Previous</a></li>
									    <li class="page-item"><a class="page-link" href="">1</a></li>
									    <li class="page-item"><a class="page-link" href="">2</a></li>
									    <li class="page-item"><a class="page-link" href="">Next</a></li>
									  </ul>
								</div>
                    </div>  
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="../resources/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="../resources/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
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
	<!-- faq토글 기능  -->
	<script>
		const items = document.querySelectorAll('.question');
		
		function openCloseAnswer() {
		  const answerId = this.id.replace('que', 'ans');
		
		  if(document.getElementById(answerId).style.display === 'block') {
		    document.getElementById(answerId).style.display = 'none';
		    document.getElementById(this.id + '-toggle').textContent = '▷';
		  } else {
		    document.getElementById(answerId).style.display = 'block';
		    document.getElementById(this.id + '-toggle').textContent = '▽';
		  }
		}
		
		items.forEach(item => item.addEventListener('click', openCloseAnswer));
	</script>
</html>