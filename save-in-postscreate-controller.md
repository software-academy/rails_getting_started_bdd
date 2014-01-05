---
layout: default
title: Save in posts#create controller
---

<h1 id="main">Save in posts#create controller</h1>
Update file `app/controllers/posts_controller.rb`

Change
<pre><code>     render text: params[:post].inspect</code></pre>


To
<pre><code>     @post = Post.new(params[:post])
&nbsp;
     @post.save
     redirect_to action: :show, id: @post.id</code></pre>


Becomes
<pre><code> class PostsController &lt; ApplicationController
   def new
   end
&nbsp;
   def create
     @post = Post.new(params[:post])
&nbsp;
     @post.save
     redirect_to action: :show, id: @post.id
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/9967c91b6c35b45df35b6b768092eb24bed897bc)

