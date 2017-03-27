$(".buttons-sports").on("change", function(e){
  // Change active tab

  console.log($(this).find("input").is(':checked'));

  if( $(this).find("input").is(':checked')) {
    $(this).addClass("scale-up");
  } else {
    $(this).removeClass("scale-up");
  }
  // Show target tab-content (use class="hidden")
});
