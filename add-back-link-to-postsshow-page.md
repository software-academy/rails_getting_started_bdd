---
layout: default
title: Add Back link to posts#show page
---

<h1 id="main">Add Back link to posts#show page</h1>
Update file `app/views/posts/show.html.erb`

Remove
<pre><code> &lt;/p&gt;</code></pre>


Add
<pre><code> &lt;/p&gt;
&nbsp;
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;</code></pre>


Becomes
<pre><code> &lt;p&gt;
   &lt;strong&gt;Text:&lt;/strong&gt;
   &lt;%= @post.text %&gt;
\ No newline at end of file
 &lt;/p&gt;
&nbsp;
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/6a0c4a76a91df75d37bd0aecd75d94a8a23d134f)

