$(document).ready(function(){
    $('.about-body-text').boxLoader({
    direction:"x",
    position: "100%",
    effect: "fadeIn",
    duration: "1s",
    windowarea: "50%"
    });
    
    $(".menu-collapsed").click(function() {
    $(this).toggleClass("menu-expanded");
    });
 
});

