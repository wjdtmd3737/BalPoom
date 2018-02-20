
$(document).ready(function(){
  var output = "";
  if($("#choice > option:selected").val()=='Bottom'){
    output +='<label>총 기 장 : </label> <input type="text" name="length" placeholder="Enter Your Cm"/><br>';
    output +='<label>허&nbsp;&nbsp;&nbsp;&nbsp; 리 : </label> <input type="text" name="waist" placeholder="Enter Your Cm"/><br>';
    output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 위 : </label><input type="text" name="rise" placeholder="Enter Your Cm"/><br>';
    output +='<label>허 벅 지 : </label> <input type="text" name="thigh" placeholder="Enter Your Cm"/><br>';
    output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 단 : </label><input type="text" name="hem" placeholder="Enter Your Cm"/><br>';
    output +='<input type="submit" value="Search" />';
    $("#fitple-form").append(output);
  }else if ($("#choice > option:selected").val()=='Outer') {
    output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="shoulder" placeholder="Enter Your Cm"/><br>';
    output +='<label>가슴단면 : </label> <input type="text" name="armhole" placeholder="Enter Your Cm"/><br>';
    output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="chest" placeholder="Enter Your Cm"/><br>';
    output +='<label>소매길이 : </label> <input type="text" name="sleeve" placeholder="Enter Your Cm"/><br>';
    output +='<label>총 기 장 : </label><input type="text" name="length" placeholder="Enter Your Cm"/><br>';
    output +='<input type="submit" value="Search" />';
    $("#fitple-form").append(output);
  }else if ($("#choice > option:selected").val()=='Top') {
    output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="shoulder" placeholder="Enter Your Cm"/><br>';
    output +='<label>가슴단면 : </label> <input type="text" name="armhole" placeholder="Enter Your Cm"/><br>';
    output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="chest" placeholder="Enter Your Cm"/><br>';
    output +='<label>소매길이 : </label> <input type="text" name="sleeve" placeholder="Enter Your Cm"/><br>';
    output +='<label>총 기 장 : </label><input type="text" name="length" placeholder="Enter Your Cm"/><br>';
    output +='<input type="submit" value="Search" />';
    $("#fitple-form").append(output);
  }
  // alert($("#choice > option:selected").val());
  $("#choice").change(function(){
    var output = "";
    if($("#choice > option:selected").val()=='Bottom'){
      output +='<label>총 기 장 : </label> <input type="text" name="length" placeholder="Enter Your Cm"/><br>';
      output +='<label>허&nbsp;&nbsp;&nbsp;&nbsp; 리 : </label> <input type="text" name="waist" placeholder="Enter Your Cm"/><br>';
      output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 위 : </label><input type="text" name="rise" placeholder="Enter Your Cm"/><br>';
      output +='<label>허 벅 지 : </label> <input type="text" name="thigh" placeholder="Enter Your Cm"/><br>';
      output +='<label>밑&nbsp;&nbsp;&nbsp;&nbsp; 단 : </label><input type="text" name="hem" placeholder="Enter Your Cm"/><br>';
      output +='<input type="submit" value="Search" />';
      $("#fitple-form").empty();
      $("#fitple-form").append(output);
    }else if ($("#choice > option:selected").val()=='Outer') {
      output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="shoulder" placeholder="Enter Your Cm"/><br>';
      output +='<label>가슴단면 : </label> <input type="text" name="armhole" placeholder="Enter Your Cm"/><br>';
      output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="chest" placeholder="Enter Your Cm"/><br>';
      output +='<label>소매길이 : </label> <input type="text" name="sleeve" placeholder="Enter Your Cm"/><br>';
      output +='<label>총 기 장 : </label><input type="text" name="length" placeholder="Enter Your Cm"/><br>';
      output +='<input type="submit" value="Search" />';
      $("#fitple-form").empty();
      $("#fitple-form").append(output);
    }else if ($("#choice > option:selected").val()=='Top') {
      output +='<label>어&nbsp;&nbsp;&nbsp;&nbsp; 깨 : </label> <input type="text" name="shoulder" placeholder="Enter Your Cm"/><br>';
      output +='<label>가슴단면 : </label> <input type="text" name="armhole" placeholder="Enter Your Cm"/><br>';
      output +='<label>암&nbsp;&nbsp;&nbsp;&nbsp; 홀 : </label><input type="text" name="chest" placeholder="Enter Your Cm"/><br>';
      output +='<label>소매길이 : </label> <input type="text" name="sleeve" placeholder="Enter Your Cm"/><br>';
      output +='<label>총 기 장 : </label><input type="text" name="length" placeholder="Enter Your Cm"/><br>';
      output +='<input type="submit" value="Search" />';
      $("#fitple-form").empty();
      $("#fitple-form").append(output);
    }
  });
});

function openNav() {
    document.getElementById("mySidenav").style.width = "500px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
