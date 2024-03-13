// Funtion to update rating

let stars = 
	    document.getElementsByClassName("star");
let output = 
	    document.getElementById("output");
function heythere(userid,courseid){
	var note;
	if ($(".one").length > 0){
		note=1;
	} else if ($(".two").length > 0){
		note=2;
	} else if ($(".three").length > 0){
		note=3;
	} else if ($(".four").length > 0){
		note=4;
	} else if ($(".five").length > 0){
		note=5;
	}
	
	$.ajax({url: "/votes",
		type:"post",
		data: {vote: {note:note,user_id: userid, course_id: courseid}},
		success:function(data){
	document.getElementById("overlay1").style.display = "none";
			$(".card-star-rating").html("Merci d'avoir partagé vos commentaires sur le cours "+$("h1").html());
		},
		error:function(data,hey){
	document.getElementById("vote1").innerHTML="vous avez déjà voté ou il y a eu une erreur";
			console.log(data,hey);
		}
	});
}

 function gfg(n) {
     remove();
	 var cls,x;
	 for (var i = 0;i<n;i++){
                 if (n == 1) cls = " one";
                 else if (n == 2) cls = " two";
                 else if (n == 3) cls = " three";
                 else if (n == 4) cls = " four";
                 else if (n == 5) cls = " five";
                 stars[i].className = "star" + cls;
	 }
                                                                 output.innerText = "Rating is: " + n + "/5";
                                                                 }
                                                                  
                                                                  // To remove the pre-applied styling
                                                                  function remove() {
                                                                      let i = 0;
                                                                          while (i < 5) {
                                                                                  stars[i].className = "star";
                                                                                          i++;
                                                                                              }
                                                                                              }// Funtion to update rating
window.onload=function(){
}
