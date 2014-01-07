---
layout: default
title: Add Back link to posts#new page
---

<h1 id="main">Add Back link to posts#new page</h1>
###Update file `app/views/posts/new.html.erb`

####Remove
```
 <% end %>
```


####Add
```
 <% end %>
 
 <%= link_to 'Back', posts_path %>
```


####Becomes
```
   <p>
     <%= f.submit %>
   </p>
\ No newline at end of file
 <% end %>
 
 <%= link_to 'Back', posts_path %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/66c7f4b409d72aded3819b44ddee16bc452dde3d)

