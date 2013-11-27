---
layout: default
title: Install database_cleaner
---

<h1 id="main">Install database_cleaner</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;database_cleaner&#39;</code></pre>


Becomes
<pre><code> end
 
 group :test do
   gem &#39;database_cleaner&#39;
   gem &#39;launchy&#39;
   gem &#39;valid_attribute&#39;
 end
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     database_cleaner (1.2.0)</code></pre>


Add
<pre><code>   database_cleaner</code></pre>


Becomes
<pre><code>     coffee-script-source (1.6.3)
     columnize (0.3.6)
     coolline (0.4.2)
     database_cleaner (1.2.0)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (&gt;= 0.3.1)
@@ -202,6 +203,7 @@ PLATFORMS
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~&gt; 4.0.0)
   database_cleaner
   factory_girl_rails
   jazz_hands
   jbuilder (~&gt; 1.2)
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/18bbdf41a04a195f42d0c53a49d6d67812df83e4)

