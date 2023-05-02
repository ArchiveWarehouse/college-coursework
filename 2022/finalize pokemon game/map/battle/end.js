$(function(){

    $(document).ready(function() {    
        $('#comment').delay(3000).fadeIn(2200);
    });
    

    

var r_text = new Array ();
r_text[0] = "All the leaves are brown";
r_text[1] = "And the sky is grey";
r_text[2] = "I've been for a walk";
r_text[3] = "On a winter's day";
r_text[4] = "I'd be safe and warm";
r_text[5] = "If I was in L.A.";
r_text[6] = "California dreaming, On such a winter's day";
var i = Math.floor(7*Math.random())
document.write('<span style="color: #000; font-weight: bold;">' + r_text[i] + '</span>');

});