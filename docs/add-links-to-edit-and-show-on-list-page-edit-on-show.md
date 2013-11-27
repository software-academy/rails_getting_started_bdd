---
layout: default
title: Add links to edit and show on list page, edit on show
---

<h1 id="main">Add links to edit and show on list page, edit on show</h1>
Update file `app/views/posts/index.html.erb`

Add
<pre><code>     &lt;th&gt;&lt;/th&gt;
     &lt;th&gt;&lt;/th&gt;</code></pre>


Add
<pre><code>       &lt;td&gt;&lt;%= link_to &#39;Show&#39;, post %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= link_to &#39;Edit&#39;, edit_post_path(post) %&gt;&lt;/td&gt;</code></pre>


Becomes
<pre><code>   &lt;tr&gt;
     &lt;th&gt;Title&lt;/th&gt;
     &lt;th&gt;Text&lt;/th&gt;
     &lt;th&gt;&lt;/th&gt;
     &lt;th&gt;&lt;/th&gt;
   &lt;/tr&gt;
 
   &lt;% @posts.each do |post| %&gt;
     &lt;tr&gt;
       &lt;td&gt;&lt;%= post.title %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= post.text %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= link_to &#39;Show&#39;, post %&gt;&lt;/td&gt;
       &lt;td&gt;&lt;%= link_to &#39;Edit&#39;, edit_post_path(post) %&gt;&lt;/td&gt;
     &lt;/tr&gt;
   &lt;% end %&gt;
 &lt;/table&gt;
\ No newline at end of file
</code></pre>


Update file `app/views/posts/show.html.erb`

Remove
<pre><code> &lt;%= link_to &#39;Back&#39;, posts_path %&gt;</code></pre>


Add
<pre><code> &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
 | &lt;%= link_to &#39;Edit&#39;, edit_post_path(@post) %&gt;</code></pre>


Becomes
<pre><code>   &lt;%= @post.text %&gt;
 &lt;/p&gt;
 
\ No newline at end of file
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
 | &lt;%= link_to &#39;Edit&#39;, edit_post_path(@post) %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/5402e16847ef890b62c6add3ea096f0433612970)

