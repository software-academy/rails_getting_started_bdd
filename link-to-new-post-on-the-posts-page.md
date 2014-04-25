---
layout: default
title: Link to new post on the posts page
---

<h1 id="main">Link to new post on the posts page</h1>

###Update file `app/views/posts/index.html.erb`

####Add
```
 <%= link_to 'New post', new_post_path %>
```


####Becomes
```
 <h1>Listing posts</h1>
 <%= link_to 'New post', new_post_path %>
 
 <table>
   <tr>

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/cee39273c0a3b7654f76ea51b7167415f64a1294)

