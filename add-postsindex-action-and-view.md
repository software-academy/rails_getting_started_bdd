---
layout: default
title: Add posts#index action and view
---

<h1 id="main">Add posts#index action and view</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code>   def index
     @posts = Post.all
   end</code></pre>


Becomes
<pre><code>     redirect_to @post
   end
&nbsp;
   def index
     @posts = Post.all
   end
&nbsp;
   def show
     @post = Post.find(params[:id])
   end
</code></pre>


Create file `app/views/posts/index.html.erb`

Add
<pre><code> &lt;h1&gt;Listing posts&lt;/h1&gt;
&nbsp;
 &lt;table&gt;
   &lt;tr&gt;
     &lt;th&gt;Title&lt;/th&gt;
     &lt;th&gt;Text&lt;/th&gt;
   &lt;/tr&gt;
&nbsp;
   &lt;% @posts.each do |post| %&gt;
     &lt;tr&gt;
       &lt;td&gt;&lt;%= post.title %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= post.text %&gt;&lt;/td&gt;
     &lt;/tr&gt;
   &lt;% end %&gt;
 &lt;/table&gt;</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/d9392043a56b868c214baed5af4a54585ba53eb8)

