---
layout: default
title: Save in posts#create controller
---

<h1 id="main">Save in posts#create controller</h1>

###Update file `app/controllers/posts_controller.rb`

####Change
```
     render text: params[:post].inspect
```


####To
```
     @post = Post.new(params[:post])
 
     @post.save
     redirect_to action: :show, id: @post.id
```


####Becomes
```
   end
 
   def create
     @post = Post.new(params[:post])
 
     @post.save
     redirect_to action: :show, id: @post.id
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/9967c91b6c35b45df35b6b768092eb24bed897bc)

