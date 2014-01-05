---
layout: default
title: Comments can be deleted from the show view
---

<h1 id="main">Comments can be deleted from the show view</h1>
Update file `app/controllers/comments_controller.rb`

Add
<pre><code>&nbsp;
   def destroy
     @post = Post.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
     @comment.destroy
     redirect_to post_path(@post)
   end</code></pre>


Becomes
<pre><code> class CommentsController &lt; ApplicationController
   def create
     @post = Post.find(params[:post_id])
     @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
     redirect_to post_path(@post)
   end
&nbsp;
   def destroy
     @post = Post.find(params[:post_id])
     @comment = @post.comments.find(params[:id])
     @comment.destroy
     redirect_to post_path(@post)
   end
 end
</code></pre>


Update file `app/views/comments/_comment.html.erb`

Add
<pre><code> &lt;/p&gt;
&nbsp;
 &lt;p&gt;
   &lt;%= link_to &#39;Destroy Comment&#39;, [comment.post, comment],
                method: :delete,
                data: { confirm: &#39;Are you sure?&#39; } %&gt;</code></pre>


Becomes
<pre><code> &lt;p&gt;
   &lt;strong&gt;Commenter:&lt;/strong&gt;
   &lt;%= comment.commenter %&gt;
 &lt;/p&gt;
&nbsp;
 &lt;p&gt;
   &lt;strong&gt;Comment:&lt;/strong&gt;
   &lt;%= comment.body %&gt;
 &lt;/p&gt;
&nbsp;
 &lt;p&gt;
   &lt;%= link_to &#39;Destroy Comment&#39;, [comment.post, comment],
                method: :delete,
                data: { confirm: &#39;Are you sure?&#39; } %&gt;
 &lt;/p&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/9e5dc158e719943ad07f3185dcdb5d3efce3a054)

