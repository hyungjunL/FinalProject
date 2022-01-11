<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>체크 박스 테스트 결과</h1>
	
	<p>
		수량 : ${ fruit.size() } 개 <br>
		장바구니 목록 <br>
		<c:choose>
			<c:when test="${ empty fruit }">
				장바구니가 비었습니다.
			</c:when>
			<c:otherwise>
				<ul>
					<c:forEach var="f" items="${ fruit }">
						<li>${ f }</li>
					</c:forEach>					
				</ul>	
			</c:otherwise>
		</c:choose>
		
	</p>
	
	
</body>
</html>