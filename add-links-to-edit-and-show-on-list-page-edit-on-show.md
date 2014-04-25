---
layout: default
title: Add links to edit and show on list page, edit on show
---

<h1 id="main">Add links to edit and show on list page, edit on show</h1>

###Update file `app/views/posts/index.html.erb`

####Add
```
     <th></th>
     <th></th>
```


####Add
```
       <td><%= link_to 'Show', post %></td>
       <td><%= link_to 'Edit', edit_post_path(post) %></td>
```


####Becomes
```
   <tr>
     <th>Title</th>
     <th>Text</th>
     <th></th>
     <th></th>
   </tr>
 
   <% @posts.each do |post| %>
     <tr>
       <td><%= post.title %></td>
       <td><%= post.text %></td>
       <td><%= link_to 'Show', post %></td>
       <td><%= link_to 'Edit', edit_post_path(post) %></td>
     </tr>
   <% end %>
 </table>
\ No newline at end of file

```


###Update file `app/views/posts/show.html.erb`

####Remove
```
 <%= link_to 'Back', posts_path %>
```


####Add
```
 <%= link_to 'Back', posts_path %>
 | <%= link_to 'Edit', edit_post_path(@post) %>
```


####Becomes
```
   <%= @post.text %>
 </p>
 
\ No newline at end of file
 <%= link_to 'Back', posts_path %>
 | <%= link_to 'Edit', edit_post_path(@post) %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5402e16847ef890b62c6add3ea096f0433612970)

