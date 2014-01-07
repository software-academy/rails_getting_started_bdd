---
layout: default
title: Fix forbidden attributes error
---

<h1 id="main">Fix forbidden attributes error</h1>
###Update file `app/controllers/posts_controller.rb`

####Change
```
     @post = Post.new(params[:post])
```


####To
```
     @post = Post.new(params[:post].permit(:title, :text))
```


####Change
```
     redirect_to action: :show, id: @post.id
```


####To
```
     redirect_to @post
```


####Becomes
```
   end
 
   def create
     @post = Post.new(params[:post].permit(:title, :text))
 
     @post.save
     redirect_to @post
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/a1eca09521ecb416c21056e82cf5fe5f7931ae22)

