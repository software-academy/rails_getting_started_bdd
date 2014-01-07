---
layout: default
title: Render comments with a partial
---

<h1 id="main">Render comments with a partial</h1>
###Create file `app/views/comments/_comment.html.erb`

####Add
```
 <p>
   <strong>Commenter:</strong>
   <%= comment.commenter %>
 </p>
 
 <p>
   <strong>Comment:</strong>
   <%= comment.body %>
 </p>
```


###Update file `app/views/posts/show.html.erb`

####Remove
```
 <% @post.comments.each do |comment| %>
   <p>
     <strong>Commenter:</strong>
     <%= comment.commenter %>
   </p>
 
   <p>
     <strong>Comment:</strong>
     <%= comment.body %>
   </p>
 <% end %>
```


####Add
```
 <%= render @post.comments %>
```


####Becomes
```
 </p>
 
 <h2>Comments</h2>
 <%= render @post.comments %>
 
 <h2>Add a comment:</h2>
 <%= form_for([@post, @post.comments.build]) do |f| %>

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/2f6a234efd9cbc104b9bba1ed5d4a90ac881f8ef)

