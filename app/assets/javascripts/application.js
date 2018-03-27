function newPost() {  
  var leftColumn = document.getElementById('leftcolumn');
  var newPostButton = document.getElementById('newPost');
  leftColumn.removeChild(newPostButton);
  
  var form = document.createElement("form");
    form.setAttribute('class', 'new_post');
    form.id  = "new_post";
    form.action = '/posts';
    form.acceptCharset = "UTF-8";    
    form.method = 'post';
    document.getElementById("updatePost").appendChild(form);
    
    var authentication = document.createElement('input');
      authentication.type = "hidden";
      authentication.name = "authenticity_token";
      authentication.value = "✓";
  
    var titleLabel = document.createElement('label');
      titleLabel.innerHTML = "Title"
      document.getElementById("new_post").appendChild(titleLabel);
    
    var br = document.createElement("br");
      document.getElementById("new_post").appendChild(br);
    
    var title = document.createElement("input"); 
      title.type = "text";
      title.id = "post_title";
      title.name = "post[title]";
      title.value = "Title goes here";
      document.getElementById("new_post").appendChild(title);
    
    var br = document.createElement("br");
      document.getElementById("new_post").appendChild(br);

    var contentLabel = document.createElement('label');
      contentLabel.innerHTML = "Content"
      document.getElementById("new_post").appendChild(contentLabel);

    var br = document.createElement("br");
      document.getElementById("new_post").appendChild(br);      
      
    var content = document.createElement("textarea");
      content.name = "post[content]";
      content.id = "post_content";
      content.rows = "4";
      content.cols = "50";
      content.innerHTML = "This is where the content goes.";
      document.getElementById("new_post").appendChild(content);
    
    var br = document.createElement("br");
      document.getElementById("new_post").appendChild(br);
  
    var submit = document.createElement("input");
      submit.type = "submit";
      submit.name = "commit";
      submit.value = "Submit";
      submit.dataDisableWith = "Submit";
      document.getElementById("new_post").appendChild(submit);
}