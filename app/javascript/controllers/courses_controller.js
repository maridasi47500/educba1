
$(function(){
$('[src="/heyjs.js"]')[0].src="/heyjs.js";


	$(".hey").change(function(){
	                $.ajax({url:"/hey/there?id="+$(this).val(),
				                        success:function(data){
								                                var hi="",yes,mydata=data.heythere;
								                                console.log(mydata.length);
								                                for (var i = 0;i<mydata.length;i++){
													                                        yes=mydata[i];
													                                        hi+="<option value=\"";
													                                        hi+=yes.id;
													                                        hi+="\">";
													                                        hi+=yes.name;
													                                        hi+="</option>";
													                                }
								                                console.log(hi);
								                                $("#course_somecat_ids")[0].innerHTML=(hi);
								                        }});
	                return false;
	        });
});
