---
layout: default
title: Add link to blog posts on home page
---

<h1 id="main">Add link to blog posts on home page</h1>
###Update file `app/views/welcome/index.html.erb`

Remove
```
 <h1>Hello, Rails!</h1>
```


Add
```
 <h1>Hello, Rails!</h1>
 <%= link_to "My Blog", controller: "posts" %>
```


Becomes
```
\ No newline at end of file
 <h1>Hello, Rails!</h1>
 <%= link_to "My Blog", controller: "posts" %>
\ No newline at end of file

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/77d14e1ae106e1aadfd05ceea311cab30785d059)

