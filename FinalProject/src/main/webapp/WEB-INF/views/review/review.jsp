<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	


.table-side td {
	border: 1px solid lightgrey;
	width: 200px;
	height: 50px;
	text-indent: 10px
}
.table-side tr:hover {
	color: green;
}
.next-content1 {
	height: 50px;
	width: 80%;
	border-top: 1px solid lightgray;
	border-bottom: 1px solid lightgray;
	color: gray;
}
.next-content:hover {
	background: lightgray;
	cursor: pointer;
}
.next-content2 {
	height: 50px;
	width: 10%;
	border-top: 1px solid lightgray;
	border-bottom: 1px solid lightgray;
	color: gray;
}
#rewrap td{padding-bottom:10px; height:50px;}
#rewrap td:nth-of-type(2n){color:lightgray; font-size:0.8em; text-align:right;}
#rewrap tr:nth-of-type(1n){font-weight:bold}
#rewrap tr:nth-of-type(2n){border-bottom:0.5px solid lightgray; font-weight:normal}

</style>
</head>
<body>
	<div id="reply-area" >
					
		<div class="card mt-2">
			<div class="card-header p-2">
				
			</div>
			<div class="card-body" >
				<table width=100% id="rewrap">
					
			
				</table>
			</div>
		</div>
			
		</div>
		<br>
		
		<div class="reply">
			<div class="card-header">
				<i class="fa fa-comment fa"></i> REVEIWS 
			</div>
			
			<br>
	
			
			<div>
				<tr>
                    <td>
                        <textarea class="form-control" id="replyContent" cols="50" rows="3" style="resize:none;"></textarea>
                    </td>
                    <td>
                    	<button onclick="insertReply();" class="btn btn-dark mt-3 btn-sm" style="float:right">등록</button>
                    </td>
               	</tr>
			</div>
			
		</div>
		
		<!-- 댓글 -->
		<script>
		function selectReplyList() {
			$.ajax({
				url : "${ pageContext.request.contextPath }/reply/list.do",
				type : "get",
				success : function(result) {
					var str = "";
    				
    				for(var i = 0; i < result.length; i++) {
						str += "<tr>"
							 		+ "<td>" + result[i].noticeNo + "</td>"
							 		+ "<td>" + result[i].createDate + "</td>"
							 		+ "<td>" + result[i].noticeContent + "</td>"
							 + "</tr>";
					}
    				console.log(str);
    				$("#rewrap").html(str);
				},
				error : function() {
					console.log("댓글리스트용 ajax 실패");
				}
			});
    		
    	}function insertReply() {
        		
        		$.ajax({
        			url : "${ pageContext.request.contextPath }/reply/insert.do",
        			data : {
        				content : $("#replyContent").val() // text() 가 아닌 val() 로 가져와야 함
        				
        			},
        			type : "post",
        			success : function(result) {
        				
        				// result 값에 따라서 성공했으면 성공메시지 띄우기 alert()
        				if(result > 0) { 
        					
           					alert("댓글 작성에 성공했습니다.");
           					
           					selectReplyList(); 
							
           					$("#replyContent").val(""); // textarea 초기화
            			}
        				
        				
        			},
        			error : function() {
        				alert("댓글내용을 작성해주세요.");
        				console.log("댓글 삽입용 ajax 실패");
        			}
        		});
        		
            		
            		
            		
            	
        		
        	}
			
			$(function() {
        		
				selectReplyList(); 
        		
        	});
        	
        	// 댓글은 화면이 로딩되었을 때 곧바로 뿌려줘야 함 => window.onload => $(function)
        	
        	 
        	</script>

</body>
</html>