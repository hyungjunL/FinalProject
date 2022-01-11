<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와구와구|고객센터</title>

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
		color: black;
		
	}
   
</style>
</head>
<body>
	<div id="outer">	
		<div id="header">
			<%@include file = "../common/header.jsp" %>
		</div>
		<br><br>
		<div id="body">
			<table  id="main">
	            <td width="20%" height="500px">
	            	<hr>
	            	<div>
	            		
		            	<ul class="nav flex-column">
						    <li class="nav-item">
						      &nbsp;&nbsp;&nbsp;<a class="menubar" href="${ pageContext.request.contextPath }/customercenter/notice.do">공지사항</a>
						    </li>
						    <li class="nav-item">
						      &nbsp;&nbsp;&nbsp;<a class="menubar" href="${ pageContext.request.contextPath }/customercenter/onevsone.do">1:1문의</a>
						    </li>
						    <li class="nav-item">
						      &nbsp;&nbsp;&nbsp;<a class="menubar" href="${ pageContext.request.contextPath }/customercenter/faq.do">FAQ</a>
						    </li>
						</ul>
					</div>
					
	                <hr>
					<div>
						<p>
							  &nbsp;&nbsp;&nbsp;고객센터<br>
							  &nbsp;&nbsp;&nbsp;<strong id="contact">1800-1111</strong><br>
				              &nbsp;&nbsp;&nbsp;평일, 토요일<br>
				              &nbsp;&nbsp;&nbsp;7:00 ~ 18:00<br>
				              &nbsp;&nbsp;&nbsp;공휴일 7:00 ~ 13:00<br>
				              &nbsp;&nbsp;&nbsp;(일요일 휴무)
	
						</p>
					</div>
	            </td>
	       
	            <td width="80%" height="500px">
	            	<div class="tab-content">
					    <div id="home" class="container tab-pane active"><br>
						    <h3><strong>1:1 문의하기</strong></h3>
						    <hr>
		            		<br>
		            		<table>
		            			<td width="25%">
		            				<h5><strong>[문의 내용]</strong></h5>
		            			</td>
		            			<td width="60%">
		            				<h5>배송 언제오나요???</h5>
		            			</td>
		            			<td width="15%">
		            				<h5>2021-12-12</h5>
		            			</td>
		            		</table>
		            		<hr>
		            		<div id="home2" class="container">
		            		
								<br>
								<h3>[택배배송 관련 안내]</h3>
								
								<br>
								<p>
								고객님 죄송합니다.<br><br>

								현재 CJ대한통운 파업의 여파로<br><br>
								
								택배배송 가능 여부는 배송안내 페이지 또는<br><br>
								
								주문서에서 확인하실 수 있습니다.
								</p>
							  
		            		
								<br>
								<h3>[답변]</h3>
								
								<br>
								<p>
								고객님 죄송합니다.<br><br>

								현재 CJ대한통운 파업의 여파로<br><br>
								
								택배배송 가능 여부는 배송안내 페이지 또는<br"C:/Users/user/Desktop/DB기획안.cell"><br>
								
								주문서에서 확인하실 수 있습니다.
								</p>
					
							</div>
							<br><br>
							<div>
								<hr>
			            		<table align="center">
				            		<tr>
				            			<td width="15%">
				            				<h6><strong>다음글</strong></h6>
				            			</td>
				            			<td width="70%">
				            				<h6>[안내]H.POINT 서버 점검 관련 서비스 일시제한(11/12~12~12)</h6>
				            			</td>
				            			<td width="15%">
				            				<h6>2021-12-12</h6>
				            			</td>
				            		</tr>
			            		</table>
			            		<hr>
			            		<table align="center">
				            		<tr>
				            			<td width="15%">
				            				<h6><strong>이전글</strong></h6>
				            			</td>
				            			<td width="70%">
				            				<h6>[안내]H.POINT 서버 점검 관련 서비스 일시제한(11/12~12~12)</h6>
				            			</td>
				            			<td width="15%">
				            				<h6>2021-12-12</h6>
				            			</td>
				            		</tr>
			            		</table>
			            		<hr>
							</div>
					    </div>
					   	
					    
					    
					</div>
	            </td>
			</table>
		</div>
	</div>
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
	
	
</body>
</html>