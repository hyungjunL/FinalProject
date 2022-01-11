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
						    <h3><strong>1:1 문의</strong></h3>
						    <hr>
						    <br>
		            		
		            		<div id="home2" class="container">
		            			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
									<div >
										카테고리 : 
										<select>
											<option>교환문의</option>
											<option>환불문의</option>
											
										</select>
									</div>
									<br>
									<div class="mb-3">
										<label for="title">제목</label>
										<input type="text" class="form-control" name="noticeTitle" placeholder="제목을 입력해 주세요">
									</div>
					
									<div class="mb-3">
										<label for="reg_id">작성자</label>
										<input type="text" class="form-control" name="noticeWriter" placeholder="이름을 입력해 주세요">
									</div>
					
									<div class="mb-3">
										<label for="content">내용</label>
										<textarea class="form-control" rows="5" name=noticeContent placeholder="내용을 입력해 주세요" ></textarea>
									</div>
									
									
					
								
					
								</form>
					
								<div align="center" >
									<button type="button" class="btn btn-sm btn-primary active" id="btnSave">저장</button>
									<button type="button" class="btn btn-sm btn-primary active" id="btnList">목록</button>
								</div>
								
							</div>
					    </div>
					   	
					    
					    
					</div>
	            </td>
			</table>
		</div>
	</div>
	
	
</body>
</html>