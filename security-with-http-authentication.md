---
layout: default
title: Security with HTTP Authentication
---

<h1 id="main">Security with HTTP Authentication</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code>&nbsp;
   http_basic_authenticate_with name: &quot;dhh&quot;, password: &quot;secret&quot;, except: [:index, :show]</code></pre>


Becomes
<pre><code> class PostsController &lt; ApplicationController
&nbsp;
   http_basic_authenticate_with name: &quot;dhh&quot;, password: &quot;secret&quot;, except: [:index, :show]
&nbsp;
   def new
     @post = Post.new
   end
&nbsp;
   def create
     @post = Post.new(params[:post].permit(:title, :text))
&nbsp;
     if @post.save
       redirect_to @post
     else
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5f206749ddf21e6239fdbdf446f46684f7c309cb)

