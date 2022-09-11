let quizQuestions = ["The full form of CSS is:", "How can we change the background color of an element?", "How can we change the text color of an element?", "In how many ways can CSS be written in?", "What type of CSS is generally recommended for designing large web pages?", "Which HTML tag is used to declare internal CSS?", "How can we select an element with a specific ID in CSS?", "How can we select an element with a specific Class in CSS?", "How can we write comments in CSS?", "Can negative values be allowed in padding property?"];

let option1 = ["Cascading Style Sheets", "background-color", "background-color", "1", "inline", "&lt;style&gt;", "#", "#", "/* */", "Yes"];

let option2 = ["Coloured Special Sheets", "color", "color", "2", "Internal", "&lt;link&gt;", ".", ".", "//", "No"];

let option3 = ["Color and Style Sheets", "Boom A and B", "Both A and B", "3", "External", "&lt;script&gt;", "^", "^", "#", "Depends on property"];

let option4 = ["None of the above", "None of the above", "None of the above", "4", "None of the above", "None of the above", "None of the above", "None of the above", "All of the above", "None of the above"];

let correctResults = ["1", "1", "2", "3", "3", "1", "1", "2", "4", "1"];

let results = 0;
let numQuestions = 10;
let i = 0;
let evaluateAnswer = (i) => {
  if (document.getElementById("checkbox" + correctResults[i]).checked) {
    console.log("correct");
    results++;
  } else {
    console.log("try again");
  }

}

let submit = () => {
  if (i < quizQuestions.length) {

    if (i) evaluateAnswer(i - 1);
    document.getElementById("promptQuestion").innerHTML = (i + 1) + ") " + quizQuestions[i];
    document.getElementById("option_a").innerHTML = option1[i];
    document.getElementById("option_b").innerHTML = option2[i];
    document.getElementById("option_c").innerHTML = option3[i];
    document.getElementById("option_d").innerHTML = option4[i];
    document.getElementById("checkbox1").checked = false;
    document.getElementById("checkbox2").checked = false;
    document.getElementById("checkbox3").checked = false;
    document.getElementById("checkbox4").checked = false;
    document.getElementById("correctAnswers").innerHTML = "Score: " + results + " / " + numQuestions; ;
    i++;

  } else {

    document.getElementById("correctAnswers").innerHTML = '<h2 id="final">Final Score: ' + results + " / " + numQuestions + '</h2>'; 
    document.getElementById("promptQuestion").innerHTML = "";
    document.getElementById("checkboxes").innerHTML = "";

  }


}



submit();