---
layout: default
title: Add form to posts#new
---

<h1 id="main">Add form to posts#new</h1>

###Update file `app/views/posts/new.html.erb`

####Remove
```
 <h1>New Post</h1>
```


####Add
```
 <h1>New Post</h1>
 
 <%= form_for :post do |f| %>
   <p>
     <%= f.label :title %><br>
     <%= f.text_field :title %>
   </p>
 
   <p>
     <%= f.label :text %><br>
     <%= f.text_area :text %>
   </p>
 
   <p>
     <%= f.submit %>
   </p>
 <% end %>
```


####Becomes
```
\ No newline at end of file
 <h1>New Post</h1>
 
 <%= form_for :post do |f| %>
   <p>
     <%= f.label :title %><br>
     <%= f.text_field :title %>
   </p>
 
   <p>
     <%= f.label :text %><br>
     <%= f.text_area :text %>
   </p>
 
   <p>
     <%= f.submit %>
   </p>
 <% end %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/fcc571f0b0a284ae239927f5ca48317ab6d243dc)

