console.log("hello js");

function clickme(){
  let h1 = document.getElementById("one");
  if(h1.innerHTML == "Welcome to Aditi_Art"){
    h1.innerHTML = "Change by DOM";
    h1.style.backgroundColor =  rgb(210, 177, 214);
  }
  else{
    h1.innerHTML = "Welcome to Aditi_Art";
    h1.style.backgroundColor =  rgb(10, 10, 11);
    h1.style.color = rgb(233, 233, 237);;
  }

  
}

