---
layout: default
title: Add form to posts#new
---

<h1 id="main">Add form to posts#new</h1>
Update file `app/views/posts/new.html.erb`

Remove
<pre><code> &lt;h1&gt;New Post&lt;/h1&gt;</code></pre>


Add
<pre><code> &lt;h1&gt;New Post&lt;/h1&gt;
&nbsp;
 &lt;%= form_for :post do |f| %&gt;
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
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;</code></pre>


Becomes
<pre><code>\ No newline at end of file
 &lt;h1&gt;New Post&lt;/h1&gt;
&nbsp;
 &lt;%= form_for :post do |f| %&gt;
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
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
 &lt;% end %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/fcc571f0b0a284ae239927f5ca48317ab6d243dc)

