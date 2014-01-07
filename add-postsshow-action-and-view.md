---
layout: default
title: Add posts#show action and view
---

<h1 id="main">Add posts#show action and view</h1>
###Update file `app/controllers/posts_controller.rb`

Add
```
 
   def show
     @post = Post.find(params[:id])
   end
```


Becomes
```
     @post.save
     redirect_to @post
   end
 
   def show
     @post = Post.find(params[:id])
   end
 end

```


###Create file `app/views/posts/show.html.erb`

Add
```
 <p>
   <strong>Title:</strong>
   <%= @post.title %>
 </p>
 
 <p>
   <strong>Text:</strong>
   <%= @post.text %>
 </p>
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e8971cd13d0217537f24addfb2d9d319b1280d45)

