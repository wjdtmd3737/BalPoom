<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./css/sellerProductUpload.css?ver=1">
    <title>타이트으으으으을~~</title>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/clothesTypeedit.js?ver=1"></script>
    <script type="text/javascript" src="./js/sizeInfoedit.js?ver=5"></script>
    <script type="text/javascript" src="./js/fileupload.js"></script>
    <script language="javascript">  
            var oTbl;
            //Row 추가
            function insRow() {
            	
                var poll_length = document.getElementsByClassName("addtext").length;
                console.log(poll_length);
                if (poll_length > 9)
                {
                    alert("더이상 추가할수 없습니다.")
                    return false;
                }  

              oTbl = document.getElementById("addTable");
              var oRow = oTbl.insertRow();
              oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
              var oCell = oRow.insertCell();
            
              //삽입될 Form Tag
              var frmTag = "<input type=text class='addtext' name='colorOption"+poll_length+"'> ";
              frmTag += "<input type=button class='delbtn' value='X' onClick='removeRow()' style='cursor:pointer'>";
              oCell.innerHTML = frmTag;
            }
            //Row 삭제
            function removeRow() {
              oTbl.deleteRow(oTbl.clickedRowIndex);
            }
            </script>

            <script>
            $(document).ready(function(){ var fileTarget = $('.filebox .upload-hidden'); 
            fileTarget.on('change', function(){
                 // 값이 변경되면 
                 if(window.FileReader){
                  // modern browser 
                    var filename = $(this)[0].files[0].name;
                } 
                 else { // old IE 
                    var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
                }
                 // 추출한 파일명 삽입 
                 $(this).siblings('.upload-name').val(filename); 
                }); 
            }); 

            </script>

    <script>
    $(document).ready(function(){ var fileTarget = $('.dtfilebox .dtupload-hidden'); 
    fileTarget.on('change', function(){
         // 값이 변경되면 
         if(window.FileReader){
          // modern browser 
            var filename = $(this)[0].files[0].name;
        } 
         else { // old IE 
            var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
        }
         // 추출한 파일명 삽입 
         $(this).siblings('.dtupload-name').val(filename); 
        }); 
    }
    );
    
    function autoDate () {
    	var tDay = new Date();
    	var tMonth = tDay.getMonth()+1;
    	var tDate = tDay.getDate();
    	if ( tMonth < 10) tMonth = "0"+tMonth;
    	if ( tDate < 10) tDate = "0"+tDate;
    	document.getElementById("tDate").value = tDay.getFullYear()+tMonth+tDate;
     }

    // Multiple onload function created by: Simon Willison
    // http://simonwillison.net/2004/May/26/addLoadEvent/
    function addLoadEvent(func) {
      var oldonload = window.onload;
      if (typeof window.onload != 'function') {
        window.onload = func;
      } else {
        window.onload = function() {
          if (oldonload) {
            oldonload();
          }
          func();
        }
      }
    }

    addLoadEvent(function() {
      autoDate();
    });
    
    function valueShow(){
    	console.log(document.getElementById("input_img1").value);
    	console.log(document.getElementById("input_img2").value);
    	console.log(document.getElementById("input_img3").value);
    	console.log(document.getElementById("input_img4").value);
    	console.log(document.getElementById("input_img5").value);
    	console.log(document.getElementById("input_img6").value);
    	console.log(document.getElementById("input_img7").value);
    	console.log(document.getElementById("s_no").value);
    	
    }

    





    </script>
            


    
</head>
<body>
<div class="sellerProduct_wrapper">
    <div class="sellerProduct_header">
    <p class="sellerProduct_title1">상품등록_</p>
   	<p class="sellerProduct_titl2">자세한 상품등록 방법은 공지사항에서 확인해주세요</p>
</div>
<div id="clear"></div>
    <form name="options" method="post" action="insertProduct.do" enctype="multipart/form-data">
        <table class="optionBox">
            <tr>
                <td >상품타입</td>
                <td>
                    <select id="select_type" name="p_type">
                        <option selected>Outer</option>
                        <option>Top</option>
                        <option>Bottom</option>
                        <option>Shoes</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>상품명</td>
                <td><input class="productname" type="text" name="p_name"></td>
            </tr>
            <tr>
                <td>가격</td>
                <td><input class="price" type="text" name="p_price"><font style="font-size: 13px; margin-left: 5px">원</font></td>
            </tr>
            <tr>
                <td>종류</td>
                <td id="type_detail">
                
                </td>
          	</tr>
            <tr>
                <td>옵션</td>
                <td>
                    
                        <table id="addTable" class="addBox" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" border="0">
                            <tr>
                                <td><input type="text" class="addtext" name="colorOption" >
                                    <input class="addbtn" name="addButton" type="button" style="cursor:pointer" onClick="insRow()" value="추가"></td>
                            </tr>
                        </table>
                        
                    
                        
                </td>
            </tr>
            <tr>
                <td>사이즈</td>
                <td id="size">
                    
                </td>
            </tr>
            <tr class="sizeinfoBox">
                <td>사이즈정보</td>
                    <td >
                        <table id="sizeTable" class="sizeBox">
                            <tr id="sizetitle"></tr>
                            <tr id="sizeInsertS" style="display: none">
                                    <td>S</td>
                                    <td class="s_size1"></td>
                                    <td class="s_size2"></td>
                                    <td class="s_size3"></td>
                                    <td class="s_size4"></td>
                                    <td class="s_size5"></td>
                                </tr>
                                <tr id="sizeInsertM" style="display: none">
                                    <td >M</td>
                                    <td class="m_size1"></td>
                                    <td class="m_size2"></td>
                                    <td class="m_size3"></td>
                                    <td class="m_size4"></td>
                                    <td class="m_size5"></td>
                                </tr>
                                <tr id="sizeInsertL" style="display: none">
                                    <td>L</td>
                                    <td class="l_size1"></td>
                                    <td class="l_size2"></td>
                                    <td class="l_size3"></td>
                                    <td class="l_size4"></td>
                                    <td class="l_size5"></td>
                                </tr>
                                <tr id="sizeInsertXL" style="display: none">
                                    <td>XL</td>
                                    <td class="xl_size1"></td>
                                    <td class="xl_size2"></td>
                                    <td class="xl_size3"></td>
                                    <td class="xl_size4"></td>
                                    <td class="xl_size5" ></td>
                                </tr>
                        </table>
                    </td>
            </tr>
            
            <tr>
                <td>상품설명</td>
                <td><textarea style="width:600px;height: 300px;margin-top: 10px;margin-bottom: 10px;"></textarea></td>
            </tr>
            <tr>
                <td>노출이미지 (350x350)</td>
                <td>
                   <div id="imgbox">
                       <p class="imgbox_text"><b style="font-size: 14px;">&lt; 사진 1 &gt;</b> 상품 목록에서 기본으로 보이는 사진</p>
                        <div class="img_wrap"><img id="img1"/></div>
                        
                        <div class="filebox">
                        <input class="upload-name" value="파일선택" readOnly name="hoverImg_1">
                        <label for="input_img1">업로드</label>
                         <input type="file" id="input_img1" name="main_img1" class="upload-hidden"> 
                        </div>
                    </div>
                    
                    </div>
                    <div id="imgbox">
                            <p class="imgbox_text"><b style="font-size: 14px;">&lt; 사진 2 &gt;</b> 마우스 포인터를 올렸을때 보이는 사진</p>
                            <div class="img_wrap"><img id="img2"/></div>
                            <div class="filebox">
                                <input class="upload-name" value="파일선택" readOnly name="hoverImg_2">
                                <label for="input_img2">업로드</label>
                                 <input type="file" id="input_img2" name="main_img2" class="upload-hidden"> 
                                </div>
                        </div>
                    
                        
                    
                </td>
            </tr>
            <tr>
                <td>상품상세사진<br>(가로 800px 이하의 사진)</td>
                <td>
                    <div id="dtimgbox">
                         <div class="dtimg_wrap"><img id="img3"/></div> 
                         <div class="dtfilebox">
                         <input class="dtupload-name" value="파일선택" readOnly name="detailImg_1">
                         <label for="input_img3">업로드</label>
                          <input type="file" id="input_img3" name="detail_img1" class="dtupload-hidden"> 
                         </div>
                     </div>

                     <div id="dtimgbox">
                         <div class="dtimg_wrap"><img id="img4"/></div>
                         <div class="dtfilebox">
                         <input class="dtupload-name" value="파일선택" readOnly name="detailImg_2">
                         <label for="input_img4">업로드</label>
                          <input type="file" id="input_img4" name="detail_img2" class="dtupload-hidden"> 
                         </div>
                     </div>

                     <div id="dtimgbox">
                        <div class="dtimg_wrap"><img id="img5"/></div>
                        <div class="dtfilebox">
                        <input class="dtupload-name" value="파일선택" readOnly name="detailImg_3">
                        <label for="input_img5">업로드</label>
                         <input type="file" id="input_img5" name="detail_img3" class="dtupload-hidden"> 
                        </div>
                    </div>

                    <div id="dtimgbox">
                        <div class="dtimg_wrap"><img id="img6"/></div>
                        <div class="dtfilebox">
                        <input class="dtupload-name" value="파일선택" readOnly name="detailImg_4">
                        <label for="input_img6">업로드</label>
                         <input type="file" id="input_img6" name="detail_img4" class="dtupload-hidden"> 
                        </div>
                    </div>

                    <div id="dtimgbox">
                        <div class="dtimg_wrap"><img id="img7"/></div>
                        <div class="dtfilebox">
                        <input class="dtupload-name" value="파일선택" readOnly name="detailImg_5">
                        <label for="input_img7">업로드</label>
                         <input type="file" id="input_img7" name="detail_img5" class="dtupload-hidden"> 
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <!-- <button type="button" onclick="valueShow()">valueShow</button> -->
        <center><input type="submit" class="submitBtn" style="cursor:pointer" value="등록"></center>
        <input name="regdate" type="hidden" id="tDate"><input id="s_no" type="hidden" name="s_no" value="${authSeller.s_no }">
    </form>
</div>
</body>
</html>