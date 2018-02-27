function newPost() {  
  var title   = document.createElement("input"); 
  var content = document.createElement("textarea");

  title.type = "text";
  title.id = "newTitle";
  title.value = "Title goes here";

  content.rows = "4";
  content.cols = "50";
  content.innerHTML = "This is where the content goes.";
  content.id = "newContent";

  document.getElementById("newComment").appendChild(title);
  document.getElementById("newComment").appendChild(content);
}