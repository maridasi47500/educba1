$(function(){
	$(".hey").change(function(){
		$.ajax({url:"/hey/there",
			data:{id:$(this).val()},
			success:function(data){
				var hi="",yes;
				for (var i = 0;i<data[i];i++){
					yes=data[i];
					hi+="<option value=\"";
					hi+=yes.id;
					hi+="\">";
					hi+=yes.name;
					hi+="</option>";
				};
				$("#course_somecat_ids").html(hi);
			}});
	});
});
