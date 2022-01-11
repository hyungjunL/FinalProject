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
			<table id="main">
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
						    <h3><strong>공지사항</strong></h3>
						    <hr>
		            		<br>
		            		<table >
		            			<td width="10%">
		            				<h5><strong>공지</strong></h5>
		            			</td>
		            			<td width="75%">
		            				<h5>[
		            						<c:choose>
											<c:when test="${notice.categoryNum == 1 }">
												배송
											</c:when>
											<c:when test="${notice.categoryNum == 2 }">
												서비스
											</c:when>
											<c:when test="${notice.categoryNum == 3 }">
												결제
											</c:when>
											
										</c:choose>] ${notice.noticeTitle}</h5>
		            			</td>
		            			<td width="15%">
		            				<h5>${ notice.createDate.substring(0, 10) }</h5>
		            			</td>
		            		</table>
		            		<hr>
		            		<div id="home2" class="container">
		            		
								<br>
								<h3>
		            						[<c:choose>
											<c:when test="${notice.categoryNum == 1 }">
												배송
											</c:when>
											<c:when test="${notice.categoryNum == 2 }">
												서비스
											</c:when>
											<c:when test="${notice.categoryNum == 3 }">
												결제
											</c:when>
											
										</c:choose>관련 안내] </h3>
								
								<br>
								<p>
								${notice.noticeContent}
								</p>
							  	<div border="1" width="50" height="40"></div>
							</div>
							<br><br>
							<div>
								<hr>
			            		<br>
			            		<table>
				            		<tr>
				            			<td width="15%">
				            				<h6><strong>다음글</strong></h6>
				            			</td>
				            			<td width="70%">
				            				<h6 id="next"><c:choose>
											<c:when test="${nextNotice.categoryNum == 1 }">
												[배송]
											</c:when>
											<c:when test="${nextNotice.categoryNum == 2 }">
												[서비스]
											</c:when>
											<c:when test="${nextNotice.categoryNum == 3 }">
												[결제]
											</c:when>
											
										</c:choose>${ nextNotice.noticeTitle }</h6>
				            			</td>
				            			<td width="15%">
				            				${ nextNotice.createDate.substring(0, 10) }
				            			</td>
				            		</tr>
			            		</table>
			            		<hr>
			            		<table>
				            		<tr>
				            			<td width="15%">
				            				<h6><strong>이전글</strong></h6>
				            			</td>
				            			<td width="70%">
				            				<h6 id="before">
					            				<c:choose>
												<c:when test="${beforeNotice.noticeNo >= 1 }">
													<c:if test="${beforeNotice.categoryNum == 1 }">
														[배송]
													</c:if>
													<c:if test="${beforeNotice.categoryNum == 2 }">
														[서비스]
													</c:if>
													<c:if test="${beforeNotice.categoryNum == 3 }">
														[결제]
													</c:if>	
													
													${ beforeNotice.noticeTitle }
												</c:when>
												
												</c:choose>
											</h6>
				            			</td>
				            			<td width="15%">
				            				${ beforeNotice.createDate.substring(0, 10) }
				            			</td>
				            		</tr>
			            		</table>
			            		<hr>
							</div>
					    </div>
					    <div align="center">
					    	<button id="list" class="btn btn-primary active">목록</button>
					    </div>
					   	
					    <br><br>
					    
					</div>
	            </td>
			</table>
		</div>
	</div>
	<script>
		$(function(){
			$("#before").click(function(){
				var nno = ${notice.noticeNo} - 1;
				location.href="${ pageContext.request.contextPath }/customercenter/detail.do?noticeNo=" + nno;
				
				
			});
		});	
		
		$(function(){
			$("#next").click(function(){
				var nno = ${notice.noticeNo} + 1;
				
				location.href="${ pageContext.request.contextPath }/customercenter/detail.do?noticeNo=" + nno;	
				
				
				
				
			});
		});
		
		$(function(){
			$("#list").click(function(){
				
				location.href="${ pageContext.request.contextPath }/customercenter/notice.do";
				
				
			});
		});
	</script>
	
	
</body>
</html>