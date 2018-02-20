
$(document).ready(function(){
  var output = "";
  if($("#header_choice > option:selected").val()=='Bottom'){
	output +='<input type="text" name="p_type" value="Bottom" hidden/>'
    output +='<label>총 기 장 : </label> <input type="text" name="s1" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>허&nbsp;&nbsp;&nbsp;&nbsp; 리 : </label> <input type="text" name="s2" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 위 : </label><input type="text" name="s3" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>허 벅 지 : </label> <input type="text" name="s4" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 단 : </label><input type="text" name="s5" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<input type="submit" value="Search" />';
    $("#header_fitple-form").append(output);
  }else if ($("#header_choice > option:selected").val()=='Outer') {
	output +='<input type="text" name="p_type" value="Outer" hidden/>'
    output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="s1" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>가슴단면 : </label> <input type="text" name="s2" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="s3" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>소매길이 : </label> <input type="text" name="s4" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>총 기 장 : </label><input type="text" name="s5" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<input type="submit" value="Search" />';
    $("#header_fitple-form").append(output);
  }else if ($("#header_choice > option:selected").val()=='Top') {
	output +='<input type="text" name="p_type" value="Top" hidden/>'
    output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="s1" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>가슴단면 : </label> <input type="text" name="s2" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="s3" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>소매길이 : </label> <input type="text" name="s4" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<label>총 기 장 : </label><input type="text" name="s5" placeholder="Enter Your Cm" maxlength="4" required/><br>';
    output +='<input type="submit" value="Search" />';
    $("#header_fitple-form").append(output);
  }
  // alert($("#header_choice > option:selected").val());
  $("#header_choice").change(function(){
    var output = "";
    if($("#header_choice > option:selected").val()=='Bottom'){
      output +='<input type="text" name="p_type" value="Bottom" hidden/>'
      output +='<label>총 기 장 : </label> <input type="text" name="s1" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>허&nbsp;&nbsp;&nbsp;&nbsp; 리 : </label> <input type="text" name="s2" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 위 : </label><input type="text" name="s3" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>허 벅 지 : </label> <input type="text" name="s4" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 단 : </label><input type="text" name="s5" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<input type="submit" value="Search" />';
      $("#header_fitple-form").empty();
      $("#header_fitple-form").append(output);
    }else if ($("#header_choice > option:selected").val()=='Outer') {
      output +='<input type="text" name="p_type" value="Outer" hidden/>'
      output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="s1" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>가슴단면 : </label> <input type="text" name="s2" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="s3" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>소매길이 : </label> <input type="text" name="s4" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>총 기 장 : </label><input type="text" name="s5" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<input type="submit" value="Search" />';
      $("#header_fitple-form").empty();
      $("#header_fitple-form").append(output);
    }else if ($("#header_choice > option:selected").val()=='Top') {
      output +='<input type="text" name="p_type" value="Top" hidden/>'
      output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="s1" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>가슴단면 : </label> <input type="text" name="s2" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="s3" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>소매길이 : </label> <input type="text" name="s4" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<label>총 기 장 : </label><input type="text" name="s5" placeholder="Enter Your Cm" maxlength="4" required/><br>';
      output +='<input type="submit" value="Search" />';
      $("#header_fitple-form").empty();
      $("#header_fitple-form").append(output);
    }
  });
});

function openNav() {
    document.getElementById("mySidenav").style.width = "500px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
