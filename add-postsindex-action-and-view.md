---
layout: default
title: Add posts#index action and view
---

<h1 id="main">Add posts#index action and view</h1>
###Update file `app/controllers/posts_controller.rb`

Add
```
   def index
     @posts = Post.all
   end
```


Becomes
```
     redirect_to @post
   end
 
   def index
     @posts = Post.all
   end
 
   def show
     @post = Post.find(params[:id])
   end

```


###Create file `app/views/posts/index.html.erb`

Add
```
 <h1>Listing posts</h1>
 
 <table>
   <tr>
     <th>Title</th>
     <th>Text</th>
   </tr>
 
   <% @posts.each do |post| %>
     <tr>
       <td><%= post.title %></td>
       <td><%= post.text %></td>
     </tr>
   <% end %>
 </table>
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/d9392043a56b868c214baed5af4a54585ba53eb8)

