	
	
 $(document).ready(function(){
  $(".page.prev").children('a').html("<<");
	$(".page.next").children('a').html(">>");
	$(".page.prev.disabled").remove();
  $(".page.next.disabled").remove();
});
