---
layout: default
title: Security with HTTP Authentication
---

<h1 id="main">Security with HTTP Authentication</h1>
###Update file `app/controllers/posts_controller.rb`

####Add
```
 
   http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
```


####Becomes
```
 class PostsController < ApplicationController
 
   http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
 
   def new
     @post = Post.new
   end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5f206749ddf21e6239fdbdf446f46684f7c309cb)

