---
layout: default
title: Add Back link to posts#new page
---

<h1 id="main">Add Back link to posts#new page</h1>
Update file `app/views/posts/new.html.erb`

Remove
<pre><code> &lt;% end %&gt;</code></pre>


Add
<pre><code> &lt;% end %&gt;
&nbsp;
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;</code></pre>


Becomes
<pre><code>   &lt;/p&gt;
&nbsp;
   &lt;p&gt;
     &lt;%= f.label :text %&gt;&lt;br&gt;
     &lt;%= f.text_area :text %&gt;
   &lt;/p&gt;
&nbsp;
   &lt;p&gt;
     &lt;%= f.submit %&gt;
   &lt;/p&gt;
\ No newline at end of file
 &lt;% end %&gt;
&nbsp;
 &lt;%= link_to &#39;Back&#39;, posts_path %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/66c7f4b409d72aded3819b44ddee16bc452dde3d)

