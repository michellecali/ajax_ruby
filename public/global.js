window.addEventListener("load", function(){
  var start = document.getElementById("start");
  var q1 = document.getElementById("q1");
  var getResults = document.getElementById("getResults");
  var r1 = document.getElementById("r1");

  start.addEventListener("click",function(){
    start.style.display="none";
    q1.style.display="block";
    var newQ = document.getElementsByClassName("newQ");
    var questions = document.getElementsByClassName("questions");

      for(i=0; i<newQ.length; i++){
        newQ[i].addEventListener("click", function(){
          var x = this.getAttribute("id");
          questions[x-1].style.display = "none";
          questions[x].style.display = "inline";
        });
      }


    getResults.addEventListener("click", function(){
        document.getElementById("q3").style.display = "none";

      
      var check = new XMLHttpRequest();

      check.addEventListener("load", function(e){
        
        var correctAnswers = JSON.parse(e.target.response);
        
          r1.innerHTML = correctAnswers.q1;
          r2.innerHTML = correctAnswers.q2;
          r3.innerHTML = correctAnswers.q3;
      });

        var a1 = document.getElementById("a1").value;
        var a2 = document.getElementById("a2").value;
        var a3 = document.getElementById("a3").value;
        var string = [a1, a2, a3];
      
      check.open("get", "check_answer.php?string=" + string);
      check.send();

    });
  });

});
