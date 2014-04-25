---
layout: default
title: Add Back link to posts#show page
---

<h1 id="main">Add Back link to posts#show page</h1>

###Update file `app/views/posts/show.html.erb`

####Remove
```
 </p>
```


####Add
```
 </p>
 
 <%= link_to 'Back', posts_path %>
```


####Becomes
```
 <p>
   <strong>Text:</strong>
   <%= @post.text %>
\ No newline at end of file
 </p>
 
 <%= link_to 'Back', posts_path %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/6a0c4a76a91df75d37bd0aecd75d94a8a23d134f)

