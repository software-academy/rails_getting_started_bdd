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
&nbsp;
 group :development, :test do
   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
   gem &#39;factory_girl_rails&#39;
   gem &#39;jazz_hands&#39;
 end
&nbsp;
 group :test do
   gem &#39;database_cleaner&#39;
   gem &#39;launchy&#39;
   gem &#39;valid_attribute&#39;
 end
&nbsp;
 # Use ActiveModel has_secure_password
 # gem &#39;bcrypt-ruby&#39;, &#39;~&gt; 3.0.0&#39;
&nbsp;
 # Use unicorn as the app server
 # gem &#39;unicorn&#39;
&nbsp;
</code></pre>


Update file `Gemfile.lock`

Add
<pre><code>     database_cleaner (1.2.0)</code></pre>


Add
<pre><code>   database_cleaner</code></pre>


Becomes
<pre><code>     coderay (1.0.9)
     coffee-rails (4.0.1)
       coffee-script (&gt;= 2.2.0)
       railties (&gt;= 4.0.0, &lt; 5.0)
     coffee-script (2.2.0)
       coffee-script-source
       execjs
     coffee-script-source (1.6.3)
     columnize (0.3.6)
     coolline (0.4.2)
     database_cleaner (1.2.0)
     debug_inspector (0.0.2)
     debugger (1.6.2)
       columnize (&gt;= 0.3.1)
       debugger-linecache (~&gt; 1.2.0)
       debugger-ruby_core_source (~&gt; 1.2.3)
     debugger-linecache (1.2.0)
     debugger-ruby_core_source (1.2.3)
     diff-lcs (1.2.4)
     diffy (3.0.1)
     erubis (2.7.0)
@@ -195,20 +196,21 @@ GEM
     xpath (2.0.0)
       nokogiri (~&gt; 1.3)
     yard (0.8.7.2)
&nbsp;
 PLATFORMS
   ruby
&nbsp;
 DEPENDENCIES
   capybara-webkit
   coffee-rails (~&gt; 4.0.0)
   database_cleaner
   factory_girl_rails
   jazz_hands
   jbuilder (~&gt; 1.2)
   jquery-rails
   launchy
   rails (= 4.0.0)
   rspec-rails
   sass-rails (~&gt; 4.0.0)
   sdoc
   sqlite3
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/stevenhallen/rails_getting_started_bdd/commit/18bbdf41a04a195f42d0c53a49d6d67812df83e4)

