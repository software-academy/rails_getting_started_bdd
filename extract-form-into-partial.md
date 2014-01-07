---
layout: default
title: Extract form into partial
---

<h1 id="main">Extract form into partial</h1>
###Create file `app/views/posts/_form.html.erb`

####Add
```
 <%= form_for @post do |f| %>
   <% if @post.errors.any? %>
   <div id="error_explanation">
     <h2><%= pluralize(@post.errors.count, "error") %> prohibited
       this post from being saved:</h2>
     <ul>
     <% @post.errors.full_messages.each do |msg| %>
       <li><%= msg %></li>
     <% end %>
     </ul>
   </div>
   <% end %>
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


###Update file `app/views/posts/edit.html.erb`

####Change
```
 <h1>Editing post</h1>
```


####To
```
 <h1>Edit post</h1>
```


####Remove
```
 <%= form_for :post, url: post_path(@post.id), method: :patch do |f| %>
   <% if @post.errors.any? %>
     <div id="errorExplanation">
       <h2><%= pluralize(@post.errors.count, "error") %> prohibited
         this post from being saved:</h2>
       <ul>
       <% @post.errors.full_messages.each do |msg| %>
         <li><%= msg %></li>
       <% end %>
       </ul>
     </div>
   <% end %>
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


####Add
```
 <%= render 'form' %>
```


####Becomes
```
 <h1>Edit post</h1>
 
 <%= render 'form' %>
 
 <%= link_to 'Back', posts_path %>
\ No newline at end of file

```


###Update file `app/views/posts/new.html.erb`

####Change
```
 <h1>New Post</h1>
```


####To
```
 <h1>New post</h1>
```


####Remove
```
 <%= form_for :post, url: posts_path do |f| %>
   <% if @post.errors.any? %>
     <div id="errorExplanation">
       <h2><%= pluralize(@post.errors.count, "error") %> prohibited
         this post from being saved:</h2>
       <ul>
       <% @post.errors.full_messages.each do |msg| %>
         <li><%= msg %></li>
       <% end %>
       </ul>
     </div>
   <% end %>
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


####Add
```
 <%= render 'form' %>
```


####Becomes
```
 <h1>New post</h1>
 
 <%= render 'form' %>
 
 <%= link_to 'Back', posts_path %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/19f9dcff92083031234a98fa90ad70a1706803fe)

