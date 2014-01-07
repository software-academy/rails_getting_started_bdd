---
layout: default
title: Add link to destroy post
---

<h1 id="main">Add link to destroy post</h1>
###Update file `app/controllers/posts_controller.rb`

####Add
```
   def destroy
     @post = Post.find(params[:id])
     @post.destroy
 
     redirect_to posts_path
   end
```


####Becomes
```
     end
   end
 
   def destroy
     @post = Post.find(params[:id])
     @post.destroy
 
     redirect_to posts_path
   end
 
   def edit
     @post = Post.find(params[:id])
   end

```


###Update file `app/views/posts/index.html.erb`

####Add
```
       <td><%= link_to 'Destroy', post_path(post),
                     method: :delete, data: { confirm: 'Are you sure?' } %></td>
```


####Becomes
```
       <td><%= post.text %></td>
       <td><%= link_to 'Show', post %></td>
       <td><%= link_to 'Edit', edit_post_path(post) %></td>
       <td><%= link_to 'Destroy', post_path(post),
                     method: :delete, data: { confirm: 'Are you sure?' } %></td>
     </tr>
   <% end %>
 </table>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/38cf9eddedcb07cbbf936061bbd2847716f70e38)

