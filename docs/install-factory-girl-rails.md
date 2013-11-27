---
layout: default
title: Install factory_girl_rails
---

<h1 id="main">Install factory_girl_rails</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;factory_girl_rails&#39;</code></pre>


Becomes
<pre><code> group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
   gem &#39;factory_girl_rails&#39;
 end
&nbsp;
 # Use ActiveModel has_secure_password
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     factory_girl (4.2.0)
       activesupport (&gt;= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~&gt; 4.2.0)
       railties (&gt;= 3.0.0)</code></pre>


Add
<pre><code>   factory_girl_rails</code></pre>


Becomes
<pre><code>     diff-lcs (1.2.4)
     erubis (2.7.0)
     execjs (2.0.2)
     factory_girl (4.2.0)
       activesupport (&gt;= 3.0.0)
     factory_girl_rails (4.2.1)
       factory_girl (~&gt; 4.2.0)
       railties (&gt;= 3.0.0)
     hike (1.2.3)
     i18n (0.6.5)
     jbuilder (1.5.2)
@@ -136,6 +141,7 @@ PLATFORMS
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~&gt; 4.0.0)
   factory_girl_rails
   jbuilder (~&gt; 1.2)
   jquery-rails
   rails (= 4.0.0)
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/6def155676bc9b91879cfb8003864c8c6d6e7585)

