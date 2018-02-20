$(document).ready(function(){
    var output = "";
    var output2 = "";
    if($("#select_type > option:selected").val()=='Outer'){
      output +='<input class="checkbtn" type="checkbox" id="checkboxS" name="size_s" value="S"> S &nbsp;&nbsp;&nbsp;&nbsp;';
      output +='<input class="checkbtn" type="checkbox" id="checkboxM" name="size_m" value="M"> M &nbsp;&nbsp;&nbsp;&nbsp;';
      output +='<input class="checkbtn" type="checkbox" id="checkboxL" name="size_l" value="L"> L &nbsp;&nbsp;&nbsp;&nbsp;';
      output +='<input class="checkbtn" type="checkbox" id="checkboxXL" name="size_xl" value="XL"> XL';
      output1 ='<td>cm<br>(센티미터)</td><td>어깨넓이</td><td>가슴단면</td><td>암홀</td><td>소매길이</td><td>총기장</td>';
      output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Coat">코트 &nbsp;&nbsp;&nbsp;&nbsp;';
      output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Jacket">자켓 &nbsp;&nbsp;&nbsp;&nbsp;';
      output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Bubble">패딩 &nbsp;&nbsp;&nbsp;&nbsp;';
      output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="AndSoOn">기타 &nbsp;&nbsp;&nbsp;&nbsp;';
      $("#type_detail").append(output2);
      $("#size").append(output);
      $("#sizetitle").append(output1);
      
    }else if ($("#select_type > option:selected").val()=='Top') {
       output +='<input class="checkbtn" type="checkbox" id="checkboxS" name="size_s" value="S"> S &nbsp;&nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" id="checkboxM" name="size_m" value="M"> M &nbsp;&nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" id="checkboxL" name="size_l" value="L"> L &nbsp;&nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" id="checkboxXL" name="size_xl" value="XL"> XL';
        output1 ='<td>cm<br>(센티미터)</td><td>어깨넓이</td><td>가슴단면</td><td>암홀</td><td>소매길이</td><td>총기장</td>';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="TShirt">티셔츠 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Shirt">셔츠 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Hoody">후드 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="AndSoOn">기타 &nbsp;&nbsp;&nbsp;&nbsp;';
        $("#type_detail").append(output2);
      $("#size").append(output);
      $("#sizetitle").append(output1);
    }else if ($("#select_type > option:selected").val()=='Bottom') {
       output +='<input class="checkbtn" type="checkbox" id="checkboxS" name="size_s" value="S"> S &nbsp;&nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" id="checkboxM" name="size_m" value="M"> M &nbsp;&nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" id="checkboxL" name="size_l" value="L"> L &nbsp;&nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" id="checkboxXL" name="size_xl" value="XL"> XL';
        output1 ='<td>cm<br>(센티미터)</td><td>기장</td><td>허리</td><td>밑위</td><td>허벅지</td><td>밑단</td>';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Jeans">청바지 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Slacks">슬랙스 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Cotton">면바지 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Training">운동복 &nbsp;&nbsp;&nbsp;&nbsp;';
        $("#type_detail").append(output2);
      $("#size").append(output);
      $("#sizetitle").append(output1);
    }else if ($("#select_type > option:selected").val()=='Shoes') {
        output +='<input class="checkbtn" type="checkbox" name="size0" value="240"> 240 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size1" value="245"> 245 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size2" value="250"> 250 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size3" value="255"> 255 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size4" value="260"> 260 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size5" value="265"> 265 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size6" value="270"> 270 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size7" value="275"> 275 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size8" value="280"> 280 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size9" value="285"> 285 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size10" value="290"> 290';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Running">러닝화 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Sneakers">스니커즈 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Sports">운동화 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Classic">구두 &nbsp;&nbsp;&nbsp;&nbsp;';
        $("#type_detail").empty();
        $("#type_detail").append(output2);
        $("#size").append(output);
      }
    // alert($("#header_choice > option:selected").val());
    
    
    $("#select_type").change(function(){
      var output = "";
      var output2 = "";
      if($("#select_type > option:selected").val()=='Outer'){
         output +='<input class="checkbtn" type="checkbox" id="checkboxS" name="size_s" value="S"> S &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxM" name="size_m" value="M"> M &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxL" name="size_l" value="L"> L &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxXL" name="size_xl" value="XL"> XL';
          output1 ='<td>cm<br>(센티미터)</td><td>어깨넓이</td><td>가슴단면</td><td>암홀</td><td>소매길이</td><td>총기장</td>';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Coat">코트 &nbsp;&nbsp;&nbsp;&nbsp;';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Jacket">자켓 &nbsp;&nbsp;&nbsp;&nbsp;';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Bubble">패딩 &nbsp;&nbsp;&nbsp;&nbsp;';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="AndSoOn">기타 &nbsp;&nbsp;&nbsp;&nbsp;';
          output3 ='<td>S</td><td><input type="text" name="s_size1" class="sizetext sizeText1" ></td><td><input type="text" name="s_size2" class="sizetext sizeText1" ></td><td><input type="text" name="s_size3" class="sizetext sizeText1" ></td><td><input type="text" name="s_size4" class="sizetext sizeText1" ></td><td><input type="text" name="s_size5" class="sizetext sizeText1" ></td>';
          output4 ='<td>M</td><td><input type="text" name="m_size1" class="sizetext sizeText1" ></td><td><input type="text" name="m_size2" class="sizetext sizeText1" ></td><td><input type="text" name="m_size3" class="sizetext sizeText1" ></td><td><input type="text" name="m_size4" class="sizetext sizeText1" ></td><td><input type="text" name="m_size5" class="sizetext sizeText1" ></td>';
          output5 ='<td>L</td><td><input type="text" name="l_size1" class="sizetext sizeText1" ></td><td><input type="text" name="l_size2" class="sizetext sizeText1" ></td><td><input type="text" name="l_size3" class="sizetext sizeText1" ></td><td><input type="text" name="l_size4" class="sizetext sizeText1" ></td><td><input type="text" name="l_size5" class="sizetext sizeText1" ></td>';
          output6 ='<td>XL</td><td><input type="text" name="xl_size1" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size2" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size3" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size4" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size5" class="sizetext sizeText1" ></td>';
          $("#type_detail").empty();
        $("#type_detail").append(output2);

        
        $("#size").empty();
        $("#size").append(output);
        $("#sizetitle").empty();
        $("#sizetitle").append(output1);
        $("#sizeInsertS").empty();
        $("#sizeInsertS").append(output3);
        $("#sizeInsertM").empty();
        $("#sizeInsertM").append(output4);
        $("#sizeInsertL").empty();
        $("#sizeInsertL").append(output5);
        $("#sizeInsertXL").empty();
        $("#sizeInsertXL").append(output6);

        status = $("#sizeInsertS").css("display", "none");
        status = $("#sizeInsertM").css("display", "none");
        status = $("#sizeInsertL").css("display", "none");
        status = $("#sizeInsertXL").css("display", "none");
        
      }else if ($("#select_type > option:selected").val()=='Top') {
         output +='<input class="checkbtn" type="checkbox" id="checkboxS" name="size_s" value="S"> S &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxM" name="size_m" value="M"> M &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxL" name="size_l" value="L"> L &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxXL" name="size_xl" value="XL"> XL';
          output1 ='<td>cm<br>(센티미터)</td><td>어깨넓이</td><td>가슴단면</td><td>암홀</td><td>소매길이</td><td>총기장</td>';        
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="TShirt">티셔츠 &nbsp;&nbsp;&nbsp;&nbsp;';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Shirt">셔츠 &nbsp;&nbsp;&nbsp;&nbsp;';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Hoody">후드 &nbsp;&nbsp;&nbsp;&nbsp;';
          output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="AndSoOn">기타 &nbsp;&nbsp;&nbsp;&nbsp;';
          output3 ='<td>S</td><td><input type="text" name="s_size1" class="sizetext sizeText1" ></td><td><input type="text" name="s_size2" class="sizetext sizeText1" ></td><td><input type="text" name="s_size3" class="sizetext sizeText1" ></td><td><input type="text" name="s_size4" class="sizetext sizeText1" ></td><td><input type="text" name="s_size5" class="sizetext sizeText1" ></td>';
          output4 ='<td>M</td><td><input type="text" name="m_size1" class="sizetext sizeText1" ></td><td><input type="text" name="m_size2" class="sizetext sizeText1" ></td><td><input type="text" name="m_size3" class="sizetext sizeText1" ></td><td><input type="text" name="m_size4" class="sizetext sizeText1" ></td><td><input type="text" name="m_size5" class="sizetext sizeText1" ></td>';
          output5 ='<td>L</td><td><input type="text" name="l_size1" class="sizetext sizeText1" ></td><td><input type="text" name="l_size2" class="sizetext sizeText1" ></td><td><input type="text" name="l_size3" class="sizetext sizeText1" ></td><td><input type="text" name="l_size4" class="sizetext sizeText1" ></td><td><input type="text" name="l_size5" class="sizetext sizeText1" ></td>';
          output6 ='<td>XL</td><td><input type="text" name="xl_size1" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size2" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size3" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size4" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size5" class="sizetext sizeText1" ></td>';
          
          $("#type_detail").empty();
        $("#type_detail").append(output2);
        
        $("#size").empty();
        $("#size").append(output);
        $("#sizetitle").empty();
        $("#sizetitle").append(output1);
        $("#sizeInsertS").empty();
        $("#sizeInsertS").append(output3);
        $("#sizeInsertM").empty();
        $("#sizeInsertM").append(output4);
        $("#sizeInsertL").empty();
        $("#sizeInsertL").append(output5);
        $("#sizeInsertXL").empty();
        $("#sizeInsertXL").append(output6);

        status = $("#sizeInsertS").css("display", "none");
        status = $("#sizeInsertM").css("display", "none");
        status = $("#sizeInsertL").css("display", "none");
        status = $("#sizeInsertXL").css("display", "none");
      }else if ($("#select_type > option:selected").val()=='Bottom') {
         output +='<input class="checkbtn" type="checkbox" id="checkboxS" name="size_s" value="S"> S &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxM" name="size_m" value="M"> M &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxL" name="size_l" value="L"> L &nbsp;&nbsp;&nbsp;&nbsp;';
          output +='<input class="checkbtn" type="checkbox" id="checkboxXL" name="size_xl" value="XL"> XL';
        output1 ='<td>cm<br>(센티미터)</td><td>기장</td><td>허리</td><td>밑위</td><td>허벅지</td><td>밑단</td>';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Jeans">청바지 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Slacks">슬랙스 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Cotton">면바지 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Training">운동복 &nbsp;&nbsp;&nbsp;&nbsp;';
        output3 ='<td>S</td><td><input type="text" name="s_size1" class="sizetext sizeText1" ></td><td><input type="text" name="s_size2" class="sizetext sizeText1" ></td><td><input type="text" name="s_size3" class="sizetext sizeText1" ></td><td><input type="text" name="s_size4" class="sizetext sizeText1" ></td><td><input type="text" name="s_size5" class="sizetext sizeText1" ></td>';
        output4 ='<td>M</td><td><input type="text" name="m_size1" class="sizetext sizeText1" ></td><td><input type="text" name="m_size2" class="sizetext sizeText1" ></td><td><input type="text" name="m_size3" class="sizetext sizeText1" ></td><td><input type="text" name="m_size4" class="sizetext sizeText1" ></td><td><input type="text" name="m_size5" class="sizetext sizeText1" ></td>';
        output5 ='<td>L</td><td><input type="text" name="l_size1" class="sizetext sizeText1" ></td><td><input type="text" name="l_size2" class="sizetext sizeText1" ></td><td><input type="text" name="l_size3" class="sizetext sizeText1" ></td><td><input type="text" name="l_size4" class="sizetext sizeText1" ></td><td><input type="text" name="l_size5" class="sizetext sizeText1" ></td>';
        output6 ='<td>XL</td><td><input type="text" name="xl_size1" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size2" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size3" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size4" class="sizetext sizeText1" ></td><td><input type="text" name="xl_size5" class="sizetext sizeText1" ></td>';
        
        $("#type_detail").empty();
        $("#type_detail").append(output2);
        
        $("#size").empty();
        $("#size").append(output);
        $("#sizetitle").empty();
        $("#sizetitle").append(output1);
        $("#sizeInsertS").empty();
        $("#sizeInsertS").append(output3);
        $("#sizeInsertM").empty();
        $("#sizeInsertM").append(output4);
        $("#sizeInsertL").empty();
        $("#sizeInsertL").append(output5);
        $("#sizeInsertXL").empty();
        $("#sizeInsertXL").append(output6);
        status = $("#sizeInsertS").css("display", "none");
        status = $("#sizeInsertM").css("display", "none");
        status = $("#sizeInsertL").css("display", "none");
        status = $("#sizeInsertXL").css("display", "none");
      }else if ($("#select_type > option:selected").val()=='Shoes') {
        output +='<input class="checkbtn" type="checkbox" name="size0" value="240"> 240 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size1" value="245"> 245 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size2" value="250"> 250 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size3" value="255"> 255 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size4" value="260"> 260 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size5" value="265"> 265 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size6" value="270"> 270 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size7" value="275"> 275 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size8" value="280"> 280 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size9" value="285"> 285 &nbsp;&nbsp;&nbsp;';
        output +='<input class="checkbtn" type="checkbox" name="size10" value="290"> 290';
        
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Running">러닝화 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Sneakers">스니커즈 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Sports">운동화 &nbsp;&nbsp;&nbsp;&nbsp;';
        output2 +='<input class="radiobtn" type="radio" name="p_type_detail" value="Classic">구두 &nbsp;&nbsp;&nbsp;&nbsp;';
        
        $("#size").empty();
        $("#size").append(output);
        $("#type_detail").empty();
        $("#type_detail").append(output2);

        status = $("#sizeInsertS").css("display", "none");
        status = $("#sizeInsertM").css("display", "none");
        status = $("#sizeInsertL").css("display", "none");
        status = $("#sizeInsertXL").css("display", "none");
        
      }
    });
  });