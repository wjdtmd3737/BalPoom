<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품후기</title>
    <link rel="stylesheet" href="./css/getReview.css?ver=2">
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
            <p class="pibTitle" >상품 후기</p>
            
                <table>
                	<tr><td>NO ${Review.re_no}</td><td > </td></tr>
                    <tr><td >제목</td><td >${Review.re_title}</td></tr>
                    <tr><td>작성자</td><td>${Review.m_no}</td></tr>
                    
					<tr><td>작성일</td><td>${Review.reg_date}</td></tr>
                    <tr><td colspan="2" class="boardContent">${Review.re_content}</td></tr>
                    <tr><td colspan="2" class="boardImg"><img src="/biz/uploadimg/${Review.m_id }/${Review.fileName_date}.png" style="cursor:pointer" onerror="this.style.display='none'" onclick="doImgPop(this.src)"></td></tr>
                </table>
            <a href="getReviewList.do?r_no=${Review.r_no }"><p class="listbtn" style="cursor: pointer">목록</p></a>
            <c:if test="${authMember.m_no ==Review.m_no }">
            <a href="updateReview.jsp?re_no=${Review.re_no}"><p class="listbtn"  style="cursor: pointer">수정</p></a>
            <a href="deleteReview.do?re_no=${Review.re_no}&r_no=${Review.r_no}"><p class="listbtn" style="cursor: pointer">삭제</p></a>
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