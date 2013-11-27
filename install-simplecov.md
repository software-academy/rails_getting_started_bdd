---
layout: default
title: Install SimpleCov
---

<h1 id="main">Install SimpleCov</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;simplecov&#39;, require: false</code></pre>


Becomes
<pre><code>   gem &#39;database_cleaner&#39;
   gem &#39;launchy&#39;
   gem &#39;shoulda-matchers&#39;
   gem &#39;simplecov&#39;, require: false
   gem &#39;valid_attribute&#39;
 end
&nbsp;
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     simplecov (0.7.1)
       multi_json (~&gt; 1.0)
       simplecov-html (~&gt; 0.7.1)
     simplecov-html (0.7.1)</code></pre>


Add
<pre><code>   simplecov</code></pre>


Becomes
<pre><code>       rdoc (~&gt; 3.10)
     shoulda-matchers (2.4.0)
       activesupport (&gt;= 3.0.0)
     simplecov (0.7.1)
       multi_json (~&gt; 1.0)
       simplecov-html (~&gt; 0.7.1)
     simplecov-html (0.7.1)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~&gt; 1.2)
@@ -216,6 +220,7 @@ DEPENDENCIES
   sass-rails (~&gt; 4.0.0)
   sdoc
   shoulda-matchers
   simplecov
   sqlite3
   turbolinks
   uglifier (&gt;= 1.3.0)
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/850d8b926fbe1f206cdefc502f107177d8de0346)

