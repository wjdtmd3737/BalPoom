<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	var inqu_no = '${Inquery.inqu_no}'

	$('[name=insertButton]').click(function() {
		var insertData = $('[name=replyInsertForm]').serialize();
		insertReplyData(insertData);
	});

	function replyList() {
		$.ajax({
			url : '/biz/getInquery_replyList.do',
			type : 'get',
			data : {'inqu_no' : inqu_no},
			success : function(data) {
				var a = '';
				$.each(data, function(key, value) {					
		           	a+='<div class="reply_place">';
		           	a+='<div class="writer_name">'+value.inqu_no+'</div>';
		           	a+='<div class="replyContent'+value.inqu_reply_no+'" id="reply_content">';
		           	a+='<p class="content_P">'+ value.inqu_reply_content + '</p>';
		           	a+='</div>';
		           	a+='<div class="button_place'+value.inqu_reply_no+'" id="button_place">';
		           	a+='<button class="replyBtn" type="button" onclick="replyDelete('+ value.inqu_reply_no + ')">삭제</button>';
		           	a+='<button class="replyBtn" type="button" onclick="replyUpdate('+value.inqu_reply_no+',\''+value.inqu_reply_content+'\');">수정</button>';
		           	a+='</div>';
				a+='</div>';
				});

				$(".replyList").html(a);

			}
		})
	}

	function insertReplyData(insertData) {
		$.ajax({
			url : '/biz/insertInquery_reply.do',
			type : 'post',
			data : insertData,
			success : function(data) {

			}
		});
	}

	function replyDelete(no) {
		$.ajax({
			url:'/biz/deleteInquery_reply.do',
			type:'get',
			data:{'inqu_reply_no': no},
			success:function(){
				replyList();
			}
		});

	}
	
	function replyUpdate(no, content){
	    var a ='';
	    var b = '';
	    console.log(1);
	    
	    a += '<div class="input-group">';
	    a += '<input type="text" class="form-control" name="content_'+no+'" value="'+content+'"/>';
	    a += '</div>';
	    console.log(2);    
	    b+='<span class="input-group-btn"><button class="replyBtn" type="button" onclick="commentUpdateProc('+no+');">수정완료</button> </span>'
	    $('.replyContent'+no).html(a);
	    $('.button_place'+no).html(b);
	    console.log(3);
	}
	
	function commentUpdateProc(no){
	    var updateContent = $('[name=content_'+no+']').val();
	    
	    $.ajax({
	        url : '/biz/updateInquery_reply.do',
	        type : 'get',
	        data : {'inqu_reply_content' : updateContent, 'inqu_reply_no' : no},
	        success : function(data){
	        	replyList();
	        }
	    });
	}

	$(document).ready(function() {

		replyList(); //페이지 로딩시 댓글 목록 출력
	});
</script>
