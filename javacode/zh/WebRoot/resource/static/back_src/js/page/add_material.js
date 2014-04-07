$(document).ready(function(){

	$("#type-change").change(function(){
		if($(this).val()=='POST'){
			$("#text-area").show();
		}else if ($(this).val()=='FILEONLY'){
			$("#text-area").hide();
		}
	});
	
	
	$("#upload-file").click(function(){
		$("#file").click();
	});
	
	$("#save").click(function(){
		
		//var data =[];
		for (instance in CKEDITOR.instances){ 
			CKEDITOR.instances[instance].updateElement(); 
		}
		//alert($("#form").serialize());
		$("#form").submit();
		
		return '';
//		var title = $("input[name='title']").val();
//		var type = $("select[name='type']").val();
//		var content = CKEDITOR.instances.content.getData();
//		var files = $(".file-id");
//		var file_ids = [];
//		for(var i=0; i<files.length;i++){
//			file_ids.push($(files[i]).val());
//		}
//		var so_ids = getCheckTexts("solution");
//		var te_ids = getCheckTexts("technical");
//		var isDraft = $("input[name='draft']").attr("checked");
//		
//		data.push("title="+title);
//		data.push("type="+type);
//		data.push("file_ids="+file_ids.join(","));
//		data.push("so_ids="+so_ids);
//		data.push("te_ids="+te_ids);
//		data.push("isDraft="+isDraft);
//		data.push("content="+content);
//		
//		data = data.join("&");
//		
//		//save to db
//		$.ajax({
//			url:'/private/material/addMaterial',
//			type:'post',
//			data:data,
//			dataType:'json',
//			success:function(data){
//				if(data.result='success'){
//					alert("Success add material");
//					window.location.href= data.redirect;
//				}else{
//					alert("Unexpected error happen!");
//				}
//			},
//			error:function(data){
//				alert("Unexpected error happen!");
//			}
//		});
		
	});
	
	function getCheckTexts(str){
		str =  "."+str;
		var result = [];
		var checks = $(str);
		for(var i=0; i<checks.length;i++){
			if(checks[i].checked){
				result.push(checks[i].value);
			}
		}
		return result.join(",");
	}

});

function ajaxFileUpload(){
	$.ajaxFileUpload({
		url:'/private/material/fileUpload',
		secureuri: false,
		type:'post',
		fileElementId: 'file',
		dataType: 'json',
		success: function (data, status)  
        {
			data = data.replace(/<\/?.+?>/g,"");
			data = eval("("+data+")");
			appendFileName(data);
        },
        error: function (data, status, e)
        {
            alert(e);
        }

	});
	return false;
}
function appendFileName(data){
	var list = $("#filename-list");
	var str = "<li><span class=\"badge filename\">"+
				data.file.file_name+
				"<i class=\"icon-remove\"></i></span><input type=\"text\" value=\""
				+data.file.id+"\" name=\"file\" class=\"file-id\" style=\"display:none;\"/></li>";
	
	list.append(str);
}