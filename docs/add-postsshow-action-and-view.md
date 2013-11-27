---
layout: default
title: Add posts#show action and view
---

<h1 id="main">Add posts#show action and view</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code> 
   def show
     @post = Post.find(params[:id])
   end</code></pre>


Becomes
<pre><code>     @post.save
     redirect_to @post
   end
 
   def show
     @post = Post.find(params[:id])
   end
 end
</code></pre>


Create file `app/views/posts/show.html.erb`

Add
<pre><code> &lt;p&gt;
   &lt;strong&gt;Title:&lt;/strong&gt;
   &lt;%= @post.title %&gt;
 &lt;/p&gt;
 
 &lt;p&gt;
   &lt;strong&gt;Text:&lt;/strong&gt;
   &lt;%= @post.text %&gt;
 &lt;/p&gt;</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/e8971cd13d0217537f24addfb2d9d319b1280d45)

