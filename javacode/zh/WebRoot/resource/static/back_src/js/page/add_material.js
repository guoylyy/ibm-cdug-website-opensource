$(document).ready(function() {

	$("#type-change").change(function() {
		if ($(this).val() == 'POST') {
			$("#text-area").show();
		} else if ($(this).val() == 'FILEONLY') {
			$("#text-area").hide();
		}
	});

	$("#upload-file").click(function() {
		$("#file").click();
	});
	function trim(str) {
		return str.replace(/(^\s*)|(\s*$)/g, "");
	}
	function check() {
		if (trim($("#title").val()).length == 0) {
			alert("Title can't be empty!");
			return false;
		}
		return true;
	}
	function updateContentData(){
		var data = CKEDITOR.instances['ckeditor'].getData();
		$("#content").val(data);
	}
	
	$("#save").click(function() {
		updateContentData();
		if (check()) {
			$("#form").submit();
		}
		return '';
	});

	// $(".remove-file").click(function() {
	// $($(this).parent()).parent().remove();
	// });

	$("#file").fileupload({
		add:function(e,data){
			 if(data.files[0].size > 2000000) {
				 $("#upload-result").text("上传的文件过大,文件必须小于200mb!");
             }else{
            	 data.submit();
             }
		},
		progressall: function (e, data) {
	        var progress = parseInt(data.loaded / data.total * 100, 10);
	        $('#progress .bar').css(
	            'width',
	            progress + '%'
	        );
	        if(progress<100){
	        	$("#upload-result").text(progress+"%");
	        }
	        if(progress==100){
	        	$("#upload-result").text("上传成功");
	        }
	    },
		done:function(e,result){
			appendFileName(result.result);
		},
		fail:function(e,data){
			$("#upload-result").text("上传失败");
			$("#progress .bar").css("width","1%");
		}
		
	});
	
	$("#upload-file").click(function(){
		$("#upload-result").text("未开始上传");
		$("#progress .bar").css("width","1%");
	});
	
	function getCheckTexts(str) {
		str = "." + str;
		var result = [];
		var checks = $(str);
		for (var i = 0; i < checks.length; i++) {
			if (checks[i].checked) {
				result.push(checks[i].value);
			}
		}
		return result.join(",");
	}
	
	//ajaxFileUpload() ;

});

function ajaxFileUpload() {
	var fileSize = 1000;//$("#file").files[0].size;
	fileSize = fileSize / 1048576;
	if (fileSize > 50) {
		alert("File shoule be less than 50mb!");
	} else {
		$("#file").uploadify('upload');
//		$.ajaxFileUpload({
//			url : 'private/material/fileUpload',
//			secureuri : false,
//			type : 'post',
//			fileElementId : 'file',
//			dataType : 'text',
//			success : function(data, status) {
//				data = ''+ data + '';
//				data = data.replace(/<[^>].*?>/g,"");
//				data = eval("(" + data + ")");
//				appendFileName(data);
//			},
//			error : function(data, status, e) {
//				alert(e);
//			}
//
//		});
		
	}
}
function appendFileName(data) {
	var list = $("#filename-list");
	var str = "<li><span class=\"badge filename\">"
			+ data.file_name
			+ "<i class=\"icon-remove\" onclick=\"r(this);\"></i></span><input type=\"text\" value=\""
			+ data.id
			+ "\" name=\"file\" class=\"file-id\" style=\"display:none;\"/></li>";

	list.append(str);
}
function r(obj){
	if(confirm_delete()){
		$($(obj).parent()).parent().remove();
	}
}

function confirm_delete(){
	if(confirm("Are you sure delete this item?"))
	    return true;
	return false;
}
