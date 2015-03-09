$(document).ready(function() {

	var isUploading =false;
	$("#upload-file").click(function() {
		$("#file").click();
	});

	function updateContentData() {
		var data = CKEDITOR.instances['ckeditor'].getData();
		$("#content").val(data);
	}

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
	
	$("#file").fileupload({
		add:function(e,data){
			 if(data.files[0].size > 200000000) {
				 $("#upload-result").text("上传的文件过大,文件必须小于200mb!");
             }else{
            	 if(!isUploading){
            		 isUploading = true;
            		 data.submit();
            	 }else{
            		 alert("上传中,请等待上传完成后再添加文件!");
            	 }
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
	        	isUploading = false;
	        	$("#upload-result").text("正在完成...");
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
	
	$("#save").click(function() {
		updateContentData();
		if (check()) {
			$("#form").submit();
		}
		return '';
	});

});

function ajaxFileUpload() {
	var fileSize = $("#file")[0].files[0].size;
	fileSize = fileSize / 1048576;

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
function appendFileName(data) {
	var list = $("#filename-list");
	var str = "<li><span class=\"badge filename\">"
			+ data.file_name
			+ "<i class=\"icon-remove\" onclick=\"r(this);\"></i></span><input type=\"text\" value=\""
			+ data.id
			+ "\" name=\"file\" class=\"file-id\" style=\"display:none;\"/></li>";

	list.append(str);
	$("#upload-result").text("上传成功");
}
