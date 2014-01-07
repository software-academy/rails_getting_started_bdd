---
layout: default
title: Add posts#edit and posts#update to controller, with view
---

<h1 id="main">Add posts#edit and posts#update to controller, with view</h1>
###Update file `app/controllers/posts_controller.rb`

Add
```
   def edit
     @post = Post.find(params[:id])
   end
```


Becomes
```
     end
   end
 
   def edit
     @post = Post.find(params[:id])
   end
 
   def index
     @posts = Post.all
   end

```


Add
```
 
   def update
     @post = Post.find(params[:id])
 
     if @post.update(params[:post].permit(:title, :text))
       redirect_to @post
     else
       render 'edit'
     end
   end
```


Becomes
```
   def show
     @post = Post.find(params[:id])
   end
 
   def update
     @post = Post.find(params[:id])
 
     if @post.update(params[:post].permit(:title, :text))
       redirect_to @post
     else
       render 'edit'
     end
   end
 end

```


###Create file `app/views/posts/edit.html.erb`

Add
```
 <h1>Editing post</h1>
 
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
 
 <%= link_to 'Back', posts_path %>
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/37081702b57e370e9959b55ea0973aa9e3662e2d)

