
var sel_file;

$(document).ready(function(){
    $("#input_img1").on("change", handleimgFileSelect1);
    $("#input_img2").on("change", handleimgFileSelect2);
    $("#input_img3").on("change", handleimgFileSelect3);
    $("#input_img4").on("change", handleimgFileSelect4);
    $("#input_img5").on("change", handleimgFileSelect5);
    $("#input_img6").on("change", handleimgFileSelect6);
    $("#input_img7").on("change", handleimgFileSelect7);

});

function handleimgFileSelect1(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img1").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}
function handleimgFileSelect2(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img2").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}

function handleimgFileSelect3(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img3").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}

function handleimgFileSelect4(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img4").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}

function handleimgFileSelect5(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img5").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}

function handleimgFileSelect6(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img6").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}

function handleimgFileSelect7(e){
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")){
            alert("확장자는 이미지 확장자만 가능합니다.");
        }

        sel_file=f;

        var reader = new FileReader();
        reader.onload = function(e){
            $("#img7").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
        
    });
}



