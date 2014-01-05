---
layout: default
title: Link to new post on the posts page
---

<h1 id="main">Link to new post on the posts page</h1>
Update file `app/views/posts/index.html.erb`

Add
<pre><code> &lt;%= link_to &#39;New post&#39;, new_post_path %&gt;</code></pre>


Becomes
<pre><code> &lt;h1&gt;Listing posts&lt;/h1&gt;
 &lt;%= link_to &#39;New post&#39;, new_post_path %&gt;
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
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/cee39273c0a3b7654f76ea51b7167415f64a1294)

