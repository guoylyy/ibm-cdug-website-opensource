$(document).ready(function(){
	$.getJSON("resource/conf/index_config.properties",function(data){
		var sliders = data.sliders;
		for (var i=0;i<sliders.length;i++){
			var select = "#slider"+i;
			var atom = sliders[i];
			$($(select).children()[0]).attr("href",atom.url);
			$($($(select).children()[0]).children()[0]).attr("src",atom.image);
			$($($(select).children()[1]).children()[0]).attr("href",atom.url);
			$($($(select).children()[1]).children()[0]).html(atom.title);
		}
		
		var image = data.notice.image;
		if(image == 'on'){
			$(".lastest-news").html("");
			$(".lastest-news").html("<img src=\""+data.notice.path+"\" width=\"100%\" height=\"100%\"/>");
		}
		
	});
	
});