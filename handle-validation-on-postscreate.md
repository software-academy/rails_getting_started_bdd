---
layout: default
title: Handle validation on posts#create
---

<h1 id="main">Handle validation on posts#create</h1>

###Update file `app/controllers/posts_controller.rb`

####Add
```
     @post = Post.new
```


####Remove
```
     @post.save
     redirect_to @post
```


####Add
```
     if @post.save
       redirect_to @post
     else
       render 'new'
     end
```


####Becomes
```
 class PostsController < ApplicationController
   def new
     @post = Post.new
   end
 
   def create
     @post = Post.new(params[:post].permit(:title, :text))
 
     if @post.save
       redirect_to @post
     else
       render 'new'
     end
   end
 
   def index

```


###Update file `app/views/posts/new.html.erb`

####Add
```
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
```


####Becomes
```
 <h1>New Post</h1>
 
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

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/ac9f5e211b55378fc65e36a49461ea11e06736e7)

