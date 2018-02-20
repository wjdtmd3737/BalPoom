<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품문의</title>
    <link rel="stylesheet" href="./css/getBoard_Inquiry.css?ver=2">
</head>
<body>
    
        <br><br><br>
        <div id="getBoardInquiry_wrapper">
            <p class="pibTitle" >상품 후기</p>
            
                <table>
                    <tr><td class="td1">제목</td><td class="td1">${Review.re_title}</td></tr>
                    <tr><td>작성자</td><td>${Review.m_no}</td></tr>
                    <tr><td>글번</td><td><input type="text" value="${Review.re_no}" name="re_no" readOnly/></td></tr>

                    <tr><td colspan="2" class="boardContent">${Review.re_content}</td></tr>
                </table>
            <a href="myPageGetBoardList.do?m_no=${authMember.m_no }"><p class="listbtn" style="cursor: pointer">목록</p></a>
            <c:if test="${authMember.m_no ==Review.m_no }">
            <a href="updateReview.jsp?re_no=${Review.re_no}"><p class="listbtn" style="cursor: pointer">수정</p></a>
            <a href="deleteReviewMypage.do?re_no=${Review.re_no}"><p class="listbtn" style="cursor: pointer">삭제</p></a>
            </c:if>
			<br>          
                      
            
            <!-- <table class="replyList">
            	<jsp:include page="getInquery_replyList.jsp"/>
            	
 
			</table>  -->
        </div>
        <script>
        	function loginAlert(){
        		alert("로그인을 해주세요!");
        	}
        </script>
        
    

    
</body>
</html>