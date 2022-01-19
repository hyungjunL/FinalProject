<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <header class="header">
        <%@ include file="../common/main_top.jsp" %>
    </header>


        <div class="container" align="center">
            <div class="loginForm">
                <h1>로그인</h1>
  
                <form id="login-form" action="/wo9wo9/member/login.do" method="post">
                    <input id="memberId" name="memberId" class="form-control" type="text" placeholder="아이디를 입력해주세요" maxlength="15" required><br>
                    <input id="memberPwd" name="memberPwd" class="form-control" type="password" placeholder="비밀번호를 입력해주세요" maxlength="15" required><br>

                    <p><a href="${pageContext.request.contextPath}/member/findId.do" style="color:black;">아이디 찾기</a> | <a href="${pageContext.request.contextPath}/member/findPwd.do" style="color:black;">비밀번호 찾기</a></p>
                
                    <br>
                    
                    <button type="submit" class="btn btn-success" > 로그인</button><br>
                    <button id="joinBtn" class="btn btn-outline-success" onClick="javascript:goJoin()">회원가입</button>
        
                </form>
            </div>
        </div>


        <script>
            function goJoin(){
                let f = document.createElement('form');
                f.setAttribute('method', 'get');
                f.setAttribute('action', 'join.do');
                document.body.appendChild(f);
                f.submit();
            }

        </script>



    <%@ include file="../common/main_bottom.jsp" %>


</body>
</html>