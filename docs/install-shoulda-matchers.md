---
layout: default
title: Install shoulda-matchers
---

<h1 id="main">Install shoulda-matchers</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;shoulda-matchers&#39;</code></pre>


Becomes
<pre><code> group :test do
   gem &#39;database_cleaner&#39;
   gem &#39;launchy&#39;
   gem &#39;shoulda-matchers&#39;
   gem &#39;valid_attribute&#39;
 end
 
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     shoulda-matchers (2.4.0)
       activesupport (&gt;= 3.0.0)</code></pre>


Add
<pre><code>   shoulda-matchers</code></pre>


Becomes
<pre><code>     sdoc (0.3.20)
       json (&gt;= 1.1.3)
       rdoc (~&gt; 3.10)
     shoulda-matchers (2.4.0)
       activesupport (&gt;= 3.0.0)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~&gt; 1.2)
@@ -213,6 +215,7 @@ DEPENDENCIES
   rspec-rails
   sass-rails (~&gt; 4.0.0)
   sdoc
   shoulda-matchers
   sqlite3
   turbolinks
   uglifier (&gt;= 1.3.0)
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/111e856e42ef3665094a83d518e6afca6256b52f)

