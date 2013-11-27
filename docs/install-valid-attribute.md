---
layout: default
title: Install valid_attribute
---

<h1 id="main">Install valid_attribute</h1>
Update file `Gemfile`

Add
<pre><code> group :test do
   gem &#39;valid_attribute&#39;
 end</code></pre>


Becomes
<pre><code>   gem &#39;factory_girl_rails&#39;
 end
 
 group :test do
   gem &#39;valid_attribute&#39;
 end
 
 # Use ActiveModel has_secure_password
 # gem &#39;bcrypt-ruby&#39;, &#39;~&gt; 3.0.0&#39;
 
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     valid_attribute (1.3.1)</code></pre>


Add
<pre><code>   valid_attribute</code></pre>


Becomes
<pre><code>     uglifier (2.3.0)
       execjs (&gt;= 0.3.0)
       json (&gt;= 1.8.0)
     valid_attribute (1.3.1)
     xpath (2.0.0)
       nokogiri (~&gt; 1.3)
 
@@ -151,3 +152,4 @@ DEPENDENCIES
   sqlite3
   turbolinks
   uglifier (&gt;= 1.3.0)
   valid_attribute
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/141dcc0672943f47558b9b14749d14646fadc83b)

