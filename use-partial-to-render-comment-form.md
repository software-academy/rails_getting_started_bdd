---
layout: default
title: Use partial to render comment form
---

<h1 id="main">Use partial to render comment form</h1>
###Create file `app/views/comments/_form.html.erb`

Add
```
 <%= form_for([@post, @post.comments.build]) do |f| %>
   <p>
     <%= f.label :commenter %><br />
     <%= f.text_field :commenter %>
   </p>
   <p>
     <%= f.label :body %><br />
     <%= f.text_area :body %>
   </p>
   <p>
     <%= f.submit %>
   </p>
 <% end %>
```


###Update file `app/views/posts/show.html.erb`

Remove
```
 <%= form_for([@post, @post.comments.build]) do |f| %>
   <p>
     <%= f.label :commenter %><br />
     <%= f.text_field :commenter %>
   </p>
   <p>
     <%= f.label :body %><br />
     <%= f.text_area :body %>
   </p>
   <p>
     <%= f.submit %>
   </p>
 <% end %>
```


Add
```
 <%= render "comments/form" %>
```


Becomes
```
 <%= render @post.comments %>
 
 <h2>Add a comment:</h2>
 <%= render "comments/form" %>
 
 <%= link_to 'Back', posts_path %>
 | <%= link_to 'Edit', edit_post_path(@post) %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/3304445370e0f4d6eb901e6b747123b61202ffca)

