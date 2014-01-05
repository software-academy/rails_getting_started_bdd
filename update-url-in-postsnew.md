---
layout: default
title: Update url in posts#new
---

<h1 id="main">Update url in posts#new</h1>
Update file `app/views/posts/new.html.erb`

Change
<pre><code> &lt;%= form_for :post do |f| %&gt;</code></pre>


To
<pre><code> &lt;%= form_for :post, url: posts_path do |f| %&gt;</code></pre>


Becomes
<pre><code> &lt;h1&gt;New Post&lt;/h1&gt;
&nbsp;
 &lt;%= form_for :post, url: posts_path do |f| %&gt;
   &lt;p&gt;
     &lt;%= f.label :title %&gt;&lt;br&gt;
     &lt;%= f.text_field :title %&gt;
   &lt;/p&gt;
&nbsp;
   &lt;p&gt;
     &lt;%= f.label :text %&gt;&lt;br&gt;
     &lt;%= f.text_area :text %&gt;
   &lt;/p&gt;
&nbsp;
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/600b201ae415f8e568f299733c00ab867db56aaf)

