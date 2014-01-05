---
layout: default
title: Add link to blog posts on home page
---

<h1 id="main">Add link to blog posts on home page</h1>
Update file `app/views/welcome/index.html.erb`

Remove
<pre><code> &lt;h1&gt;Hello, Rails!&lt;/h1&gt;</code></pre>


Add
<pre><code> &lt;h1&gt;Hello, Rails!&lt;/h1&gt;
 &lt;%= link_to &quot;My Blog&quot;, controller: &quot;posts&quot; %&gt;</code></pre>


Becomes
<pre><code>\ No newline at end of file
 &lt;h1&gt;Hello, Rails!&lt;/h1&gt;
 &lt;%= link_to &quot;My Blog&quot;, controller: &quot;posts&quot; %&gt;
\ No newline at end of file
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/77d14e1ae106e1aadfd05ceea311cab30785d059)

