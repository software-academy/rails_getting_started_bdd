---
layout: default
title: Add posts#new view
---

<h1 id="main">Add posts#new view</h1>
###Update file `app/controllers/posts_controller.rb`

####Add
```
   def new
   end
```


####Becomes
```
 class PostsController < ApplicationController
   def new
   end
 end

```


###Create file `app/views/posts/new.html.erb`

####Add
```
 <h1>New Post</h1>
```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/70fbfd95b3bc29eac99dee41526eb1f28a8a9f1e)

