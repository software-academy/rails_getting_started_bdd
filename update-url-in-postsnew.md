---
layout: default
title: Update url in posts#new
---

<h1 id="main">Update url in posts#new</h1>
###Update file `app/views/posts/new.html.erb`

####Change
```
 <%= form_for :post do |f| %>
```


####To
```
 <%= form_for :post, url: posts_path do |f| %>
```


####Becomes
```
 <h1>New Post</h1>
 
 <%= form_for :post, url: posts_path do |f| %>
   <p>
     <%= f.label :title %><br>
     <%= f.text_field :title %>

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/600b201ae415f8e568f299733c00ab867db56aaf)

