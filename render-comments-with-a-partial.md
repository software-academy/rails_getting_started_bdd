---
layout: default
title: Render comments with a partial
---

<h1 id="main">Render comments with a partial</h1>
Create file `app/views/comments/_comment.html.erb`

Add
<pre><code> &lt;p&gt;
   &lt;strong&gt;Commenter:&lt;/strong&gt;
   &lt;%= comment.commenter %&gt;
 &lt;/p&gt;
&nbsp;
 &lt;p&gt;
   &lt;strong&gt;Comment:&lt;/strong&gt;
   &lt;%= comment.body %&gt;
 &lt;/p&gt;</code></pre>


Update file `app/views/posts/show.html.erb`

Remove
<pre><code> &lt;% @post.comments.each do |comment| %&gt;
   &lt;p&gt;
     &lt;strong&gt;Commenter:&lt;/strong&gt;
     &lt;%= comment.commenter %&gt;
   &lt;/p&gt;
&nbsp;
   &lt;p&gt;
     &lt;strong&gt;Comment:&lt;/strong&gt;
     &lt;%= comment.body %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Add
<pre><code> &lt;%= render @post.comments %&gt;</code></pre>


Becomes
<pre><code> &lt;/p&gt;
&nbsp;
 &lt;h2&gt;Comments&lt;/h2&gt;
 &lt;%= render @post.comments %&gt;
&nbsp;
 &lt;h2&gt;Add a comment:&lt;/h2&gt;
 &lt;%= form_for([@post, @post.comments.build]) do |f| %&gt;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/2f6a234efd9cbc104b9bba1ed5d4a90ac881f8ef)

