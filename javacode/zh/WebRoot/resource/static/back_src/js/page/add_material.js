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
		'auto':false,
		done:function(e,result){
			appendFileName(result.result)
		}
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
