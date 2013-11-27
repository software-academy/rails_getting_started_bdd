---
layout: default
title: Add link to destroy post
---

<h1 id="main">Add link to destroy post</h1>
Update file `app/controllers/posts_controller.rb`

Add
<pre><code>   def destroy
     @post = Post.find(params[:id])
     @post.destroy
&nbsp;
     redirect_to posts_path
   end</code></pre>


Becomes
<pre><code>     end
   end
&nbsp;
   def destroy
     @post = Post.find(params[:id])
     @post.destroy
&nbsp;
     redirect_to posts_path
   end
&nbsp;
   def edit
     @post = Post.find(params[:id])
   end
</code></pre>


Update file `app/views/posts/index.html.erb`

Add
<pre><code>       &lt;td&gt;&lt;%= link_to &#39;Destroy&#39;, post_path(post),
                     method: :delete, data: { confirm: &#39;Are you sure?&#39; } %&gt;&lt;/td&gt;</code></pre>


Becomes
<pre><code>       &lt;td&gt;&lt;%= post.text %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= link_to &#39;Show&#39;, post %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= link_to &#39;Edit&#39;, edit_post_path(post) %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= link_to &#39;Destroy&#39;, post_path(post),
                     method: :delete, data: { confirm: &#39;Are you sure?&#39; } %&gt;&lt;/td&gt;
     &lt;/tr&gt;
   &lt;% end %&gt;
 &lt;/table&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/38cf9eddedcb07cbbf936061bbd2847716f70e38)
