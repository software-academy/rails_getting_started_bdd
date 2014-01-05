---
layout: default
title: Install SimpleCov
---

<h1 id="main">Install SimpleCov</h1>
Update file `Gemfile`

Add
<pre><code>   gem &#39;simplecov&#39;, require: false</code></pre>


Becomes
<pre><code>   gem &#39;rspec-rails&#39;
   gem &#39;capybara-webkit&#39;
   gem &#39;factory_girl_rails&#39;
   gem &#39;jazz_hands&#39;
 end
&nbsp;
 group :test do
   gem &#39;database_cleaner&#39;
   gem &#39;launchy&#39;
   gem &#39;shoulda-matchers&#39;
   gem &#39;simplecov&#39;, require: false
   gem &#39;valid_attribute&#39;
 end
&nbsp;
 # Use ActiveModel has_secure_password
 # gem &#39;bcrypt-ruby&#39;, &#39;~&gt; 3.0.0&#39;
&nbsp;
 # Use unicorn as the app server
 # gem &#39;unicorn&#39;
&nbsp;
 # Use Capistrano for deployment
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
<pre><code>     sass (3.2.12)
     sass-rails (4.0.1)
       railties (&gt;= 4.0.0, &lt; 5.0)
       sass (&gt;= 3.1.10)
       sprockets-rails (~&gt; 2.0.0)
     sdoc (0.3.20)
       json (&gt;= 1.1.3)
       rdoc (~&gt; 3.10)
     shoulda-matchers (2.4.0)
       activesupport (&gt;= 3.0.0)
     simplecov (0.7.1)
       multi_json (~&gt; 1.0)
       simplecov-html (~&gt; 0.7.1)
     simplecov-html (0.7.1)
     slop (3.4.6)
     sprockets (2.10.0)
       hike (~&gt; 1.2)
       multi_json (~&gt; 1.0)
       rack (~&gt; 1.0)
       tilt (~&gt; 1.1, != 1.3.0)
     sprockets-rails (2.0.1)
       actionpack (&gt;= 3.0)
       activesupport (&gt;= 3.0)
       sprockets (~&gt; 2.8)
@@ -209,14 +213,15 @@ DEPENDENCIES
   factory_girl_rails
   jazz_hands
   jbuilder (~&gt; 1.2)
   jquery-rails
   launchy
   rails (= 4.0.0)
   rspec-rails
   sass-rails (~&gt; 4.0.0)
   sdoc
   shoulda-matchers
   simplecov
   sqlite3
   turbolinks
   uglifier (&gt;= 1.3.0)
   valid_attribute
</code></pre>



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/850d8b926fbe1f206cdefc502f107177d8de0346)

