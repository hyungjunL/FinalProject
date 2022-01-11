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
		color:black;
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
						    <h3><strong>공지사항</strong></h3>
						    <hr>
						    <table >
		            			<td width="25%">&nbsp;&nbsp;&nbsp;전체 52개</td>
		            			<td width="36.5%"></td>
		            			<td>
		            				<form class="form-inline" action="/action_page.php">
						    			<input class="form-control mr-sm-2" type="text" placeholder="Search">
						    			<button class="btn btn-primary active" type="submit">Search</button>
					  				</form>
					  			</td>
		            		</table>
		            		<br>
		            		
		            		<div id="home2" class="container">
						
							  	<table class="table table-hover">
								   	<thead>
								   		
								   		<tr width="100%">
								    	    <th width="6%">No.</th>
								        	<th width="40%">제목</th>
								        	<th width="20%">등록일</th>
								        	<th width="15%">조회수</th>
								    	</tr>
								    </thead>
								    <tbody>
								    
								      	<c:choose>
											<c:when test="${ empty list }">
												<tr>
													<td colspan="5">조회 결과가 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="n" items="${ list }">
													<tr>
														<td>${ n.noticeNo }</td>
														<td>${ n.noticeTitle }</td>
														<td>${ n.createDate.substring(0, 10) }</td>
														<td>${ n.count }</td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
								   	</tbody>
								</table>
							</div>
					    </div>
					    <div id="menu1" class="container tab-pane fade"><br>
					      <h3><strong>1:1 문의</strong></h3>
					      <hr>
					      <br>
					      <table>
		            			<td width="25%">&nbsp;&nbsp;&nbsp;전체 52개</td>
		            			<td width="36.5%" align="right">
		            			
		            				<select name="type">
										<option value="BOARD_TITLE">제목</option>
										<option value="BOARD_WRITER">작성자</option>
									</select>
		            			</td>
		            			<td>
		            			
		            				<form class="form-inline" action="/action_page.php">
						    			<input class="form-control mr-sm-2" type="text" placeholder="Search">
						    			<button class="btn btn-primary active" type="submit">Search</button>
					  				</form>
					  			
					  			</td>
		            		</table>
		            		<br>
		            		<div class="container">
						
							  	<table class="table table-hover" >
								   	<thead>
								   		<tr width="100%">
								    	    <th width="10%">No.</th>
								        	<th width="15%">카테고리</th>
								        	<th width="40%">제목</th>
								        	<th width="10%">작성자</th>
								        	<th width="15%">작성일</th>
								        	<th width="10%">조회수</th>	
								    	</tr>
								    </thead>
								    <tbody>
								      	<tr>
								        	<td>8</td>
								        	<td>[환불문의]</td>
								        	<td>안녕하십니까? </td>
								        	<td>user01</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>7</td>
								        	<td>[교환문의]</td>
								        	<td>mary@example.com</td>
								        	<td>6</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>6</td>
								        	<td>[상품문의]</td>
								        	<td>july@example.com</td>
								        	<td>4</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>5</td>
								        	<td>[서비스문의]</td>
								        	<td>july@example.com</td>
								        	<td>9</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>4</td>
								        	<td>[환불문의]</td>
								        	<td>july@example.com</td>
								        	<td>8</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>3</td>
								        	<td>[교환문의]</td>
								        	<td>july@example.com</td>
								        	<td>5</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>2</td>
								        	<td>[서비스문의]</td>
								        	<td>july@example.com</td>
								        	<td>8</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								      	<tr>
								        	<td>1</td>
								        	<td>[기타문의]</td>
								        	<td>2021-12-31</td>
								        	<td>13</td>
								        	<td>2021-12-28</td>
								        	<td>7</td>
								      	</tr>
								   	</tbody>
								</table>
								<table width="100%">
		            			<td width="10.6%"></td>
		            			<td width="78.8%"></td>
		            			<td width="10.6%">
		            				<%-- <c:if test="${ loginUser == null }">
										<a class="btn btn-primary active" href="write.do">글작성</a>
									</c:if> --%>
		            				<a class="btn btn-primary active" href="write.do">글작성</a>
					  			</td>
		            		</table>
							</div>
					    </div>
					    
					</div>
	            </td>
			</table>
		</div>
	</div>
	<script>
		$(function(){
			$("#home2 table tbody tr").click(function(){
				var nno = $(this).children().eq(0).text();
				console.log(nno);
				location.href="${ pageContext.request.contextPath }/customercenter/detail.do?noticeNo=" + nno;
				
				// Context Root== Context Path == url 주소의 최상위(메인) 페이지 주소
				// 기존 스크립틀릿 방식 : request.getContextPath()
				// EL 방식 : pageContext.request.contextPath
				// JSTL 방식 : c:url 태그의 value 속성에 url값을 지정해서 쓰면 된다.
				// => 단, JSTL 같은 경우는 스크립트 태그 안에서 사용 불가
			});
		});	
	</script>
	
	
</body>
</html>