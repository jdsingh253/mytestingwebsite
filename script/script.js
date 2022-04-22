// JavaScript Document
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

$(".progress-bar1").animate({
    width: "90%"
}, 500);
$(".progress-bar2").animate({
    width: "85%"
}, 500);
$(".progress-bar3").animate({
    width: "95%"
}, 500);
$(".progress-bar4").animate({
    width: "95%"
}, 500);
$(".progress-bar5").animate({
    width: "85%"
}, 500);

//alert
function myFunction() {
  alert("Please provide your information before downloading my resume!");
}