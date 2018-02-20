<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품문의</title>
    <link rel="stylesheet" href="./css/getBoard_Inquiry.css?ver=11"> 
	 <script type="text/javascript">

function doImgPop(img){ 
    img1= new Image(); 
    img1.src=(img); 
    imgControll(img); 
   } 
     
   function imgControll(img){ 
    if((img1.width!=0)&&(img1.height!=0)){ 
       viewImage(img); 
     } 
     else{ 
        controller="imgControll('"+img+"')"; 
        intervalID=setTimeout(controller,20); 
     } 
   }
   
   function viewImage(img){ 
    W=img1.width; 
    H=img1.height; 
    O="width="+W+",height="+H+",scrollbars=yes"; 
    imgWin=window.open("","",O); 
    imgWin.document.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
    imgWin.document.write("<body topmargin=0 leftmargin=0>");
    imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
    imgWin.document.close();
   }
</script>
</head>
<body>
    
        <br><br><br>
        <div id="getBoardInquiry_wrapper">
            <p class="pibTitle" >상품 문의</p>
            <form method="post" name="replyInsertForm">
                <table>
                    <tr><td class="td1">제목</td><td class="td1">${Inquery.inqu_title}</td></tr>
                    <tr><td>작성자</td><td>${Inquery.m_no}</td></tr>
                    <tr><td>글번</td><td><input class="inquno" type="text" value="${Inquery.inqu_no}" name="inqu_no" readOnly/></td></tr>
                    <tr><td>작성일</td><td>${Inquery.inqu_reg}</td></tr>
                    <tr><td colspan="2" class="boardContent">${Inquery.inqu_content}</td></tr>
                    
                    <tr><td colspan="2" class="boardImg"><img src="/biz/uploadimg/${Inquery.m_id }/${Inquery.fileName_date}.png" style="cursor:pointer" onerror="this.style.display='none'" onclick="doImgPop(this.src)"></td></tr>
                    
                    
                    
                    
                </table>
            <a href="myPageGetBoardList.do?m_no=${authMember.m_no }"><p class="listbtn" style="cursor: pointer">목록</p></a>
            <c:if test="${authMember.m_no ==Inquery.m_no }">
            <a href="updateInquery.jsp?inqu_no=${Inquery.inqu_no}"><p class="listbtn" style="cursor: pointer">수정</p></a>
            <a href="deleteInquery.do?inqu_no=${Inquery.inqu_no}"><p class="listbtn" style="cursor: pointer">삭제</p></a>
            </c:if>
			<br>          
            <c:if test="${ empty authMember }">
            <div class="insert_reply">
            	<textarea rows="" cols="" name="inqu_reply_content" class="reply_content" required="required" disabled="disabled">로그인한 사람에게만 댓글 쓰기를 허용합니다.</textarea>
            	<button class="listbtn btnReply" style="cursor: pointer" onclick="loginAlert()">댓글달기</button>
            </div>
            </c:if>
            <c:if test="${! empty authMember }">
            <div class="insert_reply">
            	<textarea rows="" cols="" name="inqu_reply_content" class="reply_content" required="required" ></textarea>
            	<button name="insertButton" class="listbtn btnReply" style="cursor: pointer">댓글달기</button>
            </div>
            </c:if>
            </form>
            
            <table class="replyList">
            	
            	<jsp:include page="getInquery_replyList.jsp"/>
            	 
			</table>
        </div>
        
        
        <script>
        	function loginAlert(){
        		alert("로그인을 해주세요!");
        	}
        </script>
        
    

    
</body>
</html>