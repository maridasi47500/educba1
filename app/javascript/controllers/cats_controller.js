$(function(){
	$("[name='heycat']").change(function(){
		$.ajax({url: "/cours",
			data: {myids: $("[name='heycat']:checked").toArray().map(x=>x.value)},
			success:function(data){
				$(".class2").html(data);
			}
		});
	});
});
