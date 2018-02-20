$(document).ready(function () {
    $('#checkboxS').click(function () {
        if ($(this).is(':checked')) {
        	console.log(1);
            $("#sizeInsertS").show();
            $(".s_size1").append('<input type="text" class="sizetext s_sizetext" name="s_size1">');
            $(".s_size2").append('<input type="text" class="sizetext s_sizetext" name="s_size2">');
            $(".s_size3").append('<input type="text" class="sizetext s_sizetext" name="s_size3">');
            $(".s_size4").append('<input type="text" class="sizetext s_sizetext" name="s_size4">');
            $(".s_size5").append('<input type="text" class="sizetext s_sizetext" name="s_size5">');
            console.log(1);
        } else {
            $('.s_sizetext').remove();
            $("#sizeInsertS").hide();
        }
    });
    $('#checkboxM').click(function () {
        if ($(this).is(':checked')) {
            $("#sizeInsertM").show();
            $(".m_size1").append('<input type="text" class="sizetext m_sizetext" name="m_size1">');
            $(".m_size2").append('<input type="text" class="sizetext m_sizetext" name="m_size2">');
            $(".m_size3").append('<input type="text" class="sizetext m_sizetext" name="m_size3">');
            $(".m_size4").append('<input type="text" class="sizetext m_sizetext" name="m_size4">');
            $(".m_size5").append('<input type="text" class="sizetext m_sizetext" name="m_size5">');
        } else {
            $('.m_sizetext').remove();
            $("#sizeInsertM").hide();
        }
    });
    $('#checkboxL').click(function () {
        if ($(this).is(':checked')) {
            $("#sizeInsertL").show();
            $(".l_size1").append('<input type="text" class="sizetext l_sizetext" name="l_size1">');
            $(".l_size2").append('<input type="text" class="sizetext l_sizetext" name="l_size2">');
            $(".l_size3").append('<input type="text" class="sizetext l_sizetext" name="l_size3">');
            $(".l_size4").append('<input type="text" class="sizetext l_sizetext" name="l_size4">');
            $(".l_size5").append('<input type="text" class="sizetext l_sizetext" name="l_size5">');   

        } else {
            $('.l_sizetext').remove();
            $("#sizeInsertL").hide();
        }
    });
    $('#checkboxXL').click(function () {
        if ($(this).is(':checked')) {
            $("#sizeInsertXL").show();
            $(".xl_size1").append('<input type="text" class="sizetext xl_sizetext" name="xl_size1">');
            $(".xl_size2").append('<input type="text" class="sizetext xl_sizetext" name="xl_size2">');
            $(".xl_size3").append('<input type="text" class="sizetext xl_sizetext" name="xl_size3">');
            $(".xl_size4").append('<input type="text" class="sizetext xl_sizetext" name="xl_size4">');
            $(".xl_size5").append('<input type="text" class="sizetext xl_sizetext" name="xl_size5">');

        } else {
            $('.xl_sizetext').remove();
            $("#sizeInsertXL").hide();
        }
    });


    
    
    $("#select_type").change(function () {
    	
        $('#checkboxS').click(function () {
            if ($(this).is(':checked')) {
            	
                $("#sizeInsertS").show();
                $(".s_size1").append('<input type="text" class="sizetext s_sizetext" name="s_size1">');
                $(".s_size2").append('<input type="text" class="sizetext s_sizetext" name="s_size2">');
                $(".s_size3").append('<input type="text" class="sizetext s_sizetext" name="s_size3">');
                $(".s_size4").append('<input type="text" class="sizetext s_sizetext" name="s_size4">');
                $(".s_size5").append('<input type="text" class="sizetext s_sizetext" name="s_size5">');
                
            } else {
                $('.sizetext').remove();
                $("#sizeInsertS").hide();
            }
        });
        $('#checkboxM').click(function () {
            if ($(this).is(':checked')) {
            	
                $("#sizeInsertM").show();
                $(".m_size1").append('<input type="text" class="sizetext m_sizetext" name="m_size1">');
                $(".m_size2").append('<input type="text" class="sizetext m_sizetext" name="m_size2">');
                $(".m_size3").append('<input type="text" class="sizetext m_sizetext" name="m_size3">');
                $(".m_size4").append('<input type="text" class="sizetext m_sizetext" name="m_size4">');
                $(".m_size5").append('<input type="text" class="sizetext m_sizetext" name="m_size5">');
                
            } else {
                $('.m_sizetext').remove();
                $("#sizeInsertM").hide();
            }
        });
        $('#checkboxL').click(function () {
            if ($(this).is(':checked')) {
            	
                $("#sizeInsertL").show();
                $(".l_size1").append('<input type="text" class="sizetext l_sizetext" name="l_size1">');
                $(".l_size2").append('<input type="text" class="sizetext l_sizetext" name="l_size2">');
                $(".l_size3").append('<input type="text" class="sizetext l_sizetext" name="l_size3">');
                $(".l_size4").append('<input type="text" class="sizetext l_sizetext" name="l_size4">');
                $(".l_size5").append('<input type="text" class="sizetext l_sizetext" name="l_size5">');   
                
            } else {
                $('.l_sizetext').remove();
                $("#sizeInsertL").hide();
            }
        });
        $('#checkboxXL').click(function () {
            if ($(this).is(':checked')) {
            	
                $("#sizeInsertXL").show();
                $(".xl_size1").append('<input type="text" class="sizetext xl_sizetext" name="xl_size1">');
                $(".xl_size2").append('<input type="text" class="sizetext xl_sizetext" name="xl_size2">');
                $(".xl_size3").append('<input type="text" class="sizetext xl_sizetext" name="xl_size3">');
                $(".xl_size4").append('<input type="text" class="sizetext xl_sizetext" name="xl_size4">');
                $(".xl_size5").append('<input type="text" class="sizetext xl_sizetext" name="xl_size5">');
                
            } else {
                $('.xl_sizetext').remove();
                $("#sizeInsertXL").hide();
            }
        });
    });
});



