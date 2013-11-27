---
layout: default
title: Fix forbidden attributes error
---

<h1 id="main">Fix forbidden attributes error</h1>
Update file `app/controllers/posts_controller.rb`

Change
<pre><code>     @post = Post.new(params[:post])</code></pre>


To
<pre><code>     @post = Post.new(params[:post].permit(:title, :text))</code></pre>


Change
<pre><code>     redirect_to action: :show, id: @post.id</code></pre>


To
<pre><code>     redirect_to @post</code></pre>


Becomes
<pre><code>   end
&nbsp;
   def create
     @post = Post.new(params[:post].permit(:title, :text))
&nbsp;
     @post.save
     redirect_to @post
   end
 end
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/a1eca09521ecb416c21056e82cf5fe5f7931ae22)

